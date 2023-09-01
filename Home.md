# Getting started

Welcome to the translation adventure in R! [🚀](https://emojiterra.com/rocket/)

In a world that thrives on interconnectedness and global communication, translation plays a pivotal role in bridging linguistic divides. Translation, the art of rendering one language into another, shatters those confines, unlocking a world of possibilities for understanding and collaboration.

[Translation dashboards](https://contributor.r-project.org/translations/#home)

So if you want to start, you can contribute by following these steps:

1. Sign up to the [R Contributors Slack](https://contributor.r-project.org/slack) and introduce yourself in the #core-translations channel;
2. Read the [Conventions for translation](https://github.com/r-devel/translations/wiki/Conventions-for-translations) section of this Wiki, for some conventions that should be followed;
3. Create an account on [Weblate](https://translate.rx.studio/) (currently maintained by [@daroczig](https://twitter.com/daroczig));
4. List the [components](https://translate.rx.studio/languages/) of your language;
5. Choose a component that's not 100% translated (like, for example, the [utils package](https://translate.rx.studio/languages/es/r-project/));
6. Click Unfinished strings to list all messages that haven't been translated and
7. Start!

This is a short [demo](https://www.youtube.com/watch?v=VFwTn32MrBw) that you can check for use in the interface of Weblate.

You can get access to complete documentation of Weblate through this [link](https://docs.weblate.org/en/latest/).

Some translation states are important:
* **Untranslated**: Translation is empty, it might or not be stored in the file, depending on the file format.
* **Needs editing**: Translation needs editing, this is usually the result of a source string change, fuzzy matching or translator action.
* **Waiting for review**: Translation is made, but not reviewed.
* **Approved**: Translation has been approved in the review. It can no longer be changed by translators, but only by reviewers.

Exist some key points when you starting translation:

1. Every registered user on the Weblate can act as a translator.
2. The translation that you participate, should be reviewing.
3. A [peer reviewer](https://docs.weblate.org/en/latest/workflows.html#peer-review) can add suggestion(s) to the Weblate, however, the suggestion(s) would need approval from the dedicated reviewer(s) before it is accepted as a translation.
4. Adding the missing worlds in the Glossary.

Finally, those are the guidelines for the existing languages. If your language doesn't exist yet, please feel free to submit a pull request and create it.

|Language | 
| -- |
|[Arabic](https://github.com/r-devel/translations/wiki/Conventions-for-Arabic-translations) |
|[Bengali](https://github.com/r-devel/translations/wiki/Conventions-for-Bengali-translations)|
|[Hindi](https://github.com/r-devel/translations/wiki/Hindi-specific-translations)|
|[Nepali](https://github.com/r-devel/translations/wiki/Nepali-specific-translations)|
|[Spanish](https://github.com/r-devel/translations/wiki/Conventions-for-Spanish-translation)|

## What is being translated?
All output in R (such as messages emitted by stop(), warning(), or message()) is eligible for translation, as are menu labels in the GUI.

## Roles 
We use the [dedicated reviewers](https://docs.weblate.org/en/latest/workflows.html#dedicated-reviewers) workflow on Weblate. We currently manage 3 roles in the platform. Languages without dedicated reviewers have their translations directly approved without review.
### Translators
Every registered user on Weblate can act as a translator. A [peer reviewer](https://docs.weblate.org/en/latest/workflows.html#peer-review) can add suggestion(s) to the Weblate, however, the suggestion(s) would need approval from the dedicated reviewer(s) before it is accepted as a translation.
### Admins / team leaders
Admins / team leaders keep the list of admins and reviewers by language up to date. The team leader(s) of a particular language is(are) the initial [dedicated reviewer(s)](https://docs.weblate.org/en/latest/workflows.html#dedicated-reviewers).
### Reviewers
Reviewers are editors that approve the work of translators and ensure the overall cohesion of the translation work in one language. For adding new reviewers or peer reviewers to Weblate, please reach out to the respective team leaders via the `#core-translation` channel on the [R Contributors Slack](https://contributor.r-project.org/slack) workspace.

## Sustainability of the translations community 
- The `#core-translation` channel on the [R Contributors Slack](https://contributor.r-project.org/slack) workspace is the main space of communication for the translations community. Join this Slack for communicating with the community and also for sharing any feedback.
- We encourage people interested in translations to organise and conduct local/regional level events to promote and raise awareness about translations.
- Highlight milestones (overall and by language)
- Coordinate on GitHub
- Design acknowledging categories for contributing members (a nice example: https://the-turing-way.netlify.app/afterword/contributors-record#contributors-record-contributors)
- a getting started page on GitHub

## About Weblate

- [Weblate documentation](https://docs.weblate.org/en/latest/)
- [Glossary on Weblate](https://translate.rx.studio/projects/r-project/glossary/)   
- [Chapter on Weblate in the R Dev Guide](https://github.com/r-devel/rdevguide/pull/142)

## Space for feedback
- GitHub issues and/or discussions
- Knowing who to write
- For the translation workflow write to slack

## Resources

Some interesting guides, glossaries and handbooks:
- [Turing way translation handbook](https://the-turing-way.netlify.app/community-handbook/translation)
- [R OpenSci's draft of translation guidelines](https://translationguide.ropensci.org/)
- [R OpenSci's glossary](https://github.com/ropensci-review-tools/glossary/blob/master/glossary.csv)
- [R French Dictionary](https://github.com/phgrosjean/rfrench/blob/main/RFrenchDictionary.txt)
- [R Brazilian Portuguese guide (will be translated into English)](https://github.com/clente/pt-br)
- [cpplib translations (in Portuguese)](https://translationproject.org/latest/cpplib/pt_BR.po)
- [International statistical glossaries](https://www.cso.ie/en/methods/quality/statisticalglossary/)
- [Translating R Messages, R >= 3.0.0](https://developer.r-project.org/Translations30.html)
- [R Translation Teams](https://developer.r-project.org/TranslationTeams.html)

## Code of Conduct
- Use the [R Foundation Code of Conduct](https://www.r-project.org/coc-policy.html).

## Future work 
* Integration of dictionaries into weblate
* Adition: when to use the needs editing button
* Add demos from the translator and reviewer perspective

The following discussion is taken from the meeting notes of the [EMEA-APAC region R Contributor Office Hours conducted on 13 April 2023](https://github.com/r-devel/rcontribution/blob/main/office_hours/2023-04-13_EMEA-APAC.md)

