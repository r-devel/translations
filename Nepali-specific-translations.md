[![translation status](https://translate.rx.studio/widgets/r-project/ne/svg-badge.svg?native=1)](https://translate.rx.studio/languages/ne/r-project/)

_This repository is a hub for all people who want to help translate R into
Nepali. This README is in English, but you can reach out to
other translators on the R Contributors Slack if you need any additional
information about the project._

## About
The goal of the _np_ project is to bring together all people interested in
helping translate the [R language](https://en.wikipedia.org/wiki/R_(programming_language)) into Nepali. If you use R a lot, we need your help!

Unlike other languages, R tries to display every message in the same language as the computer it's running on. In principle, this reduces R's barrier to entry; warnings and errors are very common in code written by beginners, so it's
essential that these messages are as clear as possible.

## How to contribute

To help in the translation process, you need to:

1. Sign up to the [R Contributors
   Slack](https://contributor.r-project.org/slack) and introduce yourself in the
   `#core-translations` channel;
1. Read the [Resources](https://github.com/r-devel/translations/wiki/Nepali-specific-translations#resources) section of
   this document, because the translation has some conventions that should be
   followed;
1. Create an account on [Weblate](https://translate.rx.studio/) (currently
   maintained by [@daroczig](https://twitter.com/daroczig));
1. List every Nepali
   [component](https://translate.rx.studio/languages/ne/r-project/);
1. Choose a component that's not 100% translated (like, for example, the [utils
   package](https://translate.rx.studio/languages/ne/r-project/));
1. Click **Unfinished strings** to list all messages that haven't been
   translated and
1. Start!

## Rules:

Translating R programming messages and warnings from English to Nepali requires careful attention to both the technical accuracy and linguistic clarity of the translated text. Here's a translation guide to help you with this process:

1. Understand the Context:

Before translating any message or warning, it's crucial to understand the context. Know what the message is conveying, what part of the code it relates to, and its intended audience.

2. Maintain Technical Accuracy:

Ensure that the translated message conveys the same technical information as the original. The goal is to make sure that users can still understand the issue or information provided.

3. Preserve Clarity:

Clarity is paramount in translations. Make sure the translated message is clear and easy to understand. Avoid overly complex or verbose translations.

4. Use Formal Nepali:

When translating messages for a general audience or professional context. Avoid using dialects unless the message is for a specific region where a particular dialect is preferred.

5. Consistency:

Maintain consistency in your translations. Use consistent terminology and wording throughout the translation to avoid confusion.

6. Be Mindful of Length:

Consider that the Nepali translation might be longer or shorter than the English text. Ensure that the translated message fits within the space allocated in the code or interface.

7. Retain Technical Terms:

For technical terms and code-related elements such as function names, object names, and variable names, it's often best to keep them in English. Use the Nepali script for these terms if necessary but maintain the English terminology.

8. Handle Plurals:

Nepali nouns have different forms for singular and plural. Ensure that you correctly handle plurals when translating messages that involve counts or quantities.

9. Punctuation:

Use punctuation stop (|) and ensure proper spacing around punctuation marks.

10. Special Characters:

Some technical messages may contain special characters like `%s, %d, or %f` for string, integer, and floating-point substitutions. Keep these special characters and their order in the translated message, making sure they correspond correctly with the placeholders.

11. Test the Translation:

After translating, test the messages in the R environment to ensure they appear correctly and are still functional.

12. Document Translations:

Keep a record of your translations for reference. This documentation can help maintain consistency in future translations and facilitate collaboration with other translators.

13. Seek Feedback:

If possible, seek feedback from native Nepali speakers who are also familiar with programming to ensure the translations make sense in the intended context.

14. Revise and Update:

Programming languages evolve, and so should your translations. Periodically review and update your translations to align with changes in the R programming language or best practices in translation.

Remember that translating programming messages is a specialized skill that requires a strong understanding of both the source and target languages as well as the technical context. Collaborating with other experienced translators can also improve the quality of your translations.

## Resources

### Style
### Formatting

### Glossary

Few glossaries are imported from: [Link 1](https://www.rcsdk12.org/cms/lib/NY01001156/Centricity/Domain/9641/ms_6_8_intermediate%20math_Nepali%20ver5-2-1.pdf) | [Link 2](https://docs.steinhardt.nyu.edu/pdfs/metrocenter/atn293/msmath/MS6to8IntermediateMathNepali2014.pdf) | [Microsoft Style Guide](https://download.microsoft.com/download/a/f/2/af2a5739-c56b-44ae-8d21-1ee5f26e8a6c/nep-npl-styleguide.pdf)

| English               | Nepali                                        |
|:---------------------|:--------------------------------------------|
| abort                |  परित्याग        |
| alias                |  उपनाम      |
| allocate             |  छुट्याउनु   |
| argument             |  तर्क       |
| array                |  एरे      |
| assign               |   राख्नु      |
| attach               |   र्जोर्नु      |
| attribute            |         |
| backslash            |         |
| bind                 |         |
| bitmap               |         |
| boxplot              |         |
| break                |         |
| browser              |         |
| build                |          |
| bytecode             |         |
| cache                |         |
| call                 |          |
| callback             |        |
| character string     |         |
| check                |         |
| chunk                |         |
| closure              |        |
| codoc                |         |
| coerce               |         |
| colortype            |         |
| console              |         |
| data frame           |         |
| database             |         |
| dataset              |          |
| debug                |         |
| defunct              |         |
| deparse              |         |
| deprecated           |         |
| detach               |         |
| device               |         |
| dispatch             |         |
| documentation object |         |
| download             |         |
| driver               |         |
| drop                 |         |
| encoding             |         |
| entry                |         |
| environment          |         |
| evaluate             |         |
| factor               |         |
| fifo                 |      |
| file pointer         |        |
| file stream          |         |
| filename             |         |
| fit                  |         |
| flag                 |         |
| flush                |         |
| frame                |         |
| function             | फलन    |
| handle               |         |
| hard-coded           |        |
| history              |         |
| implement            |         |
| incoming checks      |         |
| index                |         |
| invalid              |         |
| IO                   |      |
| label                |         |
| lag                  |         |
| layout               |         |
| lazy loading         |        |
| lazydata             |       |
| leading minor        |         |
| length               |         |
| library              |         |
| link                 |         |
| locale               |         |
| locator              |        |
| locking              |         |
| logical              |        |
| macro                |         |
| magic number         |         |
| match                |         |
| metafile             |        |
| mirror               |         |
| mismatch             |         |
| missing              |         |
| modulus              |         |
| multibyte            |         |
| namespace            |       |
| non-interactively    |        |
| non-numeric type     |        |
| numeric-alike        |       |
| offending            |        |
| offset               |         |
| opcode               |         |
| outlier              |         |
| overflow             |         |
| override             |         |
| package              |        |
| pager                |         |
| pair list            |        |
| parse                |        |
| path                 |         |
| pipe                 |         |
| pixmap               |         |
| platform             |         |
| polyline             |         |
| port                 |         |
| portable             |        |
| profiling            |       |
| profile              |        |
| promise              |         |
| prompt               |         |
| proxy                |         |
| push back            |         |
| quote symbol         |       |
| range                |         |
| raw                  |         |
| redraw               |         |
| regular expression   |         |
| replace              |          |
| report               |         |
| repository           |        |
| require              |         |
| return               |         |
| RNG                  |          |
| role                 |         |
| routine              |         |
| run                  |         |
| seal                 |         |
| search path          |         |
| seed                 |         |
| seek                 |         |
| sink                 |         |
| slash                |        |
| slot                 |         |
| snapshot             |         |
| socket               |        |
| source               |         |
| splice               |        |
| stack                |         |
| standardizable       |        |
| startup              |         |
| strict               |         |
| subscript            |         |
| subset               |     उपसमूह    |
| tag                  |     त्यग   |
| tangling             |   त्यङ्लिङ       |
| tarball              |   तार्बल      |
| template             |   नमुना      |
| thread               |   थ्रेड       |
| timeout              |   timeout      |
| timer                |   टाइमर     |
| timezone             |  समयक्षेत्र       |
| top level            |  शीर्ष स्तर        |
| traceback            |   ट्रेसब्याक     |
| truncate             |   काट्नु      |
| unary operator       |  unary अपरेटर      |
| unbind               |  अनबाइन्ड         |
| underflow            |  अनबाइन्ड        |
| unlisted             |  सूचीबद्ध नगरिएको      |
| viewport             |   भ्यूपोर्ट     |
| vignette             |    भिग्नेट     |
| warning              |   चेतावनी     |
| workspace            |  कार्यक्षेत्र       |
| wrapup               |   र्‍यापअप      |