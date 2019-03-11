\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{labInstructions}[Generic style for lab instruction documents]

\LoadClass[11pt,a4paper,onecolumn]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[francais]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{ifthen}
\RequirePackage{titlesec}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% boolean option to show additional stuff
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newboolean{showAdditional}
\setboolean{showAdditional}{false}

\DeclareOption{full}{%
	\setboolean{showAdditional}{true}
}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% env for exercise solutions or additional
% information for assistants
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xargs}
\RequirePackage{framed}
\RequirePackage{xcolor}
\renewenvironmentx{leftbar}[3][1=6pt, 2=5pt, 3=0.8\linewidth]%
{\def\FrameCommand{{\color{lightgray}\vrule width #1 \hspace{#2}}}\MakeFramed {\hsize#3\advance\hsize-\width \FrameRestore}}%
{\endMakeFramed}

\newenvironment{additional}%
{\begin{leftbar}\noindent}
{\end{leftbar}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% general format and style
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{0pt}

\titleformat{\section}
  {\LARGE\scshape\bfseries\raggedright}
  {\thesection}{1em}
  {}
 
  \titleformat{\subsection}
  {\Large\bfseries\raggedright}
  {\thesubsection}{1em}
  {}
