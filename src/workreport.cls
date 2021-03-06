% workreport.cls
% The base class for a UW Nano engineering work term report
%
%
% Author: Michal Kononenko and Paulo Miguel
%
% In order to simplify the process of writing a work term report for the
% nanotechnology engineering program at the University of Waterloo, this LaTeX
% class was created. The idea of this code is to allow the user to avoid
% worrying about the little formatting decisions, and focus solely on writing a
% clean work term report.
%
% This LaTeX package aims to be compliant with Version 1.1 of the guidelines
% for the WKRPT 300 course.
%
% This package is provided to you free of charge under the MIT license. A copy
% of this license can be found in the LICENSE file of this repository. This code
% is provided to you AS IS. THE DEVELOPERS, CONTRIBUTORS, PROVIDERS, AND
% AFFILIATES OF THE WORKREPORT LATEX PACKAGE MAKE NO CLAIMS OR GUARANTEES
% RELATING TO THE MERCHANTABILITY OR QUALITY OF THIS PRODUCT.

% --- Class Declarations
% Inherit from the article class to provide page, section, and TOC numbering
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{workreport}[2016/04/08 version 0.1]
\LoadClass{article}

% --- External Dependencies
% These are third-party packages on which the workreport package relies for
% critical functionality. Most of these should be available through CTAN. A
% brief explainiation of each package's functionality is given above each
% package declaration

% Provides the line spacing of 1.5 lines required in certain sections of the
% work term report
\RequirePackage{setspace}

% Creates and manages the glossary section of the work term report.
\RequirePackage[toc, xindy, nonumberlist, nopostdot]{glossaries}

% Manages references made in the work term report, using references stored in a
% .bib file
\RequirePackage[style=ieee, backend=bibtex]{biblatex}

% Allows management of the table of contents, allowing addition of un-numbered
% sections and subsections into the TOC, as well as providing the equally-spaced
% centered dots linking an entry in the TOC to its given page number
\RequirePackage{titletoc}

% Provides a convenient wrapper for \newenvironment that lets a developer carry
% over variables and state from the setup code for an environment to its
% teardown. The content between the setup and teardown is wrapped in a \BODY
% macro, that separates the setup from the teardown logic.
\RequirePackage{environ}

% --- Page Layout

% Set margins for the pages in the work term report
\RequirePackage[letterpaper, left=1.5in, right=1in, top=1in, bottom=1in]{geometry}

% Allows user to put in graphics into their work term report
\RequirePackage{graphicx}

% This package is required by XeTeX to load and modify TrueType fonts. These fonts are located on your computer as *.ttf files.
\RequirePackage{fontspec}

% Format titles to have the requisite spacing between them (2 lines is interpreted to be 24 pt)
\RequirePackage{titlesec}
\titleformat{\section}[block]
  {\vspace{24pt}\fontsize{14}{15}\large\bfseries}
  {\thesection}
  {1em}
  {}

\titleformat{\subsection}[block]
  {\vspace{24pt}\fontsize{12}{15}\bfseries}
  {\thesubsection}
  {1em}
  {}

\titleformat{\subsubsection}[block]
  {\vspace{24pt}\fontsize{12}{15}\bfseries}
  {\thesubsubsection}
  {1em}
  {}

% Place captions above the table
\RequirePackage{floatrow}
\floatsetup[table]{capposition=top}

% --- Dependencies on Packages Provided in this Repo
% This section imports the frontmatter, body, and backmatter packages, which
% oversee the formatting of their respective section
\RequirePackage{frontmatter}
\RequirePackage{body}
\RequirePackage{backmatter}

% --- Page Counter
% Use this counter to synchronize page numbers across the roman and
% arabic numeral styles

\newcounter{pagenumber}
\setcounter{pagenumber}{1}

% Ensure that the sections render correctly
\renewcommand*\thesection{\arabic{section}.0}
\renewcommand*\thesubsection{\arabic{section}.\arabic{subsection}}

% Hotfix for rendering the Reduced Planck constant (hbar) using the $\hbar$ command
\newsavebox{\myhbar}
\savebox{\myhbar}{$\hbar$}
\renewcommand*{\hbar}{\mathalpha{\usebox{\myhbar}}}

% --- Fonts, scale the text to 11pt font
\setmainfont[Ligatures=TeX,Scale=0.95]{Times New Roman}

% --- User Data

\renewcommand{\title}[1]{
	\def\@title{#1}
}

\renewcommand{\author}[1]{
	\def\@author{#1}
}

\newcommand{\university}[1]{
	\def\@university{#1}
}

\newcommand{\universityaddress}[1]{
	\def\@universityaddress{#1}
}

\newcommand{\faculty}[1]{
	\def\@faculty{#1}
}

\newcommand{\program}[1]{
	\def\@program{#1}
}

\newcommand{\employername}[1]{
	\def\@employername{#1}
}

\newcommand{\employeraddress}[1]{
	\def\@employeraddress{#1}
}

\newcommand{\studentnumber}[1]{
	\def\@studentnumber{#1}
}

\newcommand{\studentid}[1]{
	\def\@studentid{#1}
}

\newcommand{\previousterm}[1]{
	\def\@previousterm{#1}
}

\newcommand{\programdirector}[1]{
	\def\@programdirector{#1}
}

\newcommand{\printreferences}{
	\addcontentsline{toc}{section}{References}
	\printbibliography
}

\makeglossaries

% --- Ensures that sections are correctly formatted in the table of contents

\titlecontents{section}
[0pt] % left margin
{\vspace{2pt}} % above code
{
	\thecontentslabel\enspace
} % numbered entry format
{\hspace{4pt}\contentsmargin{0pt}} % un-numbered entry format
{\titlerule*[.5pc]{.}\contentspage} % separator
[] % below code

\titlecontents{subsection}
[10pt]
{}
{
	\contentsmargin{10pt}
	\thecontentslabel\enspace
} % numbered entry format
{\contentsmargin{0pt}} % un-numbered entry format
{\titlerule*[.5pc]{.}\contentspage} % separator
[] % below code

\titlecontents{subsubsection}
[20pt]
{}
{
	\contentsmargin{10pt}
	\thecontentslabel\enspace
}
{\contentsmargin{10pt}}
{\titlerule*[.5pc]{.}\contentspage} % separator
[] % below code

\endinput
