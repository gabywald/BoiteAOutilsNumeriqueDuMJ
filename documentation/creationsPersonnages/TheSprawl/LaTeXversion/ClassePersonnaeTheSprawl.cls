
%% Classe LaTeX JdR TheSprawl
%% LaTeX Class
%% Version 0.1.0 (30/01/2026)
%% 
%% Author : Gabriel Chandesris
%% 
%% License : Creative Common CC-BY-SA

%% Class Configuration

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ClassePretiresCyberPunkRED}[202260130 Classe LaTeX JdR TheSprawl V0.1.0]
 
%%% Chargement de la classe article, avec transfert d'options
\PassOptionsToClass{10pt,twoside,a4paper}{article} % format a4paper par défaut
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% \ProcessOptions
\ProcessOptions\relax
 
\LoadClass{article}

%% Package dependencies

\RequirePackage[french]{babel}   % pour dire que le texte est en fran{\'e}ais
\RequirePackage[T1]{fontenc}     % pour les font postscript
\RequirePackage[table]{xcolor}	 % couleur de fond des cellules de tableaux

\RequirePackage{amsmath}
\RequirePackage{amsthm}		% tres bon mode mathematique
\RequirePackage{amsfonts}
\RequirePackage{amssymb}	% permet la definition des ensembles
\RequirePackage{float}      % pour le placement des figure

\RequirePackage{multicol}	% multicolonnes
\RequirePackage{longtable}	% pour les tableaux de plusieurs pages
\RequirePackage{lastpage}
\RequirePackage{multirow}
\RequirePackage{multicol}	% pour {\'e}crire dans certaines zones en colonnes : \begin{multicols}{nb colonnes}...\end{multicols} 

\RequirePackage{vmargin}
\RequirePackage{epsfig}     % pour gerer les images

\RequirePackage{tikzpeople}

%% Colors
\definecolor{verylightred}{rgb}{1.0,0.9,0.9}
\definecolor{lightred}{rgb}{1.0,0.75,0.75}
\definecolor{red}{rgb}{1.0,0.5,0.5}

%% Commands

\newcommand{\headerTest}[9]{
	#1 #2 #3 #4 #5 #6 #7 #8 #9 ... 
}

\newcommand{\titleTHESPRAWL}[0]{ \rotatebox{90}{ \textsc{\small \bfseries THE} } \textsc{\Huge \bfseries SPRAWL} }

%% \newcommand{\specificHRULE4title}[1]{~\\~\rule{0.50\textwidth}{#1px}~\\}

\newcommand{\titleTWOLINES}[1]{ \textsc{\huge \bfseries #1 }~\\~\rule{0.50\textwidth}{2px}~\\~\rule{0.50\textwidth}{2px}~\\}

\newcommand{\titleONELINES}[1]{ \textsc{\LARGE \bfseries #1 }~\\~\rule{0.50\textwidth}{1px}~\\}

\newcommand\compteArebours[0]{
	\begin{tabular}[h]{ r r r r r r }
			15h		&	18h		&	21h		&	22h		&	23h		&	24h 	\\
		\shadowbox{ \begin{minipage}[ht]{0.15\textwidth} ~ \end{minipage} } &	
			\shadowbox{ \begin{minipage}[ht]{0.15\textwidth} ~ \end{minipage} } &
			\shadowbox{ \begin{minipage}[ht]{0.15\textwidth} ~ \end{minipage} } & 
			\shadowbox{ \begin{minipage}[ht]{0.05\textwidth} ~ \end{minipage} } & 
			\shadowbox{ \begin{minipage}[ht]{0.05\textwidth} ~ \end{minipage} } & 
			\shadowbox{ \begin{minipage}[ht]{0.05\textwidth} ~ \end{minipage} } \\ 
	\end{tabular}
}


