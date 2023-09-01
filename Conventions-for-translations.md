The following update was made during the [R Project Sprint 2023](https://contributor.r-project.org/r-project-sprint-2023/), Warwick and Online (hybrid) during 30 Aug - 1 Sept 2023:
## Guidelines
### General guidelines
- Unless having very strong reasons not to, please follow your language specific glossary and guidelines
- If you encounter ambiguous or difficult strings to translate that aren't captured in the language specific glossary and guidelines, refer to the core-translation slack channel to discuss it with other translators
- Some languages, like spanish, have specific channels to discuss translation. Refer to your specific channel to discuss issues related to your language: **if you need a slack channel set up for a language, send a direct slack message to @mcnanton**

### Rules
Translating R programming messages and warnings from English to other languages requires careful attention to both the technical accuracy and linguistic clarity of the translated text. Here's a translation guide to help you with this process:

**1. Understand the Context:**

Before translating any message or warning, it's crucial to understand the context. Know what the message is conveying, what part of the code it relates to, and its intended audience.

**2. Maintain Technical Accuracy:**

Ensure that the translated message conveys the same technical information as the original. The goal is to make sure that users can still understand the issue or information provided.

**3. Preserve Clarity:**

Clarity is paramount in translations. Make sure the translated message is clear and easy to understand. Avoid overly complex or verbose translations.

**4. Use Formal language:**

When translating messages for a general audience or professional context, use formal languange.

**5. Consistency:**

Maintain consistency in your translations. Use consistent terminology and wording throughout the translation to avoid confusion.

**6. Be Mindful of Length:**

Ensure that the translated message fits within the space allocated in the code or interface.

**7. Retain Technical Terms:**

For technical terms and code-related elements such as function names, object names, and variable names, it's often best to keep them in English.

**8. Handle Plurals:**

Some languages nouns have different forms for singular and plural. Ensure that you correctly handle plurals when translating messages that involve counts or quantities.

**9. Punctuation:**

Use the punctuation and ensure proper spacing around punctuation marks.

**10. Special Characters:**

Some technical messages may contain special characters like %s, %d, or %f for string, integer, and floating-point substitutions. Keep these special characters and their order in the translated message, making sure they correspond correctly with the placeholders.

**11. Test the Translation:**

After translating, test the messages in the R environment to ensure they appear correctly and are still functional.

**12. Document Translations:**

Keep a record of your translations for reference. This documentation can help maintain consistency in future translations and facilitate collaboration with other translators.

13. Seek Feedback:

If possible, seek feedback from native speakers who are also familiar with programming to ensure the translations make sense in the intended context.

14. Revise and Update:

Programming languages evolve, and so should your translations. Periodically review and update your translations to align with changes in the R programming language or best practices in translation.

Remember that translating programming messages is a specialized skill that requires a strong understanding of both the source and target languages as well as the technical context. Collaborating with other experienced translators can also improve the quality of your translations.

### What (words) not to translate
- Keyboard keys
- Function names
- Placeholders like %s, %d
- put on wiki
- Acronyms (if they are function arguments)

### Updating glossaries
_Process to be defined_

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

_Saranjeet wanted to know how to handle translating strings such as "Keyboard: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End". She has currently translated to Hindi as "कीबोर्ड: पेज अप, पेज डाउन, कंट्रोल+एरोज , कंट्रोल+होम , कंट्रोल+एन्ड ,", which is in Hindi script but is spoken the same as the English words, since these are imported/foreign words._

_We looked at how other languages translate this string using the "Other languages" button on Weblate:_
https://translate.rx.studio/translate/r-project/base-r-gui/hi/?checksum=05ce1e10588b237c&sort_by=-priority,position#translations
* _French translates all the keys apart from those that are in English on a French keyboard: "Clavier : PageHaut, PageBas, Ctrl+Flèches, Ctrl+Début, Ctrl+Fin," According to Hugo: "keys that are translated in a French keyboard: del, end, screenshot, insert. I believe that other keys usually don't include text but use symbols (arrows, shift, pgup, pgdown). Ctrl and Alt are not translated". It looks like Chinese takes a similar approach._
* _Italian does not translate the keys: "Tastiera: PgUp, PgDown, Ctrl+Arrows, Ctrl+Home, Ctrl+End,". Most languages take this approach._
* _Best to discuss among translation team for specific language if possible, to decide best approach. General guidance: don't translate unless these terms are commonly translated on the keyboard, commonly used in other technical documentation, or are simply a translation of the English word into the language script. (The latter advice because if people are choosing to see R messages in a non-English language, they may prefer to see everything in that script where possible)._

_Suggested each team maintains a page on this wiki https://github.com/r-devel/translations where they note agreed conventions for future contributors/translators._