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

See above for the definition of a ("component")[#], and based on that, see the section on "How to add a new component?".