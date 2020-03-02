% !TEX encoding = UTF-8 Unicode
% !TEX TS-program = xelatex
% !BIB program = biber

% MIT License
%
% Copyright (c) 2019 Star Brilliant
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{wordfeel}[2019/07/23 A LaTeX template that mimics Microsoft Word's look and feel]

\newcommand{\wordfeel@resetsize}{}
\DeclareOption{10pt}{
    \PassOptionsToClass{\CurrentOption}{article}
    \renewcommand{\wordfeel@resetsize}{
        \renewcommand{\tiny}{\fontsize{5bp}{6.103515625bp}\selectfont}
        \renewcommand{\scriptsize}{\fontsize{6.5bp}{7.9345703125bp}\selectfont}
        \renewcommand{\footnotesize}{\fontsize{8bp}{9.765625bp}\selectfont}
        \renewcommand{\small}{\fontsize{9bp}{10.986328125bp}\selectfont}
        \renewcommand{\normalsize}{\fontsize{10bp}{12.20703125bp}\selectfont}
        \renewcommand{\large}{\fontsize{12bp}{14.6484375bp}\selectfont}
        \renewcommand{\Large}{\fontsize{14bp}{17.08984375bp}\selectfont}
        \renewcommand{\LARGE}{\fontsize{18bp}{21.97265625bp}\selectfont}
        \renewcommand{\huge}{\fontsize{20bp}{24.4140625bp}\selectfont}
        \renewcommand{\Huge}{\fontsize{24bp}{29.296875bp}\selectfont}
    }
}
\DeclareOption{11pt}{
    \PassOptionsToClass{\CurrentOption}{article}
    \renewcommand{\wordfeel@resetsize}{
        \renewcommand{\tiny}{\fontsize{6.5bp}{7.9345703125bp}\selectfont}
        \renewcommand{\scriptsize}{\fontsize{8bp}{9.765625bp}\selectfont}
        \renewcommand{\footnotesize}{\fontsize{9bp}{10.986328125bp}\selectfont}
        \renewcommand{\small}{\fontsize{10bp}{12.20703125bp}\selectfont}
        \renewcommand{\normalsize}{\fontsize{11bp}{13.427734375bp}\selectfont}
        \renewcommand{\large}{\fontsize{12bp}{14.6484375bp}\selectfont}
        \renewcommand{\Large}{\fontsize{14bp}{17.08984375bp}\selectfont}
        \renewcommand{\LARGE}{\fontsize{18bp}{21.97265625bp}\selectfont}
        \renewcommand{\huge}{\fontsize{20bp}{24.4140625bp}\selectfont}
        \renewcommand{\Huge}{\fontsize{24bp}{29.296875bp}\selectfont}
    }
}
\DeclareOption{12pt}{
    \PassOptionsToClass{\CurrentOption}{article}
    \renewcommand{\wordfeel@resetsize}{
        \renewcommand{\tiny}{\fontsize{6.5bp}{7.9345703125bp}\selectfont}
        \renewcommand{\scriptsize}{\fontsize{8bp}{9.765625bp}\selectfont}
        \renewcommand{\footnotesize}{\fontsize{10bp}{12.20703125bp}\selectfont}
        \renewcommand{\small}{\fontsize{11bp}{13.427734375bp}\selectfont}
        \renewcommand{\normalsize}{\fontsize{12bp}{14.6484375bp}\selectfont}
        \renewcommand{\large}{\fontsize{14bp}{17.08984375bp}\selectfont}
        \renewcommand{\Large}{\fontsize{18bp}{21.97265625bp}\selectfont}
        \renewcommand{\LARGE}{\fontsize{20bp}{24.4140625bp}\selectfont}
        \renewcommand{\huge}{\fontsize{24bp}{29.296875bp}\selectfont}
        \renewcommand{\Huge}{\fontsize{26bp}{31.73828125bp}\selectfont}
    }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{11pt}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage[no-math]{fontspec}
\RequirePackage{hyperref}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{unicode-math}
\RequirePackage{xcolor}

\hypersetup{unicode=true,hidelinks,linktoc=all}
\AtBeginDocument{\hypersetup{pdfinfo={Author={\@author},Title={\@title}}}}

\setlength{\topmargin}{-33.57421875bp}
\setlength{\headheight}{0pt}
\setlength{\headsep}{33.57421875bp}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-2in}
\setlength{\topskip}{0pt}
\setlength{\footskip}{32.77734375bp}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-2in}
\setlength{\columnsep}{0.5in}
\setlength{\parindent}{0pt}
\setlength{\parskip}{8bp}
\setlength{\smallskipamount}{4bp}
\setlength{\medskipamount}{8bp}
\setlength{\bigskipamount}{14bp}
\linespread{1.08}

\setromanfont{Cambria}[ItalicFont={* Italic},BoldFont={* Bold},BoldItalicFont={* Bold Italic}]
\setsansfont{Calibri}[ItalicFont={* Italic},BoldFont={* Bold},BoldItalicFont={* Bold Italic}]
\setmonofont{Consolas}[ItalicFont={* Italic},BoldFont={* Bold},BoldItalicFont={* Bold Italic},Scale=0.94721115537848606]
\newfontfamily\wordfeel@titlefamily{Calibri}[UprightFont={* Light},ItalicFont={* Light Italic},BoldFont={*},BoldItalicFont={* Italic}]
\newfontfamily\wordfeel@subtitlefamily{Calibri}[ItalicFont={* Italic},BoldFont={* Bold},BoldItalicFont={* Bold Italic},LetterSpace=6.818181818181818,Ligatures={NoCommon}]
\setmathfont{Cambria Math}
\renewcommand{\familydefault}{\sfdefault}
\wordfeel@resetsize

\renewcommand{\maketitle}{\begingroup\par\linespread{1}\setlength{\parindent}{0pt}\setlength{\parskip}{0pt}\wordfeel@titlefamily\fontsize{28bp}{34.1796875bp}\selectfont{\@title}\par\vspace{4.5654296875bp}\wordfeel@subtitlefamily\fontsize{11bp}{13.427734375bp}\selectfont\color[gray]{0.3515625}{\@author}\par{\@date}\par\endgroup}

\newlength{\wordfeel@flexboxlen}
\titleformat{\section}{\vspace{-1.3427734375bp}\vspace{\topskip}\vspace*{-\topskip}\ifdim\parskip>12bp\vspace{-12bp}\else\vspace{-\parskip}\fi\wordfeel@titlefamily\fontsize{16bp}{19.53125bp}\selectfont\color[RGB]{47,84,150}}{\settowidth\wordfeel@flexboxlen{{\thesection}\ }\ifdim\wordfeel@flexboxlen<0.3in\makebox[0.3in][l]{{\thesection}}\else{\thesection}\ \fi}{0pt}{}[\vspace{-\parskip}\vspace{1.3427734375bp}]
\titlespacing{\section}{0pt}{12bp}{0pt}
\titleformat{\subsection}{\vspace{-0.537109375bp}\vspace{\topskip}\vspace*{-\topskip}\ifdim\parskip>2bp\vspace{-2bp}\else\vspace{-\parskip}\fi\wordfeel@titlefamily\fontsize{13bp}{15.869140625bp}\selectfont\color[RGB]{47,84,150}}{\settowidth\wordfeel@flexboxlen{{\thesubsection}\ }\ifdim\wordfeel@flexboxlen<0.4in\makebox[0.4in][l]{{\thesubsection}}\else{\thesubsection}\ \fi}{0pt}{}[\vspace{-\parskip}\vspace{0.537109375bp}]
\titlespacing{\subsection}{0pt}{2bp}{0pt}
\titleformat{\subsubsection}{\vspace{-0.2685546875bp}\vspace{\topskip}\vspace*{-\topskip}\ifdim\parskip>2bp\vspace{-2bp}\else\vspace{-\parskip}\fi\wordfeel@titlefamily\fontsize{12bp}{14.6484375bp}\selectfont\color[RGB]{31,55,99}}{\settowidth\wordfeel@flexboxlen{{\thesubsubsection}\ }\ifdim\wordfeel@flexboxlen<0.5in\makebox[0.5in][l]{{\thesubsubsection}}\else{\thesubsubsection}\ \fi}{0pt}{}[\vspace{-\parskip}\vspace{0.2685546875bp}]
\titlespacing{\subsubsection}{0pt}{2bp}{0pt}

\newlength{\wordfeel@dotwidth}
\contentsmargin{0bp}
\titlecontents{section}[0em]{}{\settowidth\wordfeel@flexboxlen{{\thecontentslabel}\ }\ifdim\wordfeel@flexboxlen<2em\makebox[2em][l]{{\thecontentslabel}}\else{\thecontentslabel}\ \fi}{\hspace{2em}}{\settowidth\wordfeel@dotwidth{.}\titlerule*[\wordfeel@dotwidth]{.}\thecontentspage}[\vspace{-\parskip}\addvspace{5bp}]
\titlecontents{subsection}[1em]{}{\settowidth\wordfeel@flexboxlen{{\thecontentslabel}\ }\ifdim\wordfeel@flexboxlen<3em\makebox[3em][l]{{\thecontentslabel}}\else{\thecontentslabel}\ \fi}{\hspace{3em}}{\settowidth\wordfeel@dotwidth{.}\titlerule*[\wordfeel@dotwidth]{.}\thecontentspage}[\vspace{-\parskip}\addvspace{5bp}]
\titlecontents{subsubsection}[2em]{}{\settowidth\wordfeel@flexboxlen{{\thecontentslabel}\ }\ifdim\wordfeel@flexboxlen<4em\makebox[4em][l]{{\thecontentslabel}}\else{\thecontentslabel}\ \fi}{\hspace{4em}}{\settowidth\wordfeel@dotwidth{.}\titlerule*[\wordfeel@dotwidth]{.}\thecontentspage}[\vspace{-\parskip}\addvspace{5bp}]
