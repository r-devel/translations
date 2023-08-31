The following update was made during the [R Project Sprint 2023](https://contributor.r-project.org/r-project-sprint-2023/), Warwick and Online (hybrid) during 30 Aug - 1 Sept 2023:

## Translations workflow
- Every registered user on the Weblate can act as a translator.
- The team leader(s) of a particular language is(are) the initial [dedicated reviewer(s)](https://docs.weblate.org/en/latest/workflows.html#dedicated-reviewers).
- For adding new reviewers or peer reviewers to Weblate, please reach out to the respective team leaders via the `#core-translation` channel on the [R Contributors Slack](https://contributor.r-project.org/slack) workspace.
- A [peer reviewer](https://docs.weblate.org/en/latest/workflows.html#peer-review) can add suggestion(s) to the Weblate, however, the suggestion(s) would need approval from the dedicated reviewer(s) before it is accepted as a translation.
- Translation
- Updating glossary
- Review
- Updating language-specific guidelines
    - Structure
    - Review

## Roles 
- Translators, Reviewers, Editors (TTW: Turing way translation handbook https://the-turing-way.netlify.app/community-handbook/translation)
- a role column on the github table. Roles: Translations Manager, Maintainers, 
- ropensci glossary - chapter 4 

## Guidelines
- put policies like not work on new translations, don’t retranslate of something new, start with reviews 
- weblate how to distinguish between a translator and reviewer 
- put as a suggestion and not submit, needs editing. Idea of enabling peer review  or dedicated reviewers workflow:
(https://r-contributors.slack.com/archives/C0210D7EN1X/p1681721670854879?thread_ts=1681456244.863579&cid=C0210D7EN1X)
- accept the default suggested translations, if it makes sense

## Review Specifications or guidelines 
- glossary of words
- language specific glossaries. Weblate has features to flag untranslatable and forbidden terms (see https://docs.weblate.org/en/latest/user/glossary.html)
- check what they do for Python
- put on wiki 
- have glossaries specific to languages
- argument (write in translated language) or vice versa (original term in brackets)
- create language specific slack channels
- put in the language specific conventions wiki about the slack channels (if others want to create one or join an existing one)

## What (words) not to translate - okay for nouns, not for verbs?, (separate page of technical tips).
- keyboard keys
- function names
- %s, %d
- put on wiki

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
- 

The following discussion is taken from the meeting notes of the [EMEA-APAC region R Contributor Office Hours conducted on 13 April 2023](https://github.com/r-devel/rcontribution/blob/main/office_hours/2023-04-13_EMEA-APAC.md):

_Saranjeet wanted to know how to handle translating strings such as "Keyboard: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End". She has currently translated to Hindi as "कीबोर्ड: पेज अप, पेज डाउन, कंट्रोल+एरोज , कंट्रोल+होम , कंट्रोल+एन्ड ,", which is in Hindi script but is spoken the same as the English words, since these are imported/foreign words._

_We looked at how other languages translate this string using the "Other languages" button on Weblate:_
https://translate.rx.studio/translate/r-project/base-r-gui/hi/?checksum=05ce1e10588b237c&sort_by=-priority,position#translations
* _French translates all the keys apart from those that are in English on a French keyboard: "Clavier : PageHaut, PageBas, Ctrl+Flèches, Ctrl+Début, Ctrl+Fin," According to Hugo: "keys that are translated in a French keyboard: del, end, screenshot, insert. I believe that other keys usually don't include text but use symbols (arrows, shift, pgup, pgdown). Ctrl and Alt are not translated". It looks like Chinese takes a similar approach._
* _Italian does not translate the keys: "Tastiera: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End,". Most languages take this approach._
* _Best to discuss among translation team for specific language if possible, to decide best approach. General guidance: don't translate unless these terms are commonly translated on the keyboard, commonly used in other technical documentation, or are simply a translation of the English word into the language script. (The latter advice because if people are choosing to see R messages in a non-English language, they may prefer to see everything in that script where possible)._

_Suggested each team maintains a page on this wiki https://github.com/r-devel/translations where they note agreed conventions for future contributors/translators._