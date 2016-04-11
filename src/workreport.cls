% workreport.cls
% The base class for a UW Nano engineering work term report

% --- Class structure
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{workreport}[2016/04/08 version 0.1]
\LoadClass{article}

% --- Dependencies
\RequirePackage{titlepage}


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

\renewcommand{\university}[1]{
    \def\@university{#1}
}

\renewcommand{\faculty}[1]{
    \def\@faculty{#1}
}

\renewcommand{\program}[1]{
    \def\@program{#1}
}

\renewcommand{\employername}[1]{
    \def\@employername{#1}
}

\renewcommand{\employeraddress}[1]{
    \def\@employeraddress{#1}
}

\renewcommand{\studentnumber}[1]{
    \def\@studentnumber{#1}
}

\renewcommand{\studentid}[1]{
    \def\@studentid{#1}
}

\renewcommand{\previousterm}[1]{
    \def\@previousterm{#1}
}

% --- Line Spacing

\endinput
