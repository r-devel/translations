The following update was made during the [R Project Sprint 2023](https://contributor.r-project.org/r-project-sprint-2023/), Warwick and Online (hybrid) during 30 Aug - 1 Sept 2023:

## Getting started 

Welcome to the traslation adventure in R!

In a world that thrives on interconnectedness and global communication, translation plays a pivotal role in bridging linguistic divides. Translation, the art of rendering one language into another, shatters those confines, unlocking a world of possibilities for understanding and collaboration.

So if you want start, you can contribute following those steps:

1. Sign up to the [R Contributors Slack](https://contributor.r-project.org/slack) and introduce yourself in the #core-translations channel;
2. Read the [Guidelines](https://github.com/r-devel/translations/wiki/Conventions-for-translations#guidelines) section of this document, because the translation has some conventions that should be followed;
3. Create an account on [Weblate](https://translate.rx.studio/) (currently maintained by [@daroczig](https://twitter.com/daroczig));
4. List the [components](https://translate.rx.studio/languages/) of your language;
5. Choose a component that's not 100% translated (like, for example, the [utils package](https://translate.rx.studio/languages/es/r-project/));
6. Click Unfinished strings to list all messages that haven't been translated and
7. Start!

This is a short [demo](https://www.youtube.com/watch?v=VFwTn32MrBw) that you can check for use the Weblate interface.

You can access to full documentation of Weblate through this [link](https://docs.weblate.org/en/latest/).

Some translation states are important:
* **Untranslated**: Translation is empty, it might or not be stored in the file, depending on the file format.
* **Needs editing**: Translation needs editing, this is usually the result of a source string change, fuzzy matching or translator action.
* **Waiting for review**: Translation is made, but not reviewed.
* **Approved**: Translation has been approved in the review. It can no longer be changed by translators, but only by reviewers.

There are several *key points* to consider when starting translation:

1. Every registered user on the Weblate can act as a translator.
2. The translation that you participate, should be reviewing.
3. A [peer reviewer](https://docs.weblate.org/en/latest/workflows.html#peer-review) can add suggestion(s) to the Weblate, however, the suggestion(s) would need approval from the dedicated reviewer(s) before it is accepted as a translation.
4. Adding the missing worlds to the Glosary.

Finally, those are the guidelines for the existing languages. If your language doesn't exist yet, please feel free to submit a pull request and create it.

|Language | 
| -- |
|[Arabic](https://github.com/r-devel/translations/wiki/Conventions-for-Arabic-translations) |
|[Bengali](https://github.com/r-devel/translations/wiki/Conventions-for-Bengali-translations)|
|[Hindi](https://github.com/r-devel/translations/wiki/Hindi-specific-translations)|
|[Nepali](https://github.com/r-devel/translations/wiki/Nepali-specific-translations)|
|[Spanish](https://github.com/r-devel/translations/wiki/Conventions-for-Spanish-translation)|

## Translations workflow
- Every registered user on the Weblate can act as a translator.
- The team leader(s) of a particular language is(are) the initial [dedicated reviewer(s)](https://docs.weblate.org/en/latest/workflows.html#dedicated-reviewers).
- For adding new reviewers or peer reviewers to Weblate, please reach out to the respective team leaders via the `#core-translation` channel on the [R Contributors Slack](https://contributor.r-project.org/slack) workspace.
- A [peer reviewer](https://docs.weblate.org/en/latest/workflows.html#peer-review) can add suggestion(s) to the Weblate, however, the suggestion(s) would need approval from the dedicated reviewer(s) before it is accepted as a translation.
- Translation
- Updating glossary
- Review

## Roles 
We use the [dedicated reviewers](https://docs.weblate.org/en/latest/workflows.html#dedicated-reviewers) workflow on weblate. We currently manage 3 roles in the platform
### Translators
Every registered user on weblate can act as translator
### Admins / team leaders
Admins / team leaders keep the list of admins and reviewers by language up to date
### Reviewers
Reviewers approve the work of translators and ensure the overall cohesion of the translation work in one language

## Guidelines
### General guidelines
- Unless having very strong reasons not to, please follow your language specific glossary and guidelines
- If you encounter ambiguous or difficult strings to translate that aren't captured in the language specific glossary and guidelines, refer to the core-translation slack channel to discuss it with other translators
- Some languages, like spanish, have specific channels to discuss translation. Refer to your specific channel to discuss issues related to your language: if you need a slack channel set up for a language, send a direct slack message to @mcnanton
- put policies like not work on new translations, don’t retranslate of something new, start with reviews 
- put as a suggestion and not submit, needs editing. 
- accept the default suggested translations, if it makes sense
- language specific glossaries. Weblate has features to flag untranslatable and forbidden terms (see https://docs.weblate.org/en/latest/user/glossary.html)
- check what they do for Python
- argument (write in translated language) or vice versa (original term in brackets)

### What (words) not to translate - okay for nouns, not for verbs?, (separate page of technical tips).
- keyboard keys
- function names
- %s, %d
- put on wiki

### Updating glossaries

## Languages and contributions

|Language | Team Leaders (Contributor/Translator/Dedicated Reviewer) |
| -- | -- |
|[Arabic](https://github.com/r-devel/translations/wiki/Conventions-for-Arabic-translations)| [Iman Al-Hasani](https://github.com/imanalhasani), [Abdulrahman Alswaji](https://github.com/alswajiab) |
|[Bengali](https://github.com/r-devel/translations/wiki/Conventions-for-Bengali-translations)| [Debartha Paul](https://github.com/itsdebartha) |
|[Brazilian-Portugese](https://github.com/r-devel/translations/wiki/Brazilian%E2%80%90Portugese-specific-translations)| [Caio Lente](https://github.com/clente), [Renata Hirota](https://github.com/rmhirota)|
|[Hindi](https://github.com/r-devel/translations/wiki/Hindi-specific-translations)| [Saranjeet Kaur Bhogal](https://github.com/SaranjeetKaur), [Ayush Patel](https://github.com/AyushBipinPatel)  |
|[Japanese](https://github.com/r-devel/translations/wiki/Japanese-specific-translations)| [Reiko Okamoto](https://github.com/reikookamoto) |
|[Nepali](https://github.com/r-devel/translations/wiki/Nepali-specific-translations)| [Binod Jung Bogati](https://github.com/bjungbogati) |
|[Spanish](https://github.com/r-devel/translations/wiki/Conventions-for-Spanish-translation)| [Geraldine Gómez](https://github.com/GeraldineGomez), [María Nanton](https://github.com/mcnanton), [Macarena Quiroga](https://github.com/msquiroga89)| 

## Sustainability of the translations community 
- The `#core-translation` channel on the [R Contributors Slack](https://contributor.r-project.org/slack) workspace is main space of communication for the translations community. Join this Slack for communicating with the community and also for sharing any feedback.
- We encourage people interested in translations to organise and conduct local/regional level events to promote and raise awareness about translations.
- Highlight milestones (overall and by language)
- coordinate on github
- Design acknowledging categories for contributing members (a nice example: https://the-turing-way.netlify.app/afterword/contributors-record#contributors-record-contributors)
- a getting started page on github

## About Weblate

- [Weblate documentation](https://docs.weblate.org/en/latest/)
- [Glossary on Weblate](https://translate.rx.studio/projects/r-project/glossary/)   
- [Chapter on Weblate in the R Dev Guide](https://github.com/r-devel/rdevguide/pull/142)

## Space for feedback
- github issues and/or discussions
- knowing who to write
- for the translation workflow write to slack

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
- Use the R Foundation Code of Conduct.

## Future work 
The following discussion is taken from the meeting notes of the [EMEA-APAC region R Contributor Office Hours conducted on 13 April 2023](https://github.com/r-devel/rcontribution/blob/main/office_hours/2023-04-13_EMEA-APAC.md):

_Saranjeet wanted to know how to handle translating strings such as "Keyboard: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End". She has currently translated to Hindi as "कीबोर्ड: पेज अप, पेज डाउन, कंट्रोल+एरोज , कंट्रोल+होम , कंट्रोल+एन्ड ,", which is in Hindi script but is spoken the same as the English words, since these are imported/foreign words._

_We looked at how other languages translate this string using the "Other languages" button on Weblate:_
https://translate.rx.studio/translate/r-project/base-r-gui/hi/?checksum=05ce1e10588b237c&sort_by=-priority,position#translations
* _French translates all the keys apart from those that are in English on a French keyboard: "Clavier : PageHaut, PageBas, Ctrl+Flèches, Ctrl+Début, Ctrl+Fin," According to Hugo: "keys that are translated in a French keyboard: del, end, screenshot, insert. I believe that other keys usually don't include text but use symbols (arrows, shift, pgup, pgdown). Ctrl and Alt are not translated". It looks like Chinese takes a similar approach._
* _Italian does not translate the keys: "Tastiera: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End,". Most languages take this approach._
* _Best to discuss among translation team for specific language if possible, to decide best approach. General guidance: don't translate unless these terms are commonly translated on the keyboard, commonly used in other technical documentation, or are simply a translation of the English word into the language script. (The latter advice because if people are choosing to see R messages in a non-English language, they may prefer to see everything in that script where possible)._

_Suggested each team maintains a page on this wiki https://github.com/r-devel/translations where they note agreed conventions for future contributors/translators._