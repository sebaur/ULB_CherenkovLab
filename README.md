# Instructions for the Cherenkov lab at the ULB

This document exists in two versions:
- vademecum: meant for the students as guideline for the experiments
- fullInstructions: meant for assistants. Same as above but with significant extra information. For example exercise solutions, examples of the data and the analysis, some additional background inforamtion.

The file organisation is as follows:
- Every section has its own .tex file, being combined in main.tex.
- within these files, the additional information for assistants is included in the special environment
\ifthenelse{\boolean{showAdditional}}{
\begin{additional}
(...)
\end{additional}
}
- The two files vademecum.tex and fullInstructions.tex then produce the two versios of the document.
- Usage of the Makefile is encouraged, in case of future changes of this structure.
