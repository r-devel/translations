### Why Weblate?

Please see the problem statement and proposed solution in the [R Project Sprint 2023's Weblate project](https://contributor.r-project.org/r-project-sprint-2023/projects/weblate-improvements/#problem-statement).

### What is a "component"?

Each R package has been implemented as at least one component in Weblate, referring to the strings to be translated in a PO file.

When a package includes multiple PO files (e.g. one for the strings extracted from the C sources, another one for the strings extracted from the R sources, and another one for the GUI strings), then there are multiple components for a package.

### How to add a new language for a component?

After logging in and selecting a component, you should see a "Start new translation" button at the bottom of the page, see e.g. at https://translate.rx.studio/projects/r-project/base-c/

### How to add a new component?

Only Weblate admins can do that. For now, please reach out to @daroczig or @MichaelChirico.

1. Go the the [R Project project dashboard](https://translate.rx.studio/projects/r-project/)
2. Click on the "Add new translation component" button at the bottom of the page
3. Provide a name for the component following the naming schema of the other components (package name optionally followed by R or C files between parens, e.g. `methods (R files)`). It is required to split a package into (at least) two components when there are multiple PO files around, e.g. for R and C files, sometime even a 3rd one for the GUI
4. Source code repo should point to `weblate://r-project/base-r-gui` (this is set to auto-poll the SVN repo)
5. File format is usually `gettext PO file` (for strings extracted from R core and recommended packages), or e.g. iOS strings (for Mac GUI)
6. Provide file mask, e.g. `src/library/base/po/*.po` or `src/library/compiler/po/R-*.po`
7. Set a Language filter when needed to guide Weblate which files to pick up (e.g. to exclude the PO files starting with `R` (part of the "R files" component) for the "C files" component, something like `^(?!en$)[a-z][^.]+$`

### How to add a new package?

See above for the definition of a ["component"](#what-is-a-component), and based on that, see the section on ["How to add a new component?"](#how-to-add-a-new-component).

### What packages are translated in Weblate?

Currently, only base R packages. There are [plans to support recommended packages](https://github.com/r-devel/translations/issues/21) as well. Other R packages can also use this installation of Weblate, as per below:

### How to add a package I maintain to Weblate?

If you maintain an R package using `gettext` (or similar) in a public git or SVN repo, and you are planning to use this installation of Weblate to crowdsource the translation of your already extracted strings, please reach out to the [Weblate admins](https://github.com/r-devel/translations/wiki/Weblate-server#administrators) to discuss the details, but in short, the following steps are expected:

1. The Weblate admins create a [new component](#how-to-add-a-new-component) using your git/SVN repo
2. Optionally set up push-back hooks to the `master` or other branch, so that new translations are available in the original repo as well

### How to test the changes I made in Weblate?

Speaking about translations done in a base R package, you will need to [build R](https://contributor.r-project.org/rdevguide/GetStart.html#building-r). Instead of the official SVN repo, you could use Weblate's git repo at https://translate.rx.studio/git/r-project/base-r-gui/, which includes all new translations up to the past few minutes (translations are committed to the git repo every few minutes). In case you don't want to clone the Weblate git repo, you can download the PO files from Weblate by visiting a component and downloading either all PO files as a ZIP file or selecting a language you can download an individual PO file.

### How to manage translation teams in Weblate?

Each language team has leaders and reviewers. Only language team leaders and the Weblate admins can remove existing users from the teams, and can add new team members. Team leaders can find their language team listed on their [profile](https://translate.rx.studio/accounts/profile/#teams), where they can edit the list of users in the group.

New languages will not have teams; by default any translator can add new messages without a review process. The review process is recommended to encourage consistency across the body of translations. If you want to start a team for a new language, contact the [Weblate admins](https://github.com/r-devel/translations/wiki/Weblate-server#administrators).

### How to get notifications about language updates?

Go to the [Notification settings on our profile](https://translate.rx.studio/accounts/profile/#notifications), select which projects (e.g. base R and/or recommended R packages) you want to monitor, and select the types of "Translation notifications" you are interested in (e.g. "Pending suggestions" for reviewers).