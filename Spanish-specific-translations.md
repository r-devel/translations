[![translation status](https://translate.rx.studio/widgets/r-project/es/svg-badge.svg?native=1)](https://translate.rx.studio/languages/es/r-project/)

_This repository is a hub for all people who want to help translate R into
Spanish. This README is in English, but you can reach out to
other translators on the R Contributors Slack if you need any additional
information about the project._

## About
The goal of the _es_ project is to bring together all people interested in
helping translate the [R
language](https://en.wikipedia.org/wiki/R_(programming_language)) into Spanish. If you use R a lot, we need your help!

Unlike other languages, R tries to display every message in the same language as
the computer it's running on. In principle, this reduces R's barrier to entry;
warnings and errors are very common in code written by beginners, so it's
essential that these messages are as clear as possible.

## Resources

### Style
### Formatting
### Grammatical gender

Unlike Spanish, English does not specify grammatical gender. We will try to follow the [Manual for Non Sexist Use of Language (in Spanish)](http://conavim.gob.mx/work/models/CONAVIM/Resource/309/1/images/Manualparaelusonosexistadellenguaje%20completo%281%29.pdf) in translations as much as we can, but unfortunately that is not always possible.

You can check other useful links to use grammatical gender:
* [Gender Data](https://datadrivesimpact.course.tc/?utm_campaign=coschedule&utm_source=linkedin_company&utm_medium=DataDotOrg)
* [Translate R Spanish](https://github.com/angelasanzo/TranslateR_Spanish/)

Grammatical gender of arguments, acronyms and other nouns can usually be inferred by context. In the example below, we translate "DLL" as "a biblioteca de vínculo dinámico" (dynamic-link library).

DLL %s was not loaded

DLL %s no fue cargada

In the following example, although "scale" is a feminine noun in Spanish, the masculine is used because it is replacing "argument", "o argumento", which is a masculine noun.

'scale' should be numeric or NULL

'scale' debe ser numérico o NULL

In certain situations, we can simply ignore genders. In the following expression, we could translate "author" to "autor(a)", but there are alternatives that allow us to completely omit it.

Authors@R field gives no person with name and author role

El campo Authors@R no proporciona ninguna persona con nombre ni función de 'author'

In rare cases, the messeges references who doing the programming. In these cases, the best we can do without jeopardising comprehension or overly increasing the length of the sentence is to use "o(a)".

Not enough arguments passed to user macro '%s'

No se han pasado suficientes argumentos para la macro %s' de usuario(a)

It's important to note that this strategy is not adopted by the French and Italian teams, who prefer to simply use the masculine term "usuario". Unless there is some guideline discouraging resources such as "o(a)", we believe that our standard is preferable.

### Glossary
Glossaries developed by other projects
* [R OpenSci](https://github.com/ropensci-review-tools/glossary/blob/master/glossary.csv)
* [R for Data Science](https://github.com/cienciadedatos/documentacion-traduccion-r4ds/blob/master/orientaciones-traduccion.md)