# Instructions for the Cherenkov lab at the ULB

This document exists in two versions: the basic version for the students as guideline for the experiments and the _full_ version for assistants which includes extra additional information and exercise solutions and examples of the data and the analysis.

The file organisation is as follows:
- Every section has its own `.tex` file, being combined in `vademecum.tex`.
- within these files, the additional information for assistants is included in the special environment
```
\ifthenelse{\boolean{showAdditional}}{
\begin{additional}
(...)
\end{additional}
}
```
- Use `\documentclass[full]{labInstructions}` for the general document style. If the option `full` is included, the additional material is included in the pdf.
- Usage of the `Makefile` is encouraged, in case of future changes of this structure.
