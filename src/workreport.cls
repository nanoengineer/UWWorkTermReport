% workreport.cls
% The base class for a UW Nano engineering work term report

% --- Class structure
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{workreport}[2016/04/08 version 0.1]
\LoadClass{article}

% --- Dependencies
\RequirePackage{titlepage}
\RequirePackage{letter_of_submittal}
\RequirePackage{table_of_contents}
\RequirePackage{contributions}

% --- Page Layout
\RequirePackage[letterpaper, left=1.5in, right=1in, top=1in, bottom=1in]{geometry}
\RequirePackage{mathptmx}

% --- Fonts
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
% --- Default Options
\ExecuteOptions{11pt}

\ProcessOptions\relax

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


% --- Line Spacing

\endinput
