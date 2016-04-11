% workreport.cls
% The base class for a UW Nano engineering work term report

% --- Class structure
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{workreport}[2016/04/08 version 0.1]
\LoadClass{article}


% --- Page Layout
\RequirePackage[letterpaper, left=1.5in, right=1in, top=1in, bottom=1in]{geometry}
\RequirePackage{mathptmx}

% --- Fonts
\DeclareOption{11pt}{\def\@@ptsize{11pt}}

% --- Default Options
\ExecuteOptions{11pt}

\ProcessOptions\relax

% --- Line Spacing

% -- Title Page

\renewcommand{\author}[1]{
	\def\@author{#1}
}

\newcommand{\printauthor}{\@author}

\newcommand{\maketitlepage}{
	\newpage
	
	University of Waterloo
	Faculty of Engineering
	Nanotechnology Engineering
	
}

\endinput