This page describes how the [Weblate](https://weblate.org/en/) service running at [translate.rx.studio](https://translate.rx.studio) was configured, and how it is maintained.

## Infrastructure

The service runs on a single `t3a.large` node in the `us-east-1` region of AWS, with termination protection enabled. AWS Backup is configured to take weekly snapshots of the node with a retention window of 1 year.

## Docker images and configuration

Weblate is running using Docker and Docker compose:

```yaml
version: '3'
services:
  weblate:
    image: weblate/weblate
    volumes:
    - weblate-data:/app/data
    env_file:
    - ./environment
    restart: always
    depends_on:
    - database
    - cache
    environment:
      WEBLATE_ENABLE_HTTPS: 1
      WEBLATE_IP_PROXY_HEADER: HTTP_X_FORWARDED_FOR
  database:
    image: postgres:14-alpine
    env_file:
    - ./environment
    volumes:
    - postgres-data:/var/lib/postgresql/data
    restart: always
  cache:
    image: redis:6-alpine
    restart: always
    command: [redis-server, --save, '60', '1']
    volumes:
    - redis-data:/data
  https-portal:
    image: steveltn/https-portal:1
    ports:
    - 80:80
    - 443:443
    restart: always
    environment:
      STAGE: production
      PROXY_READ_TIMEOUT: 3600
      CLIENT_MAX_BODY_SIZE: 100M
    volumes:
    - ssl-certs:/var/lib/https-portal
volumes:
  weblate-data: {}
  postgres-data: {}
  redis-data: {}
  ssl-certs: {}
```

The `environment` file has no modifications, as the env var overrides are defined in the `docker-compose-https.override.yml` file:

```yaml
version: '3'
services:
  weblate:
    environment:
      WEBLATE_EMAIL_HOST: email-smtp.us-east-1.amazonaws.com
      WEBLATE_EMAIL_PORT: 587
      WEBLATE_EMAIL_USE_SSL: 0
      WEBLATE_EMAIL_USE_TLS: 1
      WEBLATE_EMAIL_HOST_USER: *******
      WEBLATE_EMAIL_HOST_PASSWORD: *******
      WEBLATE_SERVER_EMAIL: noreply@translate.rx.studio
      WEBLATE_DEFAULT_FROM_EMAIL: noreply@translate.rx.studio
      WEBLATE_SITE_DOMAIN: translate.rx.studio
      WEBLATE_ADMIN_EMAIL: *******
      WEBLATE_ADMIN_PASSWORD: *******
      # TODO migrate to Google Analytics v4
      WEBLATE_GOOGLE_ANALYTICS_ID: UA-*******-*
  https-portal:
    environment:
      DOMAINS: 'translate.rx.studio -> http://weblate:8080'
```

The current image ids:

```bash
$ sudo docker images
REPOSITORY              TAG         IMAGE ID       CREATED         SIZE
weblate/weblate         latest      02c6327da166   7 months ago    804MB
postgres                14-alpine   07c710d28b91   7 months ago    216MB
redis                   6-alpine    57c580553a4d   8 months ago    25.5MB
steveltn/https-portal   1           26e5bea459df   10 months ago   274MB
```

Commands to start the service:

```sh
docker-compose -f docker-compose-https.yml -f docker-compose-https.override.yml build
docker-compose -f docker-compose-https.yml -f docker-compose-https.override.yml up
```

## Quarterly patch for R Core

To generate a report on the translation updates in a time period:

1. Visit https://translate.rx.studio/projects/r-project/#reports
2. Select time period and generate report in rST format
3. Convert ~markdown to HTML and share in the R Contributors slack group's #core-translation channel

To submit a patch file on the translations found in Weblate but not in the trunk of the main R subversion repo:

1. Update the weblate repo from Subversion at https://translate.rx.studio/projects/r-project/#repository
2. Clone the weblate git repo from https://translate.rx.studio/git/r-project/base-r-gui/
3. Drop empty translation files to reduce noise, e.g. something like:

    ```r
    last_commit <- '...'
    new_files <- list.files(pattern = '*.po$', recursive = TRUE, full.names = TRUE)
    system(paste('git checkout', last_commit))
    old_files <- list.files(pattern = '*.po$', recursive = TRUE, full.names = TRUE)
    system('git checkout main')
    added_files <- setdiff(new_files, old_files)                                                                                                                                                                                                   
    for (f in added_files) {
      if (fread(cmd = paste('pocount --csv', f), sep = ',', fill = TRUE)$`Translated Messages` == 0) {
        log_info('dropping empty {f}')
        unlink(f)
      } else {
        log_info('keeping {f}')
      }
    }
    ```

4. Clone the subversion R repo or its git clone from git@github.com:wch/r-source.git
5. Make sure that both repos are up-to-date!
6. Copy over `src/library` from the weblate repo to R/trunk.
7. Generate a patch file from the diff, going back to the most recent commit with translations merged, e.g.

    ```sh
    git diff --no-prefix 366f45a4599e04e00df59d063c67ccfadf27ae96
    ```

8. Share the patch file on the R Contributors Slack group's #core-translation channel and kindly ping @MichaelLawrence for his assistance on getting the patch file applied on the trunk of R dev to get it merged. We should do this ~once per quarter.