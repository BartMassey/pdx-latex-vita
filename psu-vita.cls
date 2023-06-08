%%% Official PSU-Format Vita Macros

%%% The formatting here is taken from the official source:
%%% Portland State University Office of Academic Affairs
%%% Promotion and Tenure Guidelines, Appendix I
%%%   http://www.oaa.pdx.edu/OAADOC/PTGUIDE/Appendix/appendix1.html
%%% Note that there is still much to do to complete this
%%% cleanly, but it works well enough for now.

%%% Thanks to Sarah Mocas for the original
%%% version of this formatting.
%%% Bart Massey 2000/10/29

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{psu-vita}[2000/10/29]
\LoadClass[11pt]{report}

\renewcommand{\labelitemi}{}
\renewcommand{\labelitemii}{}
\topmargin=-.45truein
\textwidth=6.25truein
\textheight=9.0truein
\oddsidemargin=-.05truein
\raggedright

\newif\if@firstminor

\newenvironment{majorhead}[1]{%
  \@firstminortrue
  \pagebreak[3]%
  \begin{center}%
  {\bf \underline{#1}}%
  \end{center}\nopagebreak
  \begin{itemize}%
 }{%
  \end{itemize}}

\newenvironment{minorhead}[1]{%
  \if@firstminor
    \nopagebreak
    \@firstminorfalse
  \else
    \pagebreak[3]%
  \fi
  \item {\bf \underline{#1}}\nopagebreak
  }{}

\renewcommand{\author}[1]{%
  \gdef\@shortauthor{#1}%
  \gdef\@author{#1}}

\newcommand{\shortauthor}[1]{%
  \gdef\@shortauthor{#1}}

%%% Get underlining back up to baseline.
%%% Borrowed from code in UO thesis macros.
%%% (Contact someone at http://www.cs.uoregon.edu for latest info.)
\let\@@@underline=\underline
\def\underline#1{{$\setbox0=\hbox{#1}\dp0=0pt\@@@underline{\box0}$}}

\pagestyle{myheadings}
\markboth{Curriculum Vitae---\protect\@shortauthor}{Curriculum Vitae---\protect\@shortauthor}

\renewcommand{\maketitle}{
  \thispagestyle{empty}
  \begin{center}{\large\bf CURRICULUM VITAE}\end{center}
  \begin{center}{\large\bf \@author ~~~ \@date}\end{center}
  \medskip
}
