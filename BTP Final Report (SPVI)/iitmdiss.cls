%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This is a class for LaTeX2e that should format a report as per
% the IITM Thesis guidelines.  The page layout is set using the
% geometry package.  The double/singlespacing is setup using
% setspace.  Figure captions are set using the hang option of
% caption2.  natbib is used to do the citation using an
% author-year format. I've made an iitm.bst file that formats 
% the references as per the IITM guidelines.
%
% To use this class do the following:
%  \documentclass[options]{iitmdiss} 
%
% Options:
%
%   PhD, MS, MTech or BTech -- generates the appropriate title page
%   and loads the report class.
%
%   synopsis -- Generates the title page for the synopsis.  This also
%   loads the article class instead of the report.
%  
% Example:
%
% \documentclass[PhD,synopsis]{iitmdiss}
% \documentclass[MS]{iitmdiss}
%
% IMPORTANT NOTICE:
% 
%   PLEASE DO NOT MESS WITH THE MARGINS AND GENERAL FORMATTING SETUP
%   IN THIS FILE UNLESS YOU ARE ABSOLUTELY SURE THAT THE FORMAT DOES NOT
%   MATCH WITH THE THESIS GUIDELINES.  FOR EXAMPLE, DO NOT CHANGE THE 
%   MARGINS AND SPACING JUST TO MAKE YOUR THESIS LARGER!
% 
% Notes:
%
%   * I am using as much of the Thesis guidelines for the spacing
%     and margins as I can.
%   * I have used newdiss.cls by R.~K.~Hariram, U.~V.~Ravindra et al. 
%     as a reference and a source for some of the macros.
%   * This class will assume a4paper with 12pt fonts.
%   * I am no TeXpert so feel free to clean up the mess.
%
% Prabhu Ramachandran <prabhu@ae.iitm.ac.in>
% March 2005.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{iitmdiss}[2005/03/09 Class for IIT-RAM Dissertations]

\RequirePackage{setspace}
\RequirePackage{amsmath}
\RequirePackage[dvips]{graphics}
\RequirePackage{array}
\RequirePackage{lipsum}
% the next two lines are needed to make packages using xcolor happy
\RequirePackage{xcolor}
\def\current@color{ Black}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{\ifnum\month>10 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>10 January\else\ifnum\month>8 November
  \else\ifnum\month>6 September\else May\fi\fi\fi}
\def\enrollment#1{\gdef\@enrollment{#1}}
\def\adviser#1{\gdef\@adviser{#1}}
\def\addradviser#1{\gdef\@addradviser{#1}}
\def\chair#1{\gdef\@chair{#1}}
\def\addrchair#1{\gdef\@addrchair{#1}}
\def\external#1{\gdef\@external{#1}}
\def\addrexternal#1{\gdef\@addrexternal{#1}}
\def\internal#1{\gdef\@internal{#1}}
\def\addrinternal#1{\gdef\@addrinternal{#1}}
\def\coguide#1{\gdef\@coguide{#1}}
\def\addrcoguide#1{\gdef\@addrcoguide{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\book#1{\gdef\@book{#1}}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\newcommand*{\frontmatter}{
  \pagenumbering{roman}
  }
\newcommand*{\mainmatter}{\pagenumbering{arabic}}
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makelos}{}
\newcommand*{\begincmd}{
\doublespacing
\frontmatter
\maketitlepage
%\makecopyrightpage
\makedeclarepage
\makecertificate
\makeacknowledgements
\makededication
\makeabstract
\tableofcontents
\clearpage
\listoffigures
\clearpage
\listoftables
\clearpage
%\addcontentsline{toc}{chapter}{Nomenclature}
\makelot
\clearpage
\makelof
\clearpage
\makelos
\clearpage\mainmatter}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@dept{Chemical Engineering}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\def\department#1{\gdef\@dept{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\newcommand{\maketitlepage}{{
  \thispagestyle{empty}
  \sc
  \vspace*{0in}
  \begin{center}
  \bf
    \LARGE \@title
  \end{center}
  \vspace{.2in}
  \begin{center}
      {\normalfont\large the thesis submitted by}
  \end{center}
  \normalsize
\normalfont
  \vspace{.2in}
  \begin{center}
    {\large\bf \@author\\ (Enrollment no: \@enrollment)}
  \end{center}
  \vspace{.2in}
  \begin{center}\large{
   in partial fulfillment of the requirements for the award of\\
    {\bf \@degree} \\}
  \end{center}
    \vspace{.2in}
  \begin{center}
  \includegraphics[width=4cm]{logo}
  \end{center}
  \vspace{.2in}
  \begin{center}{\bf \large
    \@deptpref  ~\@dept \\
    Institute of Infrastructure Technology Research and Management,
    Ahmedabad, Gujarat-380026.}
  \end{center}

  \vspace{.2in}
  \begin{center}\large{
    \@submitted}
  \end{center}
  \clearpage
  }}
\newcommand*{\makecopyrightpage}{
  \thispagestyle{empty}
  \vspace*{0in}
  \begin{center}
    \copyright\ Copyright by \@author, \number\year. \\
    All Rights Reserved
  \end{center}
  \clearpage}



  \newcommand*{\makedeclarepage}{
  \thispagestyle{empty}
  \vspace*{0in}
   \addcontentsline{toc}{section}{Declaration}
  \begin{center}
  \bf
  \Large Self declaration
  \end{center}
  \normalsize
\onehalfspacing

We declare that this written submission represents our ideas in our own words, and where ideas or words of others have been included, we have adequately cited and referenced the original sources. We also declare that we have adhered to all principles of academic honesty and integrity and have not misrepresented or fabricated or falsified any idea/data/fact/source in my submission. We understand that any violation of the above will be a cause for disciplinary action by the Institute and can also evoke penal action from the sources that  have thus not been properly cited, or from whom proper permission has not been taken.
\\ \\
Place: \hspace*{3.0in} Signature(s):\\ \\
Date: \hspace*{3.05in} \@author \\ \\ 
\hspace*{3.5in} (\@enrollment)
  \clearpage}


  \newpage

  \newcommand*{\makecertificate}{
  \thispagestyle{empty}
  \vspace*{0in}
   \addcontentsline{toc}{section}{Approval sheet}
  \begin{center}
  \bf
  \Large Approval sheet
  \end{center}
  \normalsize


 %% Guide
 The theis entitled ``{\bf \@title}" submitted by {\bf \@author} is the outcome of the work done during the academic period 2020-2021 under my supervision for the partial fulfilment of the reqirements for the award of degree of {\bf \@degree}. The extent of similarity content found in this submission is acceptable for me.  
\\ \\
Place: Ahmedabad \hspace*{1.8in} Name of the supervisor: Dr. Priyesh Chauhan\\ \\
Date: June 2021\hspace*{2in} Signature:\\ \\
 
The examination committee hereby approves that the thesis entitled ``{\bf \@title}" submitted by {\bf \@author} can be considered for submission in the department of Electrical Engineering at Institute of Infrastructure Technology Research and Management, Ahmedabad.
\\ \\
{\bf Name of the supervisor}: \@adviser\\ 
{\bf Affiliation}: \@addradviser\\ 
{\bf Signature with date}:\\ \\
{\bf Name of the examiner-1}: \@external\\ 
{\bf Affiliation}: \@addrexternal\\ 
{\bf Signature with date}:\\ \\
{\bf Name of the examiner-2}: \@internal\\ 
{\bf Affiliation}: \@addrinternal\\ 
{\bf Signature with date}:\\ \\ 



\clearpage}

\newpage

\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    \addcontentsline{toc}{section}{Acknowledgements}
    \vspace*{0in}
    \begin{center}
      \Large \textbf{Acknowledgements}
    \end{center}
    \@acknowledgements
    \clearpage
  \fi
  }
\def\makededication{
  \ifx\@dedication\undefined
  \else
  \vspace*{0in}
     \begin{center}
      \Large \textbf{Dedication}
    \end{center}
    \vspace*{1.5in}
    \begin{center}
      \@dedication
    \end{center}
    \clearpage
  \fi
  }


\newcommand*{\makeabstract}{
  \newpage
  \addcontentsline{toc}{section}{Abstract}
  \vspace*{0in}
  \begin{center}
  \Large \textbf{Abstract}
  \end{center}
  \@abstract
  \clearpage
  }


\DeclareOption{myorder}{
  \renewcommand*{\begincmd}{\doublespacing}}
\DeclareOption{lot}{\renewcommand*{\makelot}{
  \addcontentsline{toc}{section}{List of tables}\listoftables}}
\DeclareOption{lof}{\renewcommand*{\makelof}{
  \addcontentsline{toc}{section}{List of figures}\listoffigures}}
\DeclareOption{los}{\renewcommand*{\makelos}{
    \RequirePackage{losymbol}
    \section*{List of symbols\@mkboth {LIST OF SYMBOLS}{LIST OF SYMBOLS}}
    \@starttoc{los}
    \addcontentsline{toc}{section}{List of Symbols}
  }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

\setlength{\oddsidemargin}{0.25in}
\setlength{\evensidemargin}{0.25in}
\setlength{\topmargin}{0in}
\setlength{\textheight}{9in}
\setlength{\textwidth}{6in}
\long\def\abstract#1{\gdef\@abstract{#1}}

\AtBeginDocument{\begincmd}

\endinput