%============================================================================= 
% Classe rapport-suivi-LINA (bas\'ee sur la classe standard ``report'').
% Rapport de suivi de th\`eses au LINA
% Auteur : Jos\'e Martinez, bas\'e sur le rapport de recherche du LINA de Fr\'ed\'eric Goualard
%============================================================================= 
\def\REPORT@SUIVI@LINA@Version{1.0}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{rapport-suivi-LINA}[2006/09/06 rapport-suivi-LINA version \REPORT@SUIVI@LINA@Version]
\typeout{(c) 2009, Jos\'e Martinez, Laboratoire d'informatique de Nantes Atlantique}
\typeout{ }

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Gestion des options =
% D\'eclaration des options possibles
\DeclareOption{10pt}{\gdef\@pt@size{10pt}}
\DeclareOption{11pt}{\gdef\@pt@size{11pt}}
\DeclareOption{12pt}{\gdef\@pt@size{12pt}}

\ExecuteOptions{french,final,12pt}
\ProcessOptions\relax
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin gestion des options =

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Chargement de paquetages additionnels =
\PassOptionsToClass{\@pt@size,twoside,final,a4paper}{report}
\LoadClass{report}
\RequirePackage{color} % Attention : ne pas d\'eplacer l'appel pour charger 'color'
\RequirePackage{a4wide}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage[bookmarks,%
                urlcolor=blue,citecolor=blue,linkcolor=blue,%
                pagecolor=blue,%
                colorlinks,hyperfigures,pdfpagescrop={0 0 595 890}]{hyperref}
\usepackage{amsmath, amssymb, amsthm, amsfonts}
\RequirePackage[francais]{babel}
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< fin chargement de paquetages additionnels =

\newlength{\titlewidth}
\setlength{\titlewidth}{16cm}

\newcommand{\acknowledgementsname}{Remerciements}
\def\proofname{D\'emonstration}
\newcommand{\rapportname}{Rapport d'avancement de th\`ese}
\newcommand{\supervisedname}{encadr\'e par}
\AtBeginDocument{%
  \def\today{\ifcase\month\or
    janvier\or f\'evrier\or mars\or avril\or mai\or juin\or
    juillet\or août\or septembre\or octobre\or novembre\or d\'ecembre\fi
    ~\number\year}
  \def\abstractname{R\'esum\'e}
  \renewcommand{\refname}{R\'ef\'erences}
  \newcommand{\surname}[1]{\textsc{#1}}
  \newcommand{\categoryname}{Cat\'egories et descripteurs de sujets~:}
  \newcommand{\termsname}{Termes g\'en\'eraux~:}
  \newcommand{\keywordsname}{Mots-cl\'es additionnels et phrases~:}}
\newcommand{\BibNameFmt}{\sc}
\newcommand{\EndBibNameFmt}{\rm}
\newcommand{\andMacro}{et}
\newcommand{\editorsMacro}{r\'eds.}
\newcommand{\editorMacro}{r\'ed.}
\newcommand{\editionMacro}{\'edition}
\newcommand{\chapterMacro}{chapitre}
\newcommand{\trMacro}{Rapport technique}
\newcommand{\ofMacro}{de}
\newcommand{\thesisMacro}{Th\`ese de doctorat}
\newcommand{\toappearMacro}{\`A para\^\i{}tre}
\newcommand{\janMacro}{janvier }
\newcommand{\febMacro}{f\'evrier }
\newcommand{\marMacro}{mars }
\newcommand{\aprMacro}{avril }
\newcommand{\mayMacro}{mai }
\newcommand{\junMacro}{juin }
\newcommand{\julMacro}{juillet }
\newcommand{\augMacro}{ao\^ut }
\newcommand{\sepMacro}{septembre }
\newcommand{\octMacro}{octobre }
\newcommand{\novMacro}{novembre }
\newcommand{\decMacro}{d\'ecembre }
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin customisations suivant la langue =


%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Champs d'identification =
\def\@titre{+}
\def\@titre{\ClassError{rapport-suivi-LINA}
                       {titre manquant}
                       {Indiquez-le avec la macro \string\titre}}
\def\titre#1{\gdef\@titre{#1}%
  \if\@titre+ \gdef\@titre{#1}\fi}

\def\@soustitre{+}
\newcommand{\soustitre}[1]{\gdef\@soustitre{#1}}

\def\@nomdoctorant{\ClassError{rapport-suivi-LINA}
                              {nom du doctorant manquant}
                              {Indiquez-le avec la macro \string\nomdoctorant}}
\newcommand{\nomdoctorant}[1]{\gdef\@nomdoctorant{#1}}

\def\@prenomdoctorant{\ClassError{rapport-suivi-LINA}
                                 {prenom du doctorant manquant}
                                 {Indiquez-le la macro \string\prenomdoctorant}}
\newcommand{\prenomdoctorant}[1]{\gdef\@prenomdoctorant{#1}}

\def\@datenaissance{}
\newcommand{\datenaissance}[1]{\gdef\@datenaissance{#1}}

\def\@equipe{\ClassError{rapport-suivi-LINA}
                        {equipe manquante}
                        {Indiquez-la avec la macro \string\equipe}}
\newcommand{\equipe}[1]{\gdef\@equipe{#1}}

\def\@courriel{\ClassError{rapport-suivi-LINA}
                          {courriel manquant}
                          {Indiquez-le avec la macro \string\courriel}}
\newcommand{\courriel}[1]{\gdef\@courriel{#1}}

\def\@telephone{\ClassError{rapport-suivi-LINA}
                           {telephone(s) manquant(s)}
                           {Indiquez-le(s) avec la macro \string\telephone}}
\newcommand{\telephone}[1]{\gdef\@telephone{#1}}

\def\@telecopie{}
\newcommand{\telecopie}[1]{\gdef\@telecopie{#1}}

\def\@nomdirecteur{\ClassError{rapport-suivi-LINA}
                              {nom du directeur manquant}
                              {Indiquez-le avec la macro \string\nomdirecteur}}
\newcommand{\nomdirecteur}[1]{\gdef\@nomdirecteur{#1}}

\def\@prenomdirecteur{\ClassError{rapport-suivi-LINA}
                                 {prenom du directeur manquant}
                                 {Indiquez-le avec la macro \string\prenomdirecteur}}
\newcommand{\prenomdirecteur}[1]{\gdef\@prenomdirecteur{#1}}

\def\@tauxdirecteur{\ClassError{rapport-suivi-LINA}
                               {taux d'encadrement du directeur manquant}
                               {Indiquez-le avec la macro \string\tauxdirecteur}}
\newcommand{\tauxdirecteur}[1]{\gdef\@tauxdirecteur{#1}}

\def\@nomcodirecteur{+}
\newcommand{\nomcodirecteur}[1]{\gdef\@nomcodirecteur{#1}}

\def\@prenomcodirecteur{+}
\newcommand{\prenomcodirecteur}[1]{\gdef\@prenomcodirecteur{#1}}

\def\@tauxcodirecteur{0}
\newcommand{\tauxcodirecteur}[1]{\gdef\@tauxcodirecteur{#1}}

\def\@equipecodirecteur{+}
\newcommand{\equipecodirecteur}[1]{\gdef\@equipecodirecteur{#1}}

\def\@nomcoencadrant{+}
\newcommand{\nomcoencadrant}[1]{\gdef\@nomcoencadrant{#1}}

\def\@prenomcoencadrant{+}
\newcommand{\prenomcoencadrant}[1]{\gdef\@prenomcoencadrant{#1}}

\def\@tauxcoencadrant{0}
\newcommand{\tauxcoencadrant}[1]{\gdef\@tauxcoencadrant{#1}}

\def\@equipecoencadrant{+}
\newcommand{\equipecoencadrant}[1]{\gdef\@equipecoencadrant{#1}}

\def\@nomautrecoencadrant{+}
\newcommand{\nomautrecoencadrant}[1]{\gdef\@nomautrecoencadrant{#1}}

\def\@prenomautrecoencadrant{+}
\newcommand{\prenomautrecoencadrant}[1]{\gdef\@prenomautrecoencadrant{#1}}

\def\@tauxautrecoencadrant{0}
\newcommand{\tauxautrecoencadrant}[1]{\gdef\@tauxautrecoencadrant{#1}}

\def\@equipeautrecoencadrant{+}
\newcommand{\equipeautrecoencadrant}[1]{\gdef\@equipeautrecoencadrant{#1}}

\def\@bourse{\ClassError{rapport-suivi-LINA}
                        {type de financement manquant}
                        {Indiquez-le avec la macro \string\bourse}}
\newcommand{\bourse}[1]{\gdef\@bourse{#1}}
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin champs d'identification =

\renewcommand{\maketitle}{%
  \pagestyle{empty}
  \begin{titlepage}
    \centering
      {\Large\bfseries\textsc{\rapportname}\par}

      \vfill
      
      {\usefont{T1}{ptm}{b}{n}\fontsize{35pt}{37pt}\selectfont\@titre\par}
      \if\@soustitre+
      	\relax
      \else 
        \vspace{.4cm}
        {\usefont{T1}{ptm}{b}{sl}\fontsize{22pt}{23pt}\selectfont\@soustitre\par}
      \fi
      
      \vspace*{1cm}
      
      {\LARGE\bfseries\@prenomdoctorant\space\textsc{\@nomdoctorant}\par}
      
      \vspace*{1cm}

      {\large\bfseries \@date\par}

      \vfill

     {\Large \textsc{Laboratoire d'Informatique de Nantes-Atlantique}\par UMR 6241\par}

      \vspace*{1cm}

     {\includegraphics[width=0.5\textwidth]{logos/LINA}}

      \vfill

     {\Large \textsc{\'Ecole doctorale STIM}\par}
     {<< Sciences et technologies de l'information et des mathématiques >>\par}
     {\Large n. 503\par}
     
      \vspace*{1cm}

     {\includegraphics[width=0.3\textwidth]{logos/EDSTIM}}
     

      \vfill

      \framebox{
      \begin{tabular}{cccc}
     		\begin{minipage}[c]{2.5cm}
	        \includegraphics[width=2.5cm]{logos/UnivNantes}
     		\end{minipage}
        &
     		\begin{minipage}[c]{4.2cm}
      	  \includegraphics[width=4.2cm]{logos/PolytechNantes}
     		\end{minipage}
        &
     		\begin{minipage}[c]{3cm}
   	     \includegraphics[width=3cm]{logos/EMN}
     		\end{minipage}
        &
     		\begin{minipage}[c]{1.5cm}
	        \includegraphics[width=1.5cm]{logos/CNRS}
     		\end{minipage}
      \end{tabular}}
  \end{titlepage}
 
	\hrule
		\begin{center}
			\textbf{IMPORTANT}
		\end{center}
	\hrule
	
	\bigskip
	
	\emph{Ce document de synth\`ese de l'ann\'ee \'ecoul\'ee est \`a transmettre \`a la Direction du laboratoire, aux encadrants et aux membres du comité de suivi.}
	
	
	\bigskip
	
	\emph{Cette fiche sera transmise \`a l'\'ecole doctorale (ED) qu'en cas de difficult\'e constat\'ee, l'ED \'etant alors tenue de diligenter une enquête pour prendre une d\'ecision quant à l'inscription en ann\'ee sup\'erieure.}
	
	\pagestyle{plain}
	\tableofcontents
	\clearpage
	
	
%  % Troisi\`eme page : rappel de titre + auteurs + r\'esum\'e 
%  %                  + classification + mots-cl\'es
%   \begin{center}
%     {\def\\{\par\vspace{.3em}}\huge\selectfont\bfseries\@titre}\par
%     \if\@soustitre+
%     \else
%       \vspace{.4cm}
%       {\Large\bfseries\@soustitre}\par
%     \fi
%     \vspace{1cm}
%     {\def\inst##1{}\@author}\par
%   \end{center}
%  \vspace{2cm}
%  \unvcopy\@abstractBoxGlobal\par
%  \vspace{1cm}
%  \unvcopy\@classificationBoxGlobal
%  \cleardoublepage
  
\chapter{Identification}
  
\section{Sujet et financement}

\noindent Titre : \emph{<< \@titre\ >>}\par
%\if\@soustitre+
%\else
%	\noindent Sous-titre : \emph{<< \@soustitre\ >>}}\par
%\fi
%\ifthenelse{\equal{\@soustitre}{+}}
%	{}
%	{\noindent Sous-titre : \emph{<< \@soustitre\ >>}}\par}

\bigskip

\noindent Bourse : \@bourse\par

\section{Doctorant}

%%%%%%%%%%%%%
% doctorant %
%%%%%%%%%%%%%
\noindent \textsc{Nom}, pr\'enom : \textsc{\@nomdoctorant}, \@prenomdoctorant\par
\ifthenelse{\equal{\@datenaissance}{}}
	{}
	{\noindent Date de naissance : \@datenaissance\par}

\bigskip

\noindent Courriel : \@courriel\par
\noindent T\'el\'ephone : \@telephone\par
\ifthenelse{\equal{\@telecopie}{}}
	{}
	{\noindent T\'el\'ecopie : \@telecopie\par}


\section{Encadrement}

\noindent \'Equipe d'accueil : << \@equipe\ >>\par

\bigskip

\newcounter{nombre@encadrants}
\newcounter{taux@encadrement@total}

\noindent Directeur de th\`ese : \textsc{\@nomdirecteur}, \@prenomdirecteur\space(\`a \@tauxdirecteur~\%)\par

\stepcounter{nombre@encadrants}
\ifthenelse{\@tauxdirecteur<40}
	{\textcolor{red}{LE TAUX D'ENCADREMENT DU DIRECTEUR DE THESE NE PEUT PAS ETRE INFERIEUR A 40~\%}\par}
	{\addtocounter{taux@encadrement@total}{\@tauxdirecteur}}

\if\@nomcodirecteur+
\else
	\noindent Co-directeur de th\`ese : \textsc{\@nomcodirecteur}, \@prenomcodirecteur\space(\`a \@tauxcodirecteur~\%)
	\if\@equipecodirecteur+
	\else
		, \'equipe << \equipecodirecteur >>
	\fi
	\par
	\stepcounter{nombre@encadrants}
	\ifthenelse{\@tauxcodirecteur<40}
		{\textcolor{red}{LE TAUX D'ENCADREMENT DU CO-DIRECTEUR DE THESE NE PEUT PAS ETRE INFERIEUR A 40~\%}\par}
		{\addtocounter{taux@encadrement@total}{\@tauxcodirecteur}}
\fi
	
\medskip

\if\@nomcoencadrant+
\else
	\noindent Co-encadrant : \textsc{\@nomcoencadrant}, \@prenomcoencadrant\space(\`a \@tauxcoencadrant~\%)
	\if\@equipecoencadrant+
	\else
		, \'equipe << \@equipecoencadrant >>
	\fi
	\par
	\stepcounter{nombre@encadrants}
	\ifthenelse{\@tauxcoencadrant=0}
		{\textcolor{red}{LE TAUX D'ENCADREMENT NE PEUT ÊTRE NUL...}\par}
		{\addtocounter{taux@encadrement@total}{\@tauxcoencadrant}}
\fi

\if\@nomautrecoencadrant+
\else
	\noindent Co-encadrant : \textsc{\@nomautrecoencadrant}, \@prenomautrecoencadrant\space(\`a \@tauxautrecoencadrant~\%)
	\ifthenelse{\equal{equipeautrecoencadrant}{+}}
	{}
	{, \'equipe << \@equipeautrecoencadrant\ >>}
	\par
	\stepcounter{nombre@encadrants}
	\ifthenelse{\@tauxautrecoencadrant=0}
		{\textcolor{red}{LE TAUX D'ENCADREMENT NE PEUT ÊTRE NUL...}\par}
		{\addtocounter{taux@encadrement@total}{\@tauxautrecoencadrant}}
\fi

\ifthenelse{\arabic{nombre@encadrants}>3}
	{\textcolor{red}{LE NOMBRE D'ENCADRANTS NE PEUT EXCEDER TROIS...}\par}
	{}
\ifthenelse{\arabic{taux@encadrement@total}=100}
	{}
	{\textcolor{red}{LA SOMME DES TAUX D'ENCADREMENT DOIT ÊTRE EGALE A 100~\%...}\par}
} % \maketitle

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Quatri\`eme de couverture =

%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Fin quatri\`eme de couverture =

\newsavebox{\@abstractBox}
\newbox{\@abstractBoxGlobal}
\renewenvironment{abstract}{%
  \begin{lrbox}{\@abstractBox}%
    \begin{minipage}{\textwidth}
    \begin{center}
      \bfseries \abstractname
    \end{center}
    }{\end{minipage}\end{lrbox}%
    \global\setbox\@abstractBoxGlobal=\vbox{\copy\@abstractBox}}

% Cat\'egories ACM
\newsavebox{\@classificationBox}
\newbox{\@classificationBoxGlobal}
\newenvironment{classification}{%
  \begin{lrbox}{\@classificationBox}%
    \begin{minipage}{\textwidth}}{%
      % La partie ci-dessous est reprise de esub2acm.
            \ifx\@categories\@empty \else
                \vskip 4\p@\relax 
                \def\and{\unskip{\rm;} }%
                \categoryname\ \@categories\par
            \fi
            \ifx\@terms\@empty\else
                \vskip 4\p@
                \termsname\ \ignorespaces
                \@terms
                \par
            \fi
            \ifx\@keywords\@empty\else
                \vskip 4\p@
                \keywordsname\ \ignorespaces
                \@keywords
                \par
            \fi
      \end{minipage}\end{lrbox}
    \global\setbox\@classificationBoxGlobal=\vbox{\copy\@classificationBox}}
% Ci-dessous: code repris de esub2acm.cls
\def\terms{\gdef\@terms}
\let\@terms\@empty
\def\keywords{\gdef\@keywords}
\let\@keywords\@empty
\def\category#1#2#3{%
    \@ifnextchar [{\@category{#1}{#2}{#3}}{\@category{#1}{#2}{#3}[]}%
}
\def\@category#1#2#3[#4]{%
    \edef\@tempa{\ifx \@categories\@empty \else ; \fi}%
    \begingroup
        \def\protect{\noexpand\protect\noexpand}%
        \let\and\relax
        \xdef\@categories{%
            \@categories
            \@tempa
            #1 [{\bf #2}]%
            \if!#4!%
                \if!#3!\else : #3\fi
            \else
                :\space
                \if!#3!\else #3\kern\z@---\hskip\z@\fi
                {\it #4}%
            \fi
        }%
    \endgroup
}

\let\@categories\@empty


\def\cleardoublepage{\clearpage\thispagestyle{empty}%
  \ifodd\c@page\else
    \hbox{}\newpage\thispagestyle{empty}\if@twocolumn\hbox{}\newpage\fi\fi}

% Environnement de remerciements.
\newenvironment{acknowledgements}{\section*{\acknowledgementsname}}{\par}

\newenvironment{modules}[1]
	{
	Les modules #1 validés à cette date auprès de l'ED STIM sont indiqués sur le tableau~\ref{tab:Modules#1}.
	
	\begin{table}[p]
		\caption{Modules #1 validés}
		\label{tab:Modules#1}
		\begin{center}
			\begin{tabular}{|c|l|}
				\hline
				Code ED  & \multicolumn{1}{|c|}{Intitulé}\\
				(ou eq.) &\\
				\hline
				\hline
	}
	{
				\hline
			\end{tabular}
		\end{center}
	\end{table}
	}
\newcommand{\module}[2]{\hline #1 & #2\\}	

\newcounter{total@enseignement}

\newenvironment{enseignements}
	{
	Les enseignements dispensés à cette date auprès des étudiants sont indiqués sur le tableau~\ref{tab:Enseignements}.
	
	\begin{table}[p]
		\caption{Enseignements dispensés}
		\label{tab:Enseignements}
		\begin{center}
			\begin{tabular}{|l|c|c|c|l|}
				\hline
				\multicolumn{1}{|c|}{Intitulé}  & Nature & Volume   & Niveau & \multicolumn{1}{|c|}{Formation}\\
				          &        & (eq. TD) & & \\
				\hline
				\hline
	}
	{
				\hline
				\hline
				$\Sigma$ &         &  \arabic{total@enseignement}   & & \\
				\hline
			\end{tabular}
		\end{center}
	\end{table}
	}
\newcommand{\enseignement}[5]
	{%
	\hline #1 & #2 & #3{\addtocounter{total@enseignement}{#3}} & #4 & #5\\%
	}	

\bibliographystyle{frplainnat}

\endinput


%%% Local Variables: 
%%% mode: latex
%%% TeX-master: t
%%% End: 
