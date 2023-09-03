# Getting started

Welcome to the translation adventure in R! [🚀](https://emojiterra.com/rocket/)

In a world that thrives on interconnectedness and global communication, translation plays a pivotal role in bridging linguistic divides. Translation, the art of rendering one language into another, shatters those confines, unlocking a world of possibilities for understanding and collaboration.

[Translation dashboards](https://contributor.r-project.org/translations/#home)

So if you want to start, you can contribute by following these steps:

1. Sign up to the [R Contributors Slack](https://contributor.r-project.org/slack) and introduce yourself in the #core-translations channel;
2. Create an account on [Weblate](https://translate.rx.studio/) (currently maintained by [@daroczig](https://twitter.com/daroczig)) and read the Translations chapter on the [R Development guide](https://contributor.r-project.org/rdevguide/);
3. Read the [Conventions for translation](https://github.com/r-devel/translations/wiki/Conventions-for-translations) section of this Wiki, for some conventions that should be followed;
4. Read the guidelines for the specific language you want to contribute to. If a guideline for your language doesn't exist yet, please feel free to submit a pull request and create it.

|Language | 
| -- |
|[Arabic](https://github.com/r-devel/translations/wiki/Arabic-specific-translations) |
|[Bengali](https://github.com/r-devel/translations/wiki/Bengali-specific-translations)|
|[Hindi](https://github.com/r-devel/translations/wiki/Hindi-specific-translations)|
|[Nepali](https://github.com/r-devel/translations/wiki/Nepali-specific-translations)|
|[Portuguese (Brazilian)](https://github.com/r-devel/translations/wiki/Brazilian%E2%80%90Portugese-specific-translations)|
|[Spanish](https://github.com/r-devel/translations/wiki/Spanish-specific-translation)|

5. You can start translating!

You can check the [guide](https://contributor.r-project.org/rdevguide/message-translations.html#how-to-contribute-new-translations) on how Weblate works and check this short [demo](https://www.youtube.com/watch?v=VFwTn32MrBw) on how to use the Weblate interface. You can also get access to complete documentation of Weblate through this [link](https://docs.weblate.org/en/latest/).

### What is being translated?
All outputs in base R and recommended packages (such as messages emitted by `stop()`, `warning()`, or `message()`) are eligible for translation, as are menu labels in the GUI.

## Roles 
We use the [dedicated reviewers](https://docs.weblate.org/en/latest/workflows.html#dedicated-reviewers) workflow on Weblate. We currently manage 3 roles in the platform. Languages without dedicated reviewers have their translations directly approved without review.

### Translators
Every registered user on Weblate can act as a translator. All translations are reviewed unless there is no reviewer assigned for that language. If you are not sure about a translation you can make a suggestion instead. You can also use the Glossary to check which terms you shouldn't translate and discuss with the community to add new ones if you don't find the word you are looking for. 

### Admins/team leaders
Admins/team leaders keep the list of admins and reviewers by language up to date. The team leader(s) of a particular language is(are) the initial [dedicated reviewer(s)](https://docs.weblate.org/en/latest/workflows.html#dedicated-reviewers).

### Reviewers
Reviewers have an editor role who approves the work of translators and ensures the overall cohesion of the translation work in one language. For adding new reviewers or peer reviewers to Weblate, please reach out to the respective team leaders via the `#core-translation` channel on the [R Contributors Slack](https://contributor.r-project.org/slack) workspace.

Possible state of a string:
* **Untranslated**: Translation is empty, it might or not be stored in the file, depending on the file format.
* **Needs editing**: Translation needs editing, this is usually the result of a source string change, fuzzy matching or translator action. **If you are unsure about how to translate something, make a suggestion, do not click the "Needs editing" button**.
* **Waiting for review**: Translation is made, but not reviewed.
* **Approved**: Translation has been approved in the review. It can no longer be changed by translators, but only by reviewers.

## Sustainability of the translations community 
- The `#core-translation` channel on the [R Contributors Slack](https://contributor.r-project.org/slack) workspace is the main space of communication for the translations community. Join this Slack to communicate with the community and share feedback.
- We encourage people interested in translations to organise and conduct local/regional level events to promote and raise awareness about translations.
- Highlight milestones (overall and by language)!

## About Weblate

- [Weblate documentation](https://docs.weblate.org/en/latest/)
- [Glossary on Weblate](https://translate.rx.studio/projects/r-project/glossary/)   
- [Chapter on Weblate in the R Dev Guide](https://github.com/r-devel/rdevguide/pull/142)

## Space for feedback

You can open an issue in this repository if you find something that is not working as expected in Weblate. If you want to discuss about translations and convictions you can use the Slack channels dedicated to that.

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
* Explore possible integration of dictionaries into Weblate?
* Add demos from the translator and reviewer's perspective
