%------------------------------------------------------------
% podrecznik.cls – podręcznik w układzie poziomym (A4 landscape, 2 kolumny)
% Oparta na scrbook (KOMA-Script), wygląd zbliżony do klasy witten.
% Zgodna z poleceniami metadanych witten (\title[...]{}, \edition, \utitle ...),
% \maintoc, stylami stron fancy-chapter / fancy-pagenum i \artpage.
%------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{podrecznik}[2026/11/26 Podrecznik A4 poziomo (KOMA-Script)]

\RequirePackage{etoolbox}
\RequirePackage{xparse}

% --- opcje: rozmiar pisma, robocza/finalna ---------------------------------
\def\pdr@size{10pt}
\DeclareOption{10pt}{\def\pdr@size{10pt}}
\DeclareOption{11pt}{\def\pdr@size{11pt}}
\DeclareOption{12pt}{\def\pdr@size{12pt}}
\newif\ifpdr@draft \pdr@draftfalse
\DeclareOption{draft}{\pdr@drafttrue}
\DeclareOption{final}{\pdr@draftfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax

\LoadClass[
  paper=a4, paper=landscape, pagesize,
  twocolumn, twoside=false,
  fontsize=\pdr@size,
  open=any,                 % rozdział od dowolnej strony (jak witten)
  chapterprefix=true,       % „Rozdział N.” nad tytułem
  headings=small,
  parskip=half-,            % odstęp akapitowy zamiast wcięcia (jak parskip w witten)
  numbers=noenddot,
  toc=flat,
  captions=tableheading,
]{scrbook}

% --- metadane (jak w witten) ---------------------------------------------------
\DeclareDocumentCommand{\title}{om}{%
  \gdef\utitle{#2}\IfValueT{#1}{\gdef\ushorttitle{#1}}\gdef\@title{#2}}
\DeclareDocumentCommand{\author}{m}{\gdef\uauthor{#1}\gdef\@author{#1}}
\DeclareDocumentCommand{\date}{m}{\gdef\udate{#1}\gdef\@date{#1}}
\NewDocumentCommand{\affiliation}{m}{\gdef\uaffiliation{#1}}
\NewDocumentCommand{\isbn}{m}{\gdef\uisbn{#1}}
\NewDocumentCommand{\publisher}{m}{\gdef\upublisher{#1}}
\NewDocumentCommand{\edition}{m}{\gdef\uedition{#1}}
\NewDocumentCommand{\volume}{m}{\gdef\uvolume{#1}}
\NewDocumentCommand{\revision}{m}{\gdef\urevision{#1}}
\NewDocumentCommand{\website}{m}{\gdef\uwebsite{#1}}

% --- typografia ----------------------------------------------------------------
\RequirePackage{lmodern}
\RequirePackage{microtype}
\RequirePackage[defaultsans, scale=0.9]{lato}
\RequirePackage{changepage}

% --- kolory ------------------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{pdrdark}{RGB}{64,64,79}
\definecolor{pdraccent}{RGB}{0,72,140}    % granat zbliżony do okładki
\definecolor{trueblue}{RGB}{0,47,167}
\definecolor{crimson}{RGB}{211,0,63}
\definecolor{teal}{RGB}{0,128,128}

% --- układ strony ---------------------------------------------------------------
% Marginesy ok. 15 mm; kolumny rozdzielone 12 mm z cienką linią.
\RequirePackage{geometry}
\geometry{a4paper, landscape, includehead, nomarginpar, top=10mm, bottom=12mm,
  left=16mm, right=16mm, headheight=14pt, headsep=6mm, columnsep=12mm}
\setlength{\columnseprule}{0.3pt}
\providecommand{\columnseprulecolor}{}\renewcommand{\columnseprulecolor}{\color{black!25}}

% --- nagłówki i stopki (scrlayer-scrpage) ---------------------------------------
\RequirePackage[automark, headsepline=0.4pt]{scrlayer-scrpage}
\setkomafont{pageheadfoot}{\normalfont\sffamily\small\color{pdrdark}}
\setkomafont{pagenumber}{\normalfont\sffamily\small\bfseries}
\renewcommand*{\chaptermarkformat}{\thechapter.\enskip}
\renewcommand*{\sectionmarkformat}{\thesection\enskip}
\newpairofpagestyles{fancy-chapter}{%
  \ihead{\leftmark}\chead{}\ohead{\pagemark}\ifoot{}\cfoot{}\ofoot{}}
\newpairofpagestyles{fancy-pagenum}{%
  \ihead{}\chead{}\ohead{\pagemark}\ifoot{}\cfoot{}\ofoot{}}
\renewpairofpagestyles{scrheadings}{%
  \ihead{\leftmark}\chead{}\ohead{\pagemark}\ifoot{}\cfoot{}\ofoot{}}
\renewcommand*{\chapterpagestyle}{fancy-pagenum}
\renewcommand*{\partpagestyle}{empty}

% --- tytuły części, rozdziałów, sekcji --------------------------------------------
\addtokomafont{disposition}{\color{pdrdark}}
\setkomafont{part}{\sffamily\bfseries\fontsize{38}{42}\selectfont\color{pdraccent}}
\setkomafont{partnumber}{\sffamily\bfseries\LARGE\color{pdrdark}}
\setkomafont{chapterprefix}{\sffamily\bfseries\large\color{pdraccent}}
\setkomafont{chapter}{\sffamily\bfseries\huge}
\setkomafont{section}{\sffamily\bfseries\Large}
\setkomafont{subsection}{\sffamily\bfseries\large}
\setkomafont{subsubsection}{\sffamily\bfseries\normalsize}
\renewcommand*{\chapterformat}{\chapappifchapterprefix{\nobreakspace}\thechapter.\enskip}
% Nagłówek rozdziału w poprzek obu kolumn, zwarty (zamiast 7.5em pustego miejsca w witten)
\RedeclareSectionCommand[beforeskip=0pt, afterskip=1.8\baselineskip]{chapter}
\RedeclareSectionCommand[beforeskip=-1.4\baselineskip, afterskip=0.6\baselineskip]{section}
\RedeclareSectionCommand[beforeskip=-1\baselineskip, afterskip=0.4\baselineskip]{subsection}
% Linia pod tytułem rozdziału
\renewcommand*{\chapterlineswithprefixformat}[3]{%
  #2#3\par\nobreak\vspace{0.4\baselineskip}%
  {\color{pdraccent}\rule{\linewidth}{1.2pt}}\par}

% --- spis treści -----------------------------------------------------------------
% Spis treści w dwóch kolumnach (jak witten: \maintoc bez \onecolumn)
\NewDocumentCommand{\maintoc}{}{{\let\onecolumn\relax\tableofcontents}}
\RedeclareSectionCommand[tocentryformat=\sffamily\bfseries, tocpagenumberformat=\sffamily\bfseries]{chapter}
\RedeclareSectionCommand[tocentryformat=\sffamily\bfseries\large, tocpagenumberformat=\sffamily\bfseries\large]{part}

% --- podpisy -----------------------------------------------------------------------
\setkomafont{caption}{\small}
\setkomafont{captionlabel}{\small\bfseries\sffamily}
\setcapindent{0pt}
\renewcommand*{\captionformat}{~--~}

% --- listy, tabele -------------------------------------------------------------------
\RequirePackage{enumitem}
\setlist{itemsep=0.15\baselineskip, topsep=0.3\baselineskip}
\RequirePackage{booktabs,tabularx}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}

% --- ramki ------------------------------------------------------------------------------
\RequirePackage[most]{tcolorbox}
\newtcolorbox{textbox}[1][]{enhanced, breakable, colback=black!5, colframe=black!5,
  boxrule=0pt, arc=1mm, left=2mm, right=2mm, top=1.5mm, bottom=1.5mm, #1}
\newtcolorbox{uwaga}[1][Uwaga!]{enhanced, breakable, colback=red!5, colframe=crimson,
  fonttitle=\sffamily\bfseries, title=#1, arc=1mm, boxrule=0.6pt}

% --- strony specjalne ---------------------------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage{pdfpages}
% Okładka z pliku PDF ze spadami: \coverpage[spad]{plik}
% Spad jest obcinany, strona wypełnia A4 w poziomie co do milimetra.
\NewDocumentCommand{\coverpage}{O{3mm}m}{%
  \includepdf[pages=1, trim=#1 #1 #1 #1, clip, width=\paperwidth, height=\paperheight,
    noautoscale, offset=0 0]{#2}}
% Strona z grafiką (jak witten): \artpage[szerokość]{plik}[podpis]
\NewDocumentCommand{\artpage}{O{\linewidth}mo}{%
  \clearpage\thispagestyle{empty}\null\vfill
  {\centering\includegraphics[width=#1]{#2}\IfValueT{#3}{\par#3}\par}\vfill\null\clearpage}

% --- zakładki PDF ----------------------------------------------------------------------------
\AtEndPreamble{\RequirePackage{bookmark}}

% --- zachowanie części dokumentu (jak witten) --------------------------------------------------
\appto\frontmatter{\pagestyle{plain.scrheadings}}
\appto\mainmatter{\pagestyle{fancy-chapter}}
\appto\backmatter{\pagestyle{fancy-pagenum}}

\pagestyle{plain.scrheadings}
\endinput
