\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{druzz-hw}[2026/09/20 Druzz homework class]

% ------------------------------------------------------------
% Class options
% ------------------------------------------------------------

\def\druzz@ptsize{10pt}

\DeclareOption{10pt}{\def\druzz@ptsize{10pt}}
\DeclareOption{11pt}{\def\druzz@ptsize{11pt}}
\DeclareOption{12pt}{\def\druzz@ptsize{12pt}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax

\LoadClass[\druzz@ptsize,reqno]{amsart}

% ------------------------------------------------------------
% Packages
% ------------------------------------------------------------

\RequirePackage[
left=0.45in,
right=0.45in,
top=0.45in,
bottom=0.5in
]{geometry}

\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{needspace}
\RequirePackage{hyperref}

\RequirePackage{druzz}

% ------------------------------------------------------------
% Metadata
% ------------------------------------------------------------

\newcommand{\hwstudent}{Andreas Eglhofer}
\newcommand{\hwcourse}{}
\newcommand{\hwassignment}{}
\newcommand{\hwdate}{\today}

\newcommand{\student}[1]{\renewcommand{\hwstudent}{#1}}
\newcommand{\course}[1]{\renewcommand{\hwcourse}{#1}}
\newcommand{\assignment}[1]{\renewcommand{\hwassignment}{#1}}
\newcommand{\hwduedate}[1]{\renewcommand{\hwdate}{#1}}

% ------------------------------------------------------------
% Layout
% ------------------------------------------------------------

\setlength{\parindent}{0pt}
\setlength{\parskip}{0.35em}

\setlist{
itemsep=0.15em,
parsep=0pt,
topsep=0.3em
}

% ------------------------------------------------------------
% Header
% ------------------------------------------------------------

\pagestyle{fancy}
\fancyhf{}

\lhead{\small\hwstudent}
\chead{\small\hwcourse\quad\hwassignment}
\rhead{\small\thepage}

\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}

\setlength{\headheight}{14pt}

% ------------------------------------------------------------
% Title
% ------------------------------------------------------------

\renewcommand{\maketitle}{
\thispagestyle{fancy}

\begin{center}
{\bfseries \hwcourse \quad \hwassignment}
\end{center}

\vspace{-0.7em}

\noindent
\hwstudent
\hfill
\hwdate

\vspace{0.25em}
\hrule
\vspace{0.6em}

\hypersetup{
pdftitle={\hwcourse\space\hwassignment},
pdfauthor={\hwstudent}
}
}

% ------------------------------------------------------------
% Problems
% ------------------------------------------------------------

\newcommand{\currentproblem}{}

\newenvironment{problem}[1]
{
\needspace{3\baselineskip}

\renewcommand{\currentproblem}{#1}

\par
\vspace{0.55em}

\noindent
\llap{$\rightarrow$\hspace{0.5em}}
{\bfseries Problem #1}

\vspace{0.15em}

\hrule height 0.25pt

\vspace{0.4em}
}
{
\par
\vspace{0.35em}
}

% ------------------------------------------------------------
% Solutions
% ------------------------------------------------------------

\newenvironment{solution}
{
\par
\noindent
\textit{Solution}\enspace
}
{
\par
}

% ------------------------------------------------------------
% Parts
% ------------------------------------------------------------

\newenvironment{parts}
{
\begin{enumerate}[
label=(\alph*),
leftmargin=2em
]
}
{
\end{enumerate}
}
