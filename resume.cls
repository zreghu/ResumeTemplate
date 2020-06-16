%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Resume Template - Gregory Zhu        %
%      Rev 1.0 - 06/15/2020                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2020/06/14 gregory zhu resume class Rev1.0]
\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\RequirePackage{titlesec}
\RequirePackage[margin=0.5in]{geometry}
\RequirePackage{plex-sans}
\RequirePackage{hyperref}
\thispagestyle{empty}

\setlength{\parindent}{0em}
\setlength{\parskip}{0em}

\titlespacing\section{0pt}{4pt}{4pt}
\titlespacing\subsection{0pt}{2pt}{2pt}

\titleformat{\section}         % Customise the \section command 
  {\bfseries\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}               % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\bfseries\large\scshape\raggedright}
  {}{0em}
  {}
  []
  
\hypersetup{
    colorlinks=false, %Set to true for color
    linkcolor=blue,
    filecolor=magenta, 
    urlcolor = blue
}


% Define name, address, phone number, and email
\def \name#1 {\def \@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \address#1 {\def \@address{#1}}
\def \@address {}

\def \email#1 {\def \@email{#1}}
\def \@email {}

\def \phonenumber#1 {\def \@phonenumber{#1}}
\def \@phonenumber {}

% Sections with date on the right
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[3]{%
  \subsection[#1]{#1, \normalfont{#2} \hfill \textbf{#3}}%
}

\newcommand{\headername}[1]{%
  \centerline{\Huge{#1}}
}

% Contact information line
\newcommand\contact[3]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 \hspace{5pt} #2 \hspace{5pt} #3%
        }%
    }%
}

% make the name header which is NAME \newline Contact information
\newcommand{\makeheader}[0]{
    \centerline{
        \LARGE{\textbf{\@name}}
    }
    \vspace{0.5em}
    \centerline{
        \contact{\@address}{\@email}{\@phonenumber}
    }
}