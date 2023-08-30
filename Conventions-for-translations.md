The following update was made during the [R Project Sprint 2023](https://contributor.r-project.org/r-project-sprint-2023/), Warwick and Online (hybrid):

# Languages and contributions

|Language | Contributor/Translator |
| -- | -- |
|[Arabic](https://github.com/r-devel/translations/wiki/Conventions-for-Arabic-translations)| [Iman Al-Hasani](https://github.com/imanalhasani), [Abdulrahman Alswaji](https://github.com/alswajiab) |
|[Bengali](https://github.com/r-devel/translations/wiki/Conventions-for-Bengali-translations)| [Debartha Paul](https://github.com/itsdebartha) |
|[Brazilian-Portugese](https://github.com/r-devel/translations/wiki/Brazilian%E2%80%90Portugese-specific-translations)| [Caio Lente](https://github.com/clente), [Renata Hirota](https://github.com/rmhirota)|
|[Hindi](https://github.com/r-devel/translations/wiki/Hindi-specific-translations)| [Saranjeet Kaur Bhogal](https://github.com/SaranjeetKaur), [Ayush Patel](https://github.com/AyushBipinPatel)  |
|[Japanese](https://github.com/r-devel/translations/wiki/Japanese-specific-translations)| [Reiko Okamoto](https://github.com/reikookamoto) |
|[Nepali](https://github.com/r-devel/translations/wiki/Nepali-specific-translations)| [Binod Jung Bogati](https://github.com/bjungbogati) |
|[Spanish](https://github.com/r-devel/translations/wiki/Conventions-for-Spanish-translation)| [Geraldine Gómez](https://github.com/GeraldineGomez), [María Nanton](https://github.com/mcnanton), [Macarena Quiroga](https://github.com/msquiroga89)| 

The following discussion is taken from the meeting notes of the [EMEA-APAC region R Contributor Office Hours conducted on 13 April 2023](https://github.com/r-devel/rcontribution/blob/main/office_hours/2023-04-13_EMEA-APAC.md):

_Saranjeet wanted to know how to handle translating strings such as "Keyboard: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End". She has currently translated to Hindi as "कीबोर्ड: पेज अप, पेज डाउन, कंट्रोल+एरोज , कंट्रोल+होम , कंट्रोल+एन्ड ,", which is in Hindi script but is spoken the same as the English words, since these are imported/foreign words._

_We looked at how other languages translate this string using the "Other languages" button on Weblate:_
https://translate.rx.studio/translate/r-project/base-r-gui/hi/?checksum=05ce1e10588b237c&sort_by=-priority,position#translations
* _French translates all the keys apart from those that are in English on a French keyboard: "Clavier : PageHaut, PageBas, Ctrl+Flèches, Ctrl+Début, Ctrl+Fin," According to Hugo: "keys that are translated in a French keyboard: del, end, screenshot, insert. I believe that other keys usually don't include text but use symbols (arrows, shift, pgup, pgdown). Ctrl and Alt are not translated". It looks like Chinese takes a similar approach._
* _Italian does not translate the keys: "Tastiera: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End,". Most languages take this approach._
* _Best to discuss among translation team for specific language if possible, to decide best approach. General guidance: don't translate unless these terms are commonly translated on the keyboard, commonly used in other technical documentation, or are simply a translation of the English word into the language script. (The latter advice because if people are choosing to see R messages in a non-English language, they may prefer to see everything in that script where possible)._

_Suggested each team maintains a page on this wiki https://github.com/r-devel/translations where they note agreed conventions for future contributors/translators._