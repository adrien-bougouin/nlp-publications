%==========================================================================================
% Mod`ele de th`ese du PRES L'UNAM
% (`a l'exclusion des th`ese d'exercice en m'edecine, pharmacie ou v'et'erinariat'...)
%==========================================================================================
% v. 1.0 : 9 mai 2012
%   - cr'eation de la classe
% v. 1.1 : 8 juin 2012
%   - l'eger d'ecalage vers le haut du titre
%   - ajout d'un style pour les parties (en plus des chapitres)
% v. 1.1.1 : 7 août 2012
%   - correction de la civilit'e du co-directeur de th`ese (par Flavien QUESNEL)
% v. 1.2 : 4 octobre 2012
%   - protection des pages de couverture vis-`a-vis des changements d'interlignes
%   - indications suppl'ementaires dans le fichier mod`ele
%   - ajout du logo d'une universit'e 'etrang`ere pour les co-tutelles et/ou
%     d'un 'etablissement associ'e
% v. 1.3 : 19 octobre 2012
%   - passage en petites majuscules du nom du candidat 'egalement,
%     obligation l'egale pour 'eviter les erreurs d'interpr'etation
%   - ajout des titres et sous-titres en anglais
%   - bascule automatique en mode anglais pour le r'esum'e et les mots cl'es...
%     anglais
%   - indications suppl'ementaires dans le fichier mod`ele
% v. 1.4 : 12 d'ecembre 2012
%   - changement pour le nom officiel de l'Ecole des mines de Nantes
%   - fins changements d'interlignage suite au changement de nom
%   - passage en UTF-8 des textes produits par la classe
%   - ajout d'un fichier mod`ele en UTF-8
%   - une sp'ecialit'e absente supprime totalement le champ correspondant
%     (c'est-`a-dire le titre et pas seulement l'indication)
% v. 1.5 : 21 janvier 2013
%   - titre anglais rendu obligatoire
%   - protection de la police de caract`eres utilis'ee pour les 1re et 4e de
%     couvertures, `a savoir 'times'.
% v. 1.6 : 26 mars 2013
%   - nom de l'ED mis en toutes lettres dans le fichier mod`ele
%   - alignement `a gauche du titre (et sous-titre) anglais sur la 4e de couverture
%   - protection des 1re et 4e de couverture quant au choix de la taille de la
%     police de caract`eres : 12pt impos'e
%   - correction d'un l'eger d'efaut d'alignement des logos entre la 1re et la 4e
%     de couverture
%   - centrage du jury pour 'eviter un trop grand d'ecalage quand l'option
%     nosqueezeCommittee est utilisable
%   - prise en compte du fait que le directeur de th`ese (directeur de co-tutelle,
%     co-directeur) et m^eme les rapporteurs peuvent NE PAS ^etre membres du jury
%   - meilleure prise en compte des co-tutelles avec changement des noms des
%     commandes et alignement des deux titres de docteur
%   - r'eduction du nombre d'invit'es à deux au maximum (cf. module JURY de
%     LUNAM DOCTEUR)
%   - Prise en compte de la validation par le CA du PRES en date du 22 f'evrier 2013.
%      - num'ero de th`ese rendu optionnel
%      - Changement d'ordre dans les rubriques 'Ecole doctorale', 'Discipline',
%        'Sp'ecialit'e', 'Laboratoire', 'Date de soutenance' et 'N. de th`ese'.
%      - L'intitul'e 'Laboratoire' devient 'Unit'e de recherche'
%      - Elimination des italiques sur 'Discipline', 'Sp'ecialit'e' et
%        'Unit'e de recherche'.
%      - Ajout de la section CNU, obligatoire
%      - Ajout d'Oniris et d'Agrocampus Ouest en tant qu''etablissements d'elivrant
%        un doctorat du PRES LUNAM (et de leur logo vectoriel).
%      - Correction des intitul'es officiels
%      - Contr^ole de l'alignement de leurs titre officiel, tr`es long, sous le mot
%        'Docteur'.
% v. 1.7 : 10 avril 2013
%   - "Refactoring" de code suite `a une erreur d'etect'ee sur la th`ese de Mme C'eline Sarazin,
%     ainsi que quelques conseils ajout'es dans le mod`ele.
%   - Limitation du nombre d'invit'es `a deux (cf. module JURY de LUNAM DOCTEUR).
%   - Accord en genre ajout'e pour les invit'es (mais pas encore pour les examinateurs).
%   - Ajout d'un co-directeur de co-tutelle par anticipation (cf. fiche d'inscription
%     de la rentr'ee 2013-2014).
%   - Meilleur contr^ole sur les polices des couvertures, les commandes standard
%     LaTeX se r'ef'erant `a la taille d'eclar'ee dans "\begindocument" et non `a la
%     derni`ere fix'ee par "\fontsize".
%   - Suppression de l'option "squeezeCommittee", la largeur du jury s'adaptant
%     automatiquement. (Suggestion faite par Julien TANGUY `a JDOC 2013.)
%   - Mise en couleur des chapitres "'etoil'es" quand l'option
%     'fancyChapter' est activ'ee (par Flavien QUESNEL)
% v. 1.8 : 21 juin 2013
%   - Changement du logo et de l'appellation usuelle de l''Ecole des mines de Nantes en "Mines Nantes".
%     L'ancienne version est n'eanmoins conserv'ee pour les r'eimpressions.
%   - Ajout du label européen
% v. 1.9 : 9 juillet 2013
%   - Tr`es l'eger agrandissement du logo de l'Oniris.
%   - Correction d'un d'ecalage sur le premier groupe de membre du jury lorsque le
%     pr'esident n'est pas encore connu.
%   - Ajout d'un mod`ele .docx en parall`ele (par Anthony Goupil, scolarité ECN).
% v 1.10 : 2 septembre 2013
%   - Ajout d'un paramètre 'greyCover' afin de générer des couvertures en niveau de gris
%     (hors logo des établissements) afin de permettre (peut-être) des impressions de meilleur
%     rendu sur des imprimantes en niveaux de gris.
% v 1.11 : 23 janvier 2014
%   - Remplacement du logo de l'ex PRES par CUE

%%%%%%%%%%   DECLARATION DE LA CLASSE   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\THESE@LUNAM@version{1.10}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{these-LUNAM}[2013/07/09 these-LUNAM version \THESE@LUNAM@version]
\typeout{(c) 2012-2013 Jos'e Martinez, provided ``as is''}
\typeout{ }

%%%%%%%%%%   PARAMETRES DE LA CLASSE   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% english, francais
% draft, final
% squeezeCommitte, nosqueezeCommittee
% fancyChapter, nofancyChapter
% fancyPart, nofancyPart
% 10pt, 11pt, 12pt
%
% par d'efaut : francais, final, 12pt, fancyChapter, fancyPart, nosqueezeCommittee

\newif\if@inEnglish
\DeclareOption{english}{\@inEnglishtrue}
\DeclareOption{francais}{\@inEnglishfalse}

\newif\if@inDraftMode
\DeclareOption{draft}{\@inDraftModetrue}
\DeclareOption{final}{\@inDraftModefalse}

\newif\if@squeezeCommittee
\DeclareOption{squeezeCommittee}{\@squeezeCommitteetrue}
\DeclareOption{nosqueezeCommittee}{\@squeezeCommitteefalse}

\newif\if@fancyChapter
\DeclareOption{fancyChapter}{\@fancyChaptertrue}
\DeclareOption{nofancyChapter}{\@fancyChapterfalse}

\newif\if@fancyPart
\DeclareOption{fancyPart}{\@fancyParttrue}
\DeclareOption{nofancyPart}{\@fancyPartfalse}

\newif\if@greyCover
\DeclareOption{greyCover}{\@greyCovertrue}
\DeclareOption{nogreyCover}{\@greyCoverfalse}

\DeclareOption{10pt}{\gdef\@pt@size{10pt}}
\DeclareOption{11pt}{\gdef\@pt@size{11pt}}
\DeclareOption{12pt}{\gdef\@pt@size{12pt}}

\ExecuteOptions{version, francais, final, 12pt, fancyChapter, fancyPart, nosqueezeCommittee}
\ProcessOptions\relax

%%%%%%%%%%   CHARGEMENT DE PAQUETAGES   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\if@inDraftMode
   \PassOptionsToClass{\@pt@size, twoside, draft}{book}
\else
   \PassOptionsToClass{\@pt@size, twoside, final}{book}
\fi
\LoadClass{book}

\RequirePackage{amsmath}
\RequirePackage{xcolor}
   \if@greyCover
      \definecolor{@doctoratcolor}{RGB}{0, 0, 0}
      \definecolor{@verticalgreen}{RGB}{238, 238, 238}
      \definecolor{@horizontalgray}{RGB}{248, 248, 248}
      \definecolor{@textgray}{RGB}{0, 0, 0}
      \definecolor{@bandeaucolor}{RGB}{224, 224, 224}
      \definecolor{@titlecolor}{RGB}{0, 0, 0}
   \else
      \definecolor{@doctoratcolor}{RGB}{255, 50, 10}
      \definecolor{@verticalgreen}{RGB}{236, 240, 223}
      \definecolor{@horizontalgray}{gray}{0.97265}
      \definecolor{@textgray}{gray}{0.5}
      \definecolor{@bandeaucolor}{RGB}{200, 200, 60}
      \definecolor{@titlecolor}{RGB}{49, 132, 155}
   \fi
\RequirePackage{graphicx}
\RequirePackage[a4paper]{geometry}
\RequirePackage{ifthen}
\RequirePackage[english,french]{babel}
\RequirePackage{setspace}
\RequirePackage{times} % police de caract`eres des 1re et 4e de couverture
\if@inEnglish
   \AtBeginDocument{\selectlanguage{english}}
\else
   \AtBeginDocument{\selectlanguage{french}}
\fi

%%%%%%%%%%   TRADUCTIONS FRANCAISES ET ANGLAISES   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\if@inEnglish
   \newcommand{\acknowledgementsname}{Acknowledgements}
   \AtBeginDocument{%
      \def\today{\ifcase\month\or
      January\or February\or March\or April\or May\or June\or
      July\or August\or September\or October\or November\or December\fi
      ~\number\year}
      \renewcommand{\refname}{References}

   \newcommand{\BibNameFmt}{\rm}
   \newcommand{\EndBibNameFmt}{\rm}
   \newcommand{\andMacro}{and}
   \newcommand{\editorsMacro}{eds.}
   \newcommand{\editorMacro}{ed.}
   \newcommand{\editionMacro}{edition}
   \newcommand{\chapterMacro}{chapter}
   \newcommand{\trMacro}{Technical report}
   \newcommand{\ofMacro}{of}
   \newcommand{\thesisMacro}{Doctoral thesis}
   \newcommand{\toappearMacro}{To appear}

   \newcommand{\janMacro}{January }
   \newcommand{\febMacro}{February }
   \newcommand{\marMacro}{March }
   \newcommand{\aprMacro}{April }
   \newcommand{\mayMacro}{May }
   \newcommand{\junMacro}{June }
   \newcommand{\julMacro}{July }
   \newcommand{\augMacro}{August }
   \newcommand{\sepMacro}{September }
   \newcommand{\octMacro}{October }
   \newcommand{\novMacro}{November }
   \newcommand{\decMacro}{December }
   }
\else
   \newcommand{\acknowledgementsname}{Remerciements}
   \AtBeginDocument{%
   \def\today{\ifcase\month\or
    janvier\or f\'evrier\or mars\or avril\or mai\or juin\or
    juillet\or ao\^ut\or septembre\or octobre\or novembre\or d\'ecembre\fi
    ~\number\year}
   \renewcommand{\refname}{R\'ef\'erences}

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
   \newcommand{\toappearMacro}{\`A para\^{i}tre}

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
   }
\fi

%%%%%%%%%%   CHAMPS SPECIFIQUES   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% - Titre, sous-titre
% - Title, subtitle
% - Auteur
% - Directeur de th`ese, co-directeur, directeur de co-tutelle
% - Rapporteurs, examinateurs, invit'es
% - Discipline, section CNU, sp'ecialit'e
% - Laboratoire, Institution, Co-institution, Institution de co-tutelle
% - Num'ero de th`ese, 'Ecole doctorale

%%%%%%%%%%%%%%%%%%%%
% Titre en franc,ais
%

\global\let\@titre\@empty
\def\titre#1{%
   \ifx\@titre\@empty
      \gdef\@titre{#1}
   \else
      \gdef\@titre{\textcolor{red}{Titre d\'efini plusieur fois}}
      \ClassError{these-LUNAM}
                 {Titre de la th`ese d'ej`a d'efini / Thesis title in french already defined}
                 {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Sous-titre en franc,ais
%

\global\let\@soustitre\@empty
\def\soustitre#1{%
   \ifx\@soustitre\@empty
      \gdef\@soustitre{#1}
   \else
      \gdef\@soustitre{\textcolor{red}{Sous-titre d'efini plusieur fois}}
      \ClassError{these-LUNAM}
                 {Sous-titre de la th`ese d'ej`a d'efini / Thesis subtitle in french already defined}
                 {}
   \fi}

%%%%%%%%%%%%%%%%%%%
% Titre en anglais
%

\global\let\@title\@empty
\def\title#1{%
   \ifx\@title\@empty
      \gdef\@title{#1}
   \else
      \gdef\@title{\textcolor{red}{Title defined several times}}
      \ClassError{these-LUNAM}
                 {Titre anglais de la th`ese d'ej`a d'efini / Thesis title already defined}
                 {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%
% Sous-titre en anglais
%

\global\let\@subtitle\@empty
\def\subtitle#1{%
   \ifx\@subtitle\@empty
      \gdef\@subtitle{#1}
   \else
      \gdef\@subtitle{\textcolor{red}{Sub-title defined several times}}
      \ClassError{these-LUNAM}
                 {Sous-titre anglais de la th`ese d'ej`a d'efini / Thesis subtitle already defined}
                 {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%
% Auteur de la th`ese
%

\global\let\@author\@empty
\def\author#1#2#3{%
   \ifx\@author\@empty
      \gdef\@author{#2 \textsc{#3}}
   \else
      \gdef\@author{\textcolor{red}{Auteur d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Auteur d'ej`a d'efini / Author  already defined}
                 {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reconnaissance et mise en forme d'une civilit'e
%

\newif\if@lastcivilitemale   % variables globales positionn'ees par "effet de bord" par \@civilitegender
\newif\if@lastcivilitefemale

\newcommand{\@civilitegender}[1]
   {\ifthenelse{\equal{#1}{M.}}
      {\@lastcivilitemaletrue
       \@lastcivilitefemalefalse}
   {\ifthenelse{\equal{#1}{Monsieur}}
      {\@lastcivilitemaletrue
       \@lastcivilitefemalefalse}
   {\ifthenelse{\equal{#1}{Mme}}
      {\@lastcivilitemalefalse
       \@lastcivilitefemaletrue}
   {\ifthenelse{\equal{#1}{Madame}}
      {\@lastcivilitemalefalse
       \@lastcivilitefemaletrue}
      {\@lastcivilitemalefalse
       \@lastcivilitefemalefalse
       \ClassError{these-LUNAM}
                  {Une civilit'e doit ^etre Mme / Madame, pour une femme, ou M. / Monsieur, pour un homme / A title must be Mme/Madame -- i.e., Ms --, for a woman, or M./Monsieur -- i.e., Mr. --, for a man}%
                  {}}}}}}

\newcommand{\@formatcivilite}[1]
   {\ifthenelse{\equal{#1}{M.}}%
      {M.}%
   {\ifthenelse{\equal{#1}{Monsieur}}%
      {M.}%
   {\ifthenelse{\equal{#1}{Mme}}%
      {M$^{\text{me}}$}%
   {\ifthenelse{\equal{#1}{Madame}}%
      {M$^{\text{me}}$}%
      {\textcolor{red}{M. / M$^{\text{me}}$}}}}}}

%\renewcommand{\@formatcivilite}[1]{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nombre de personnes dans le jury de th`ese, voire `a l'ext'erieur du jury
%

\global\newcount\@defensecommitteesize
\@defensecommitteesize 0\relax

\newif\if@notcommitteepersons\@notcommitteepersonsfalse

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Directeur de th`ese (franc,ais)
%

\global\let\@supervisormember\@empty
\global\newcount\@supervisormemberfemale
                \@supervisormemberfemale 0

\global\let\@supervisornotmember\@empty
\newcount\@supervisornotmemberfemale
         \@supervisornotmemberfemale 0

\def\supervisor{\@ifstar\@dosupervisornotmember\@dosupervisormember}

\newcommand\@dosupervisormember[5]{%
   \if\ifx\@supervisormember\@empty T\else F\fi\ifx\@supervisornotmember\@empty T\else G\fi
      % \@supervisormember\@empty AND \@supervisor\@empty
      \advance\@defensecommitteesize 1\relax
      \gdef\@supervisormember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@supervisormemberfemale 1
      \else
         \@supervisormemberfemale 0
      \fi
   \else
      \gdef\@supervisormember{\textcolor{red}{Directeur de th\`ese d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Directeur de th`ese d'ej`a d'efini / Supervisor already defined}
                  {}
   \fi}

\newcommand\@dosupervisornotmember[5]{%
   \if\ifx\@supervisormember\@empty T\else F\fi\ifx\@supervisornotmember\@empty T\else G\fi
       % \@supervisormember\@empty AND \@supervisor\@empty
      \@notcommitteepersonstrue
      \gdef\@supervisornotmember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@supervisornotmemberfemale 1
      \else
         \@supervisornotmemberfemale 0
      \fi
   \else
      \gdef\@supervisornotmember{\textcolor{red}{Directeur de th\`ese d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Directeur de th`ese d'ej`a d'efini / Supervisor already defined}
                  {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Directeur de th`ese 'etranger en cas de co-tutelle
%

\global\let\@foreignsupervisormember\@empty
\global\newcount\@foreignsupervisormemberfemale
                \@foreignsupervisormemberfemale 0

\global\let\@foreignsupervisornotmember\@empty
\global\newcount\@foreignsupervisornotmemberfemale
                \@foreignsupervisornotmemberfemale 0

\def\foreignsupervisor{\@ifstar\@doforeignsupervisornotmember\@doforeignsupervisormember}

\newcommand\@doforeignsupervisormember[5]{%
   \if\ifx\@foreignsupervisormember\@empty T\else F\fi\ifx\@foreignsupervisornotmember\@empty T\else G\fi
      \advance\@defensecommitteesize 1\relax
      \gdef\@foreignsupervisormember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@foreignsupervisormemberfemale 1
      \else
         \@foreignsupervisormemberfemale 0
      \fi
   \else
      \gdef\@foreignsupervisormember{\textcolor{red}{Directeur de th\`ese de co-tutelle d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Directeur de th`ese 'etranger de co-tutelle d'ej`a d'efini / Foreign Supervisor in co-supervision already defined}
                  {}
   \fi}

\newcommand\@doforeignsupervisornotmember[5]{%
   \if\ifx\@foreignsupervisormember\@empty T\else F\fi\ifx\@foreignsupervisornotmember\@empty T\else G\fi
      \@notcommitteepersonstrue
      \gdef\@foreignsupervisornotmember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@foreignsupervisornotmemberfemale 1
      \else
         \@foreignsupervisornotmemberfemale 0
      \fi
   \else
      \gdef\@foreignsupervisornotmember{\textcolor{red}{Directeur de th\`ese de co-tutelle d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Directeur de th`ese 'etranger en co-tutelle d'ej`a d'efini / Foreign Supervisor in co-supervision already defined}
                  {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Co-encadrant de th`ese (franc,ais)
%

\global\let\@cosupervisormember\@empty
\global\newcount\@cosupervisormemberfemale
                \@cosupervisormemberfemale 0

\global\let\@cosupervisornotmember\@empty
\global\newcount\@cosupervisornotmemberfemale
                \@cosupervisornotmemberfemale 0

\def\cosupervisor{\@ifstar\@docosupervisornotmember\@docosupervisormember}

\newcommand\@docosupervisormember[5]{%
   \if\ifx\@cosupervisormember\@empty T\else F\fi\ifx\@cosupervisornotmember\@empty T\else G\fi
      \advance\@defensecommitteesize 1\relax
      \gdef\@cosupervisormember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@cosupervisormemberfemale 1
      \else
         \@cosupervisormemberfemale 0
      \fi
   \else
      \gdef\@cosupervisormember{\textcolor{red}{Co-encadrant de th\`ese d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Co-encadrant de th`ese d'ej`a d'efini / Co-supervisor already defined}
                  {}
   \fi}

\newcommand\@docosupervisornotmember[5]{%
   \if\ifx\@cosupervisormember\@empty T\else F\fi\ifx\@cosupervisornotmember\@empty T\else G\fi
      \@notcommitteepersonstrue
      \gdef\@cosupervisornotmember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@cosupervisornotmemberfemale 1
      \else
         \@cosupervisornotmemberfemale 0
      \fi
   \else
      \gdef\@cosupervisornotmember{\textcolor{red}{Co-encadrant de th\`ese d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Co-encadrant d'ej`a d'efini / Co-upervisor already defined}
                  {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Co-encadrant de de co-tutelle ('etranger)
%

\global\let\@foreigncosupervisormember\@empty
\global\newcount\@foreigncosupervisormemberfemale
                \@foreigncosupervisormemberfemale 0

\global\let\@foreigncosupervisornotmember\@empty
\global\newcount\@foreigncosupervisornotmemberfemale
                \@foreigncosupervisornotmemberfemale 0

\def\foreigncosupervisor{\@ifstar\@doforeigncosupervisornotmember\@doforeigncosupervisormember}

\newcommand\@doforeigncosupervisormember[5]{%
   \if\ifx\@foreigncosupervisormember\@empty T\else F\fi\ifx\@foreigncosupervisornotmember\@empty T\else G\fi
      \advance\@defensecommitteesize 1\relax
      \gdef\@foreigncosupervisormember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@foreigncosupervisormemberfemale 1
      \else
         \@foreigncosupervisormemberfemale 0
      \fi
   \else
      \gdef\@foreigncosupervisormember{\textcolor{red}{Co-encadrant de th\`ese d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Co-encadrant de th`ese d'ej`a d'efini / Co-supervisor already defined}
                  {}
   \fi}

\newcommand\@doforeigncosupervisornotmember[5]{%
   \if\ifx\@foreigncosupervisormember\@empty T\else F\fi\ifx\@foreigncosupervisornotmember\@empty T\else G\fi
      \@notcommitteepersonstrue
      \gdef\@foreigncosupervisornotmember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@foreigncosupervisornotmemberfemale 1
      \else
         \@foreigncosupervisornotmemberfemale 0
      \fi
   \else
      \gdef\@foreigncosupervisornotmember{\textcolor{red}{Co-encadrant de th\`ese d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                  {Co-encadrant d'ej`a d'efini / Co-upervisor already defined}
                  {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pr'esident, un et un seul dans la version finale, c'est-à-dire post-soutenance
%

\global\let\@president\@empty
\global\newcount\@presidentfemale
                \@presidentfemale 0

\newcommand\president[5]{%
   \ifx\@president\@empty
      \advance\@defensecommitteesize 1\relax
      \gdef\@president{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@presidentfemale 1
      \else
         \@presidentfemale 0
      \fi
   \else
      \gdef\@president{\textcolor{red}{Pr\'esident de jury d\'ej\`a d\'efini}}
      \ClassError{these-LUNAM}
                 {Pr'esident de jury d'ej`a d'ej`a d'efini / President already defined}
                 {}
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rapporteurs, jusqu'`a trois
%

\global\newcount\@reviewernumber
                \@reviewernumber 0

\global\let\@firstreviewermember\@empty
\global\let\@secondreviewermember\@empty
\global\let\@thirdreviewermember\@empty

\global\let\@firstreviewernotmember\@empty
\global\let\@secondreviewernotmember\@empty
\global\let\@thirdreviewernotmember\@empty

\def\reviewer{\@ifstar\@doreviewernotmember\@doreviewermember}

\newcommand\@doreviewermember[5]{%
   \advance\@reviewernumber 1\relax
   \ifnum \@reviewernumber > 3
      \ClassError{these-LUNAM}
               {Trop de rapporteurs, au plus trois / Too many reviewers, at most three}
               {}%
   \else
      \advance\@defensecommitteesize 1 \relax
      \ifx\@firstreviewermember\@empty
         \gdef\@firstreviewermember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \else\ifx\@secondreviewermember\@empty
         \gdef\@secondreviewermember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \else\ifx\@thirdreviewermember\@empty
         \gdef\@thirdreviewermember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \else
      \fi\fi\fi
   \fi}

\newcommand\@doreviewernotmember[5]{%
   \advance\@reviewernumber 1\relax
   \ifnum \@reviewernumber > 3
      \ClassError{these-LUNAM}
               {Trop de rapporteurs, au plus trois / Too many reviewers, at most three}
               {}%
   \else
      \@notcommitteepersonstrue
      \ifx\@firstreviewernotmember\@empty
         \gdef\@firstreviewernotmember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \else\ifx\@secondreviewernotmember\@empty
         \gdef\@secondreviewernotmember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \else\ifx\@thirdreviewernotmember\@empty
         \gdef\@thirdreviewernotmember{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \else
      \fi\fi\fi
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Examinateurs, jusqu'à huit si aucun encadrant ni rapporteur n''etait pr'esent...
%

\global\let\@firstexaminer\@empty
\global\let\@secondexaminer\@empty
\global\let\@thirdexaminer\@empty
\global\let\@fourthexaminer\@empty
\global\let\@fifthexaminer\@empty
\global\let\@sixthexaminer\@empty
\global\let\@seventhexaminer\@empty
\global\let\@eighthexaminer\@empty

\newcommand\examiner[5]{%
   \advance\@defensecommitteesize 1\relax
   \ifx\@firstexaminer\@empty
      \gdef\@firstexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@secondexaminer\@empty
      \gdef\@secondexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@thirdexaminer\@empty
      \gdef\@thirdexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@fourthexaminer\@empty
      \gdef\@fourthexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@fifthexaminer\@empty
      \gdef\@fifthexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@sixthexaminer\@empty
      \gdef\@sixthexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@seventhexaminer\@empty
      \gdef\@seventhexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else\ifx\@eighthexaminer\@empty
      \gdef\@eighthexaminer{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
   \else
      \ClassError{these-LUNAM}
                 {Trop d'examinateurs, pas plus de huit / Too many examiners, at most height}
                 {}%
   \fi\fi\fi\fi\fi\fi\fi\fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guests, pas plus de deux (cf. LUNAM DOCTEUR, JURY)
%

\global\let\@firstguest\@empty
\global\newcount\@firstguestfemale
                \@firstguestfemale 0
\global\let\@secondguest\@empty
\global\newcount\@secondguestfemale
                \@secondguestfemale 0

\newcommand\guest[5]{%
   \ifx\@firstguest\@empty
      \gdef\@firstguest{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@firstguestfemale 1
      \else
         \@firstguestfemale 0
      \fi
   \else\ifx\@secondguest\@empty
      \gdef\@secondguest{\textbf{\@formatcivilite{#1} #2 \textsc{#3}}, #4, #5}
      \@civilitegender{#1}
      \if@lastcivilitefemale
         \@secondguestfemale 1
      \else
         \@secondguestfemale 0
      \fi
   \else
      \ClassError{these-LUNAM}
                 {Trop d'invit'es, pas plus de deux / Too many guests, at most two}
                 {}%
   \fi\fi}

%%%%%%%%%%%%%
% Discipline
%

\global\let\@discipline\@empty

\newcommand\discipline[1]{%
   \ifx\@discipline\@empty
      \gdef\@discipline{#1}
   \else
      \gdef\@discipline{\textcolor{red}{Discipline d\'efinie plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Discipline d'ej`a d'efinie / Discipline already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%
% Section CNU
%

\global\let\@sectionCNU\@empty

\newcommand\sectionCNU[1]{%
   \ifx\@sectionCNU\@empty
      \gdef\@sectionCNU{#1}
   \else
      \gdef\@sectionCNU{\textcolor{red}{Section CNU d\'efinie plusieurs fois}}
      \ClassError{these-LUNAM}
                 {SectionCNU d'ej`a d'efinie / SectionCNU already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%%%%
% Sp'ecialit'e
%

\global\let\@specialty\@empty

\newcommand\specialty[1]{%
   \ifx\@specialty\@empty
      \gdef\@specialty{#1}
   \else
      \gdef\@specialty{\textcolor{red}{Sp\'ecialit\'e d\'efinie plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Sp'ecialit'e d'ej`a d'efinie / Specialty already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%
% Laboratoire
%

\global\let\@laboratory\@empty

\newcommand\laboratory[1]{%
   \ifx\@laboratory\@empty
      \gdef\@laboratory{#1}
   \else
      \gdef\@specialty{\textcolor{red}{Laboratoire d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Laboratoire d'ej`a d'efini / Laboratory already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%
% Institution
%

\global\let\@institution\@empty
\global\let\@institutionlogo\@empty
\global\let\@institutionlogowidth\@empty

\newcommand\institution[1]{%
   \ifx\@institution\@empty
      \ifthenelse{\equal{#1}{UN}}
                 {\gdef\@institution{Universit\'e de Nantes}
                  \gdef\@institutionlogo{UniversiteNantes}
                  \gdef\@institutionlogowidth{3.2cm}}
      {\ifthenelse{\equal{#1}{UA}}
                 {\gdef\@institution{Universit\'e d'Angers}
                  \gdef\@institutionlogo{UniversiteAngers}
                  \gdef\@institutionlogowidth{2.2cm}}
      {\ifthenelse{\equal{#1}{UM}}
                 {\gdef\@institution{Universit\'e du Maine}
                  \gdef\@institutionlogo{UniversiteMaine}
                  \gdef\@institutionlogowidth{3.2cm}}
      {\ifthenelse{\equal{#1}{ECN}}
                 {\gdef\@institution{\'Ecole centrale de Nantes}
                  \gdef\@institutionlogo{EcoleCentraleNantes}
                  \gdef\@institutionlogowidth{2cm}}
      {\ifthenelse{\equal{#1}{EMN}}
                 {\gdef\@institution{\'Ecole nationale sup\'erieure des mines de Nantes}
                  \gdef\@institutionlogo{EcoleMinesNantes}
                  \gdef\@institutionlogowidth{4cm}}
      {\ifthenelse{\equal{#1}{MN}}
                 {\gdef\@institution{\'Ecole nationale sup\'erieure des mines de Nantes}
                  \gdef\@institutionlogo{MinesNantes}
                  \gdef\@institutionlogowidth{2.5cm}}
      {\ifthenelse{\equal{#1}{Oniris}}
                 {\gdef\@institution{\'Ecole nationale v\'et\'erinaire, agroalimentaire et\\de l'alimentation, Nantes-Atlantique}
                  \gdef\@institutionlogo{Oniris}
                  \gdef\@institutionlogowidth{2.8cm}}
      {\ifthenelse{\equal{#1}{Agro}}
                 {\gdef\@institution{Institut sup\'erieur des sciences agronomiques, agroalimentaires,\\horticoles et du paysage}
                  \gdef\@institutionlogo{AgrocampusOuest}
                  \gdef\@institutionlogowidth{3.0cm}}
                 {\gdef\@institution{#1}
                  \gdef\@institutionlogo{#1}
                  \gdef\@institutionlogowidth{2cm}}}}}}}}}
   \else
      \gdef\@institution{\textcolor{red}{Institution d\'efinie plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Institution d'ej`a d'efinie / Institution already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%%%%
% Co-institution
%

\global\let\@coinstitution\@empty
\global\let\@coinstitutionlogo\@empty
\global\let\@coinstitutionlogowidth\@empty
\global\let\@coinstitutionlogovoffset\@empty

\newcommand\coinstitution[4][0pt]{%
   \ifx\@coinstitution\@empty
      \gdef\@coinstitution{#2}
      \gdef\@coinstitutionlogo{#3}
      \gdef\@coinstitutionlogowidth{#4}
      \gdef\@coinstitutionlogovoffset{#1}
   \else
      \gdef\@coinstitution{\textcolor{red}{Co-institution d\'efinie plusieurs fois}}
      \ClassError{these-LUNAM}
                 {co-institution d'ej`a d'efinie / co-institution already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Institution de co-tutelle
%

\global\let\@cosupervisingforeigninstitution\@empty
\global\let\@cosupervisingforeigninstitutionlogo\@empty
\global\let\@cosupervisingforeigninstitutionlogowidth\@empty
\global\let\@cosupervisingforeigninstitutionlogovoffset\@empty

\newcommand\cosupervisingforeigninstitution[4][0pt]{%
   \ifx\@cosupervisingforeigninstitution\@empty
      \gdef\@cosupervisingforeigninstitution{#2}
      \gdef\@cosupervisingforeigninstitutionlogo{#3}
      \gdef\@cosupervisingforeigninstitutionlogowidth{#4}
      \gdef\@cosupervisingforeigninstitutionlogovoffset{#1}
   \else
      \gdef\@cosupervisingforeigninstitution{\textcolor{red}{Institution de co-tutelle d\'efinie plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Institution de co-tutelle d'ej`a d'efinie / Co-supervising foreign institution already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%%%%%%%%%
% Num'ero de th`ese
%

\global\let\@thesisnumber\@empty

\newcommand\thesisnumber[1]{%
   \ifx\@thesisnumber\@empty
      \gdef\@thesisnumber{#1}
   \else
      \gdef\@thesisnumber{\textcolor{red}{Num\'ero de th\`ese d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Num'ero de th`ese d'ej`a d'efini / Thesis number already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%%%%%%%
% 'Ecole doctorale
%

\global\let\@doctoralschool\@empty

\newcommand\doctoralschool[1]{%
   \ifx\@doctoralschool\@empty
      \gdef\@doctoralschool{#1}
   \else
      \gdef\@doctoralschool{\textcolor{red}{\'Ecole doctorale d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Ecole doctorale d'ej`a d'efinie / Doctoral school already defined}
                 {}%
   \fi}

%%%%%%%%%%%%%%%%%%
% Label europ'een
%

\global\let\@europeanlabel\@empty

\newcommand\europeanlabel{%
   \ifx\@europeanlabel\@empty
      \gdef\@europeanlabel{dummy}
   \else
      \gdef\@europeanlabel{\textcolor{red}{\'Ecole doctorale d\'efini plusieurs fois}}
      \ClassError{these-LUNAM}
                 {Label europ'een d'ej`a d'eclar'e / European label already declared}
                 {}%
   \fi}

%%%%%%%%%%   MISE EN FORME DE LA COUVERTURE   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% environnements suppl'ementaires pour la 4e de couverture
%    - resume, abstract
%    - motscles, keywords

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Jury et autres personnes en 1re de couverture
%

% pour g'erer les couverture en times 12pt

\newcommand{\Hugecover}{\fontsize{25}{30}\selectfont}
\newcommand{\hugecover}{\fontsize{25}{30}\selectfont}
\newcommand{\LARGEcover}{\fontsize{20}{25}\selectfont}
\newcommand{\Largecover}{\fontsize{17}{22}\selectfont}
\newcommand{\normalsizecover}{\fontsize{12}{14.5}\selectfont}
\newcommand{\smallcover}{\fontsize{11}{13.6}\selectfont}
\newcommand{\footnotesizecover}{\fontsize{10}{12}\selectfont}
\newcommand{\scriptsizecover}{\fontsize{8}{9.5}\selectfont}
\newcommand{\tinysizecover}{\fontsize{6}{7}\selectfont}

\newcommand{\@docommitteeskipline}
   {& \tabularnewline}

\newcommand{\@committeeskipline}
   {%
   \if@squeezeCommittee
   \else
      \@docommitteeskipline
   \fi
   }

\newcommand{\@onecommitteemember}[2] % libell'e au singulier + nom (plus exactement, civilit'e, nom et 'etablissement)
{\@committeeskipline
 #1 : & #2 \tabularnewline}

\newcommand{\@twocommitteemembers}[3] % libell'e au pluriel + deux noms (non vides)
{\@committeeskipline
 #1 : & #2 \tabularnewline
      & #3 \tabularnewline}

\newcommand{\@threecommitteemembers}[4] % libell'e au pluriel + trois noms
{\@committeeskipline
 #1 : & #2 \tabularnewline
      & #3 \tabularnewline
      & #4 \tabularnewline}

\newcommand{\@addcommitteemember}[1] % nom
{     & #1 \tabularnewline}

\newcommand{\@committeepresident}[2] % nom + sexe (pouvant être vide)
   {%
   \ifx#1\@empty
   \else
      \ifnum #2 = 0\relax
         \@onecommitteemember{Pr\'esident}{#1}
      \else
         \@onecommitteemember{Pr\'esidente}{#1}
      \fi
   \fi}

\newcommand{\@committeereviewers}[3] % jusqu'`a trois noms, les noms non vides pr'ec'edant les noms vides 'eventuels
   {%
   \ifx#1\@empty
   \else\ifx#2\@empty
      \@onecommitteemember{Rapporteur}{#1}
   \else\ifx#3\@empty
      \@twocommitteemembers{Rapporteurs}{#1}{#2}
   \else
      \@threecommitteemembers{Rapporteurs}{#1}{#2}{#3}
   \fi\fi\fi}

\newcommand{\@committeesupervisors}[4] % (nom + sexe) deux fois, le premier pour le membre franc,ais, le second pour le membre 'etranger, chacun pouvant ^etre vide en fonction de leur position dans ou hors jury
   {%
   \ifx#1\@empty
      \ifx#3\@empty
      \else
         \ifnum #4 = 0\relax
            \@onecommitteemember{Directeur de th\`ese}{#3}
         \else
            \@onecommitteemember{Directrice de th\`ese}{#3}
         \fi
      \fi
   \else\ifx#3\@empty
      \ifnum #2 = 0\relax
         \@onecommitteemember{Directeur de th\`ese}{#1}
      \else
         \@onecommitteemember{Directrice de th\`ese}{#1}
      \fi
   \else
      \ifnum #2 = 0\relax
         \@twocommitteemembers{Directeurs de th\`ese}{#1}{#3}
      \else\ifnum #4 = 0\relax
         \@twocommitteemembers{Directeurs de th\`ese}{#1}{#3}
      \else
         \@twocommitteemembers{Directrices de th\`ese}{#1}{#3}
      \fi\fi
   \fi\fi}

\newcommand{\@committeecosupervisors}[4] % Idem directeur(s)
   {%
   \ifx#1\@empty
      \ifx#3\@empty
      \else
         \ifnum #4 = 0\relax
            \@onecommitteemember{Co-encadrant de th\`ese}{#3}
         \else
            \@onecommitteemember{Co-encadrante de th\`ese}{#3}
         \fi
      \fi
   \else\ifx#3\@empty
      \ifnum #2 = 0\relax
         \@onecommitteemember{Co-encadrant de th\`ese}{#1}
      \else
         \@onecommitteemember{Co-encadrante de th\`ese}{#1}
      \fi
   \else
      \ifnum #2 = 0\relax
         \@twocommitteemembers{Co-encadrants de th\`ese}{#1}{#3}
      \else\ifnum #4 = 0\relax
         \@twocommitteemembers{Co-encadrants de th\`ese}{#1}{#3}
      \else
         \@twocommitteemembers{Co-encadrantes de th\`ese}{#1}{#3}
      \fi\fi
   \fi\fi}

\newcommand{\@committeeguests}[4] % (nom + sexe) jusqu`a deux fois, le second ou les deux pouvant ^etre vides
   {%
   \ifx#1\@empty
   \else\ifx#3\@empty
      \ifnum #2 = 0\relax
         \@onecommitteemember{Invit\'e}{#1}
      \else
         \@onecommitteemember{Invit\'ee}{#1}
      \fi
   \else
      \ifnum #2 = 0\relax
         \@twocommitteemembers{Invit\'es}{#1}{#3}
      \else\ifnum #4 = 0\relax
         \@twocommitteemembers{Invit\'es}{#1}{#3}
      \else
         \@twocommitteemembers{Invit\'ees}{#1}{#3}
      \fi\fi
   \fi\fi}

\newcommand{\@committeeexaminers}
   {%
   \ifx\@firstexaminer\@empty
   \else\ifx\@secondexaminer\@empty
      \@onecommitteemember{Examinateur}{\@firstexaminer}
   \else
      \@twocommitteemembers{Examinateurs}{\@firstexaminer}
                                         {\@secondexaminer}

      \ifx\@thirdexaminer\@empty
      \else
         \@addcommitteemember{\@thirdexaminer}
      \fi

      \ifx\@fourthexaminer\@empty
      \else
         \@addcommitteemember{\@fourthexaminer}
      \fi

      \ifx\@fifthexaminer\@empty
      \else
         \@addcommitteemember{\@fifthexaminer}
      \fi

      \ifx\@sixthexaminer\@empty
      \else
         \@addcommitteemember{\@sixthexaminer}
      \fi

      \ifx\@seventhexaminer\@empty
      \else
         \@addcommitteemember{\@seventhexaminer}
      \fi

      \ifx\@eighthexaminer\@empty
      \else
         \@addcommitteemember{\@eighthexaminer}
      \fi
   \fi\fi
   }

\newcommand{\@committeecouillard}
   {\@committeeskipline
    \multicolumn{2}{c}{\textcolor{@titlecolor}{\bf * * *}}\tabularnewline}

\newcommand{\@committee}{%
   \ifnum \@defensecommitteesize < 3
      \textcolor{red}{Jury trop restreint}
      \ClassError{these-LUNAM}
                 {Il faut au moins trois membres dans le jury / The defense committee consists at least of three members}
                 {}
   \else\ifnum \@defensecommitteesize > 8
      \textcolor{red}{Jury trop \'etendu}
      \ClassError{these-LUNAM}
                 {Il faut au plus huit membres dans le jury (hors invit'es) / The defense committee consists at most of height members (not inclusive of guests)}
                 {}
   \fi\fi
%
   \ifnum \@reviewernumber < 2
      \textcolor{red}{Il manque un rapporteur}
      \ClassError{these-LUNAM}
                 {Il faut au moins deux rapporteurs, utilisez (de nouveau) la macro \string\reviewer\ / At least two reviewers are needed, use (again) \string\reviewer}
                 {}
   \fi

   \noindent
   \begin{tabular}{ll}
      \footnotesizecover%
      \@committeepresident    {\@president}                {\@presidentfemale}%
      \@committeereviewers    {\@firstreviewermember}
                              {\@secondreviewermember}
                              {\@thirdreviewermember}%
      \@committeeexaminers%
      \@committeeguests       {\@firstguest}               {\@firstguestfemale}
                              {\@secondguest}              {\@secondguestfemale}%
      \@committeesupervisors  {\@supervisormember}         {\@supervisormemberfemale}
                              {\@foreignsupervisormember}  {\@foreignsupervisormemberfemale}%
      \@committeecosupervisors{\@cosupervisormember}       {\@cosupervisormemberfemale}
                              {\@foreigncosupervisormember}{\@foreigncosupervisormemberfemale}%
      \if@notcommitteepersons % Personnes importantes ne pouvant pas assister `a la soutenance
         \@committeecouillard%
         \@committeereviewers    {\@firstreviewernotmember}
                                 {\@secondreviewernotmember}
                                 {\@thirdreviewernotmember}%
         \@committeesupervisors  {\@supervisornotmember}         {\@supervisornotmemberfemale}
                                 {\@foreignsupervisornotmember}  {\@foreignsupervisornotmemberfemale}%
         \@committeecosupervisors{\@cosupervisornotmember}       {\@cosupervisornotmemberfemale}
                                 {\@foreigncosupervisornotmember}{\@foreigncosupervisornotmemberfemale}%
      \fi
   \end{tabular}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fond de page des 1re et 4e de couverture
%

\newcommand{\@drawbackground}
   { % Horizontal grey-green box
   \noindent\raisebox{0pt}[0pt][0pt]
                     {\colorbox{@verticalgreen}
                               {\makebox[0.5\textwidth]
                                        {\raisebox{-\textheight}
                                                  {~}}}}

   \vspace{4\baselineskip}

   {
   \noindent\hspace{0.45\textwidth}
            \raisebox{0pt}[0pt][0pt]
                     {\color{@horizontalgray}
                      \rule{0.55\textwidth}
                           {2.5\baselineskip}}
            \hspace{-0.45\textwidth}
   }

   \renewcommand{\sfdefault}{phv}
   \renewcommand{\rmdefault}{ptm}
   \renewcommand{\ttdefault}{pcr}
   \sffamily
   \fontsize{12pt}{14pt}
   \selectfont

   \noindent\makebox[0.55\textwidth][r]
                    {\Hugecover\textbf{\textcolor{@doctoratcolor}
                                                 {Th\`ese de Doctorat}}}

   {
   \noindent\color{@bandeaucolor}
            \rule{0.55\textwidth}
                 {2.5\baselineskip}
            \color{@horizontalgray}
            \rule{0.45\textwidth}
                 {2.5\baselineskip}
   }

   \vspace{3\baselineskip}

   {
   \noindent\hspace{0.45\textwidth}
            \raisebox{0pt}[0pt][0pt]
                     {\color{@horizontalgray}
                      \rule{0.55\textwidth}
                           {2.5\baselineskip}}
            \hspace{-0.45\textwidth}
   }

   \vspace{-15\baselineskip}
   \includegraphics[width=4.5cm]{logos/LUNAM-CUE}
   \hfill
   \hfill
   \hfill
   \ifx\@cosupervisingforeigninstitution\@empty
   \else
      \raisebox{\@cosupervisingforeigninstitutionlogovoffset}[0pt][0pt]{\includegraphics[width=\@cosupervisingforeigninstitutionlogowidth]{logos/\@cosupervisingforeigninstitutionlogo}}~
      \hfill
   \fi
   \ifx\@coinstitution\@empty
   \else
      \raisebox{\@coinstitutionlogovoffset}[0pt][0pt]{\includegraphics[width=\@coinstitutionlogowidth]{logos/\@coinstitutionlogo}}~
      \hfill
   \fi
   \raisebox{0pt}[0pt][0pt]{\includegraphics[width=\@institutionlogowidth]{logos/\@institutionlogo}}~
   \vspace{11\baselineskip}
   }

%%%%%%%%%%%%%%%%%%%%
% 1re de couverture
%

\renewcommand{\maketitle}{% Contr^ole de la pr'esence des informations obligatoires
   \ifx\@titre\@empty
      \gdef\@titre{\textcolor{red}{Titre ind\'efini}}
      \ClassError{these-LUNAM}
                 {Titre de la th`ese en franc,ais ind'efini, utilisez la macro \string\titre\ / Thesis title in French undefined, use \string\titre}
                 {}
   \fi

   \ifx\@title\@empty
      \gdef\@title{\textcolor{red}{Title undefined}}
      \ClassError{these-LUNAM}
                 {Titre de la th`ese en anglais ind'efini, utilisez la macro \string\title\ / Thesis title in English undefined, use \string\title}
                 {}
   \fi

   \ifx\@institution\@empty
      \gdef\@institution{\textcolor{red}{Institution ind\'efinie}}
      \ClassError{these-LUNAM}
                 {Institution ind'efinie, utilisez la macro \string\institution\ / Institution undefined, use \string\institution}
                 {}
   \fi

   \if\ifx\@supervisormember\@empty T\else F\fi\ifx\@supervisor\@empty T\else G\fi % AND
      \gdef\@supervisormember{\textcolor{red}{Directeur de th\`ese ind'efini}}
      \ClassError{these-LUNAM}
               {Directeur de th`ese ind'efini, utilisez la macro \string\supervisor\ / Ph.D. Director undefined, use \string\supervisor}
               {}
   \fi

   \if \ifx\@cosupervisingforeigninstitution\@empty T \else F\fi % <=>
       \if \ifx\@foreignsupervisormember\@empty F \else T\fi % OR
           \ifx\@foreignsupervisor\@empty G \else T\fi \fi
         \ClassError{these-LUNAM}
                  {En cas de co-tutelle, il faut un Directeur de th`ese externe et une institution externe, utilisez les macros \string\foreignsupervisor\ et \string\cosupervisingforeigninstitution\ / In case of foreign co-supervision, you must provide both a foreign Ph.D. Director and its corresponding institution, use \string\foreignsupervisor\ et \string\cosupervisingforeigninstitution}
                  {}
   \fi

   \ifx\@discipline\@empty
      \gdef\@discipline{\textcolor{red}{Discipline ind\'efinie}}
      \ClassError{these-LUNAM}
                 {Discipline ind'efinie, utilisez la macro \string\discipline\ / Discipline undefined, use \string\discipline}
                 {}
   \fi

   \ifx\@laboratory\@empty
      \gdef\@laboratory{\textcolor{red}{Laboratoire ind\'efini}}
      \ClassError{these-LUNAM}
                 {Laboratoire ind'efini, utilisez la macro \string\laboratory\ / Laboratory undefined, use \string\laboratory}
                 {}
   \fi

   \ifx\@author\@empty
      \gdef\@author{\textcolor{red}{Pr\'enom \textsc{Nom}}}
      \ClassError{these-LUNAM}
                 {Auteur ind'efini, utilisez la macro \string\author\ / Author undefined, use \string\author}
                 {}
   \fi

   \ifx\@doctoralschool\@empty
      \gdef\@doctoralschool{\textcolor{red}{\'Ecole doctorale ind\'efinie}}
      \ClassError{these-LUNAM}
                 {Ecole doctorale ind'efinie, utilisez la macro \string\doctoralschool\ / Doctoral school undefined, use \string\doctoralschool}
                 {}
   \fi

   \newgeometry{margin=1.5cm}
   \begin{titlepage}
      {
      \singlespacing
      \@drawbackground
      \renewcommand{\sfdefault}{phv}
      \renewcommand{\rmdefault}{ptm}
      \renewcommand{\ttdefault}{pcr}
      \fontsize{12pt}{14pt}
      \sffamily
      \selectfont

      \vspace{-3.75\baselineskip}
      \hspace{0.5\textwidth}
      \raisebox{0pt}
               [0pt]
               [2\baselineskip]
               {\parbox[t][][c]
                       {0.5\textwidth}
                       {\raggedright\textcolor{@doctoratcolor}{\begin{spacing}{0.75}\Hugecover\@author\end{spacing}}}}

      \smallcover
      \vspace{\baselineskip}
      \noindent\textsl{M\'emoire pr\'esent\'e en vue de l'obtention du}\par
      \noindent\textsl{\textbf{grade de Docteur de \parbox[t]{0.79\textwidth}{l'\@institution}}}\par
      \ifx\@cosupervisingforeigninstitution\@empty
      \else
         \noindent\textsl{\textbf{\phantom{grade de} Docteur de \parbox[t]{0.79\textwidth}{\@cosupervisingforeigninstitution}}}\par
      \fi
      \ifx\@europeanlabel\@empty
      \else
         \noindent\textsl{\textbf{\phantom{grade de }Label européen}}\par
      \fi
      \noindent\textsl{sous le label de l'Universit\'e de Nantes Angers Le Mans}\par

      \vspace{\baselineskip}

      \footnotesizecover
      \noindent\textbf{\'Ecole doctorale : \@doctoralschool}\par

      \vspace{\baselineskip}

      \footnotesizecover
      \noindent\textbf{Discipline : \@discipline\ifx\@sectionCNU\@empty\else, section CNU \@sectionCNU\fi}\par
      \ifx\@specialty\@empty
      \else
         \noindent\textbf{Sp\'ecialit\'e : \@specialty}\par
      \fi
      \noindent\textbf{Unit\'e de recherche : \parbox[t]{0.8\textwidth}{\@laboratory}}\par

      \vspace{\baselineskip}

      \footnotesizecover
      \noindent\textbf{Soutenue le \@date}\par
      \ifx\@thesisnumber\@empty
      \else
         \noindent\textbf{Th\`ese n\textdegree\ : \@thesisnumber}\par
      \fi

      \vfill

      \hfill
      \if@inEnglish
         \parbox{0.75\textwidth}
               {\begin{flushright}
                  \Largecover\textcolor{@titlecolor}{\textbf{\@title}}\\
                  \ifx\@subtitle\@empty
                     \relax
                  \else
                     \normalsizecover\textcolor{@titlecolor}{\textbf{\@subtitle}}\\\relax
                  \fi
               \end{flushright}}
      \else
         \parbox{0.75\textwidth}
               {\begin{flushright}
                  \Largecover\textcolor{@titlecolor}{\textbf{\@titre}}\\
                  \ifx\@soustitre\@empty
                     \relax
                  \else
                     \normalsizecover\textcolor{@titlecolor}{\textbf{\@soustitre}}\\\relax
                  \fi
               \end{flushright}}
      \fi

      \vfill
      \vfill
      \vfill

\newsavebox{\@committeebox}
\sbox{\@committeebox}{\@committee}
\newlength{\committeeboxwidth}
\settowidth{\committeeboxwidth}{\usebox{\@committeebox}}
\begin{center}
   \textcolor{@titlecolor}{\textbf{\smallcover JURY}}\par
   \if@squeezeCommittee
      ~\par
   \else
   \fi
   \ifnum\committeeboxwidth>\textwidth
      \noindent\resizebox{\textwidth}{!}{\usebox{\@committeebox}}%
   \else
      {\centering\usebox{\@committeebox}}%
   \fi
\end{center}
      }
   \end{titlepage}%
   \restoregeometry
   \ifnum\thepage>2\relax
      \ClassError{these-LUNAM}
                 {Premi`ere de couverture d'ebord'ee, r'eduire la quantit'e d'information / First cover page overflowed, reduce the size and number of informations}
                 {}
   \fi
} % \maketitle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Quatri`eme de couverture
%

\global\newcount\@startingPage

\newcommand{\makecover}{%
   \singlespacing
   \newgeometry{margin=1.5cm}
   \cleardoublepage % go to odd page
   \phantom{placeholder} % doesn't appear on page
   \newpage % on even page
   \thispagestyle{empty} % no numbering
   \@startingPage\thepage\relax
      {
      \@drawbackground
      \vspace{-5.5\baselineskip}
      \renewcommand{\sfdefault}{phv}
      \renewcommand{\rmdefault}{ptm}
      \renewcommand{\ttdefault}{pcr}
      \sffamily
      \fontsize{12pt}{14pt}
      \selectfont
      \begin{quote}
         \begin{flushleft}
            \textbf{\Largecover\textcolor{@textgray}{\@author}}
         \end{flushleft}
         \ifx\@\@titre\@empty
            \ClassError{these-LUNAM}
                       {Le titre en franc,ais est obligatoire, utilisez la macro \string\titre\ / A French title is mandatory, use \string\titre}
                       {}
         \fi
         \begin{flushleft}
            \textbf{\textcolor{@textgray}{\@titre}}
            \ifx\@soustite\@empty
               \relax
            \else
               \par
               \textcolor{@textgray}{\@soustitre}
            \fi
         \end{flushleft}
         \ifx\@\@title\@empty
            \ClassError{these-LUNAM}
                       {Le titre en anglais est obligatoire, utilisez la macro \string\title\ / An English title is mandatory, use \string\title}
                       {}
         \fi
         \begin{flushleft}
            \textbf{\textcolor{@textgray}{\@title}}
            \ifx\@subtitle\@empty
               \relax
            \else
               \par
               \textcolor{@textgray}{\@subtitle}
            \fi
         \end{flushleft}
      \end{quote}

      \vfill

      \noindent
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@resumeBoxGlobal}}}
      \hfill
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@abstractBoxGlobal}}}
      \hfill

      \vfill

      \noindent
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@motsclesBoxGlobal}}}
      \hfill
      \hfill\parbox[t][][b]
            {0.47\textwidth}
            {\makebox[0.47\textwidth]{\usebox{\@keywordsBoxGlobal}}}
      \hfill

      \vfill

      \hspace{0.45\textwidth}\raisebox{-2.2\baselineskip}
                                      [0pt][0pt]
                                      {\colorbox{@bandeaucolor}
                                                {\parbox[s]
                                                        [2\baselineskip]
                                                        [c]
                                                        {0.55\textwidth}
                                                        {~\hfill
                                                         %\textcolor{white}
                                                         \textcolor{black}
                                                                   {L'UNIVERSIT\'E NANTES ANGERS LE MANS}
                                                         \hfill~}}}%
      }%
   \ifnum \thepage > \@startingPage\relax
      \ClassError{these-LUNAM}
                 {Quatri`eme de couverture d'ebord'ee, r'eduire les r'esum'es et leurs mots cl'es / Last cover page overflowed, reduce the size of both abstracts and their key words}
                 {}%
   \fi%
   \restoregeometry%
} % \makecover

\AtEndDocument{\makecover}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% R'esum'e en franc,ais
%

\newsavebox{\@resumeBox}
\newbox{\@resumeBoxGlobal}

\newenvironment{resume}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@resumeBox}%
      \renewcommand{\sfdefault}{phv}
      \renewcommand{\rmdefault}{ptm}
      \renewcommand{\ttdefault}{pcr}
      \smallcover\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
            \selectlanguage{french}
            \textbf{R\'esum\'e}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@resumeBoxGlobal=\vbox{\copy\@resumeBox}
   }

%%%%%%%%%%%%%%%%%%%%%%%%
% R'esum'e en anglais
%

\newsavebox{\@abstractBox}
\newbox{\@abstractBoxGlobal}

\newenvironment{abstract}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@abstractBox}%
      \renewcommand{\sfdefault}{phv}
      \renewcommand{\rmdefault}{ptm}
      \renewcommand{\ttdefault}{pcr}
      \smallcover\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
            \selectlanguage{english}
            \textbf{Abstract}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@abstractBoxGlobal=\vbox{\copy\@abstractBox}
   }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Mots cl'es en franc,ais
%

\newsavebox{\@keywordsBox}
\newbox{\@keywordsBoxGlobal}

\newenvironment{keywords}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@keywordsBox}%
      \renewcommand{\sfdefault}{phv}
      \renewcommand{\rmdefault}{ptm}
      \renewcommand{\ttdefault}{pcr}
      \smallcover\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
            \selectlanguage{english}
            \textbf{Key Words}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@keywordsBoxGlobal=\vbox{\copy\@keywordsBox}
   }

%%%%%%%%%%%%%%%%%%%%%%%%%
% Mots cl'es en anglais
%

\newsavebox{\@motsclesBox}
\newbox{\@motsclesBoxGlobal}

\newenvironment{motscles}
   {
   \newgeometry{margin=1.5cm}
   \begin{lrbox}{\@motsclesBox}%
      \renewcommand{\sfdefault}{phv}
      \renewcommand{\rmdefault}{ptm}
      \renewcommand{\ttdefault}{pcr}
      \smallcover\sffamily
      \begin{minipage}{0.47\textwidth}
         \begin{flushleft}
            \selectlanguage{french}
            \textbf{Mots cl\'es}\par
   }
   {
         \end{flushleft}
      \end{minipage}
   \end{lrbox}
   \restoregeometry
   \global\setbox\@motsclesBoxGlobal=\vbox{\copy\@motsclesBox}
   }

%%%%%%%%%%   AUTRES MISES EN FORME   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\cleardoublepage{\clearpage\thispagestyle{empty}%
  \ifodd\c@page\else
    \hbox{}\newpage\thispagestyle{empty}\if@twocolumn\hbox{}\newpage\fi\fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% En-t^etes de chapitres accord'es à la couverture
%

\if@fancyChapter
   \def\@makechapterhead#1{%
     \vspace*{50\p@}%
     {\parindent \z@ \raggedleft \normalfont
       \ifnum \c@secnumdepth > \m@ne
           \vskip 20\p@

           \hfill\color{@verticalgreen}\rule{10\baselineskip}{\baselineskip}\par
           \vspace{\baselineskip}
           \hfill\color{@verticalgreen}\rule{10\baselineskip}{\baselineskip}\par
           \vspace{\baselineskip}
           \color{@bandeaucolor}\rule{\textwidth}{0.1\baselineskip}\hspace{-10\baselineskip}\color{@verticalgreen}\rule{10\baselineskip}{\baselineskip}\par
           \hfill\raisebox{2\baselineskip}[0pt][0pt]{\Hugecover\textbf{\scalebox{4}{\textcolor{@doctoratcolor}{\thechapter}}}}\par\nobreak
           \vskip 10\p@
       \fi
       \interlinepenalty\@M
       \raggedright
       \Hugecover\bfseries \textcolor{@titlecolor}{#1}\par\nobreak
       \vskip 40\p@
     }}

   \def\@makeschapterhead#1{%
      \vspace*{50\p@}%
      {\parindent \z@ \raggedleft \normalfont
         \interlinepenalty\@M
         \raggedright
         \Huge \bfseries \textcolor{@titlecolor}{#1}\par\nobreak
         \vskip 40\p@% ajout
      }}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% En-t^ete de partie accord'e à la couverture
%

\if@fancyPart
   \def\@part[#1]#2{%
       \ifnum \c@secnumdepth > -2\relax
         \refstepcounter{part}%
         \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
       \else
         \addcontentsline{toc}{part}{#1}%
       \fi
       \markboth{}{}%
       {\centering
        \interlinepenalty \@M
        \normalfont
        \ifnum \c@secnumdepth > -2\relax
           \hfill\color{@verticalgreen}\rule{15\baselineskip}{1.5\baselineskip}\par
           \vspace{1.5\baselineskip}
           \hfill\color{@verticalgreen}\rule{15\baselineskip}{1.5\baselineskip}\par
           \vspace{1.5\baselineskip}
           \hfill\color{@verticalgreen}\rule{15\baselineskip}{1.5\baselineskip}\par
           \hfill\raisebox{2.5\baselineskip}[0pt][0pt]{\Hugecover\textbf{\scalebox{6}{\textcolor{@doctoratcolor}{\thepart}}}}\par\nobreak
           \vfill
        \fi
        \Hugecover\bfseries \color{@titlecolor}#2\par}%
       \@endpart}
   \def\@spart#1{%
       {\centering
        \interlinepenalty \@M
        \normalfont
        \Hugecover\bfseries \color{@titlecolor}#1\par}%
       \@endpart}
   \def\@endpart{\vfill\vfill\vfill\newpage
                 \if@twoside
                  \if@openright
                   \null
                   \thispagestyle{empty}%
                   \newpage
                  \fi
                 \fi
                 \if@tempswa
                   \twocolumn
                 \fi}
\fi

\endinput

%%% Local Variables:
%%% mode: latex
%%% TeX-master: t
%%% End:
