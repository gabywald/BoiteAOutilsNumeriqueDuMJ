
%% Classe LaTeX JdR TheSprawl
%% LaTeX Class
%% Version 0.1.0 (30/01/2026)
%% 
%% Author : Gabriel Chandesris
%% 
%% License : Creative Common CC-BY-SA

%% Class Configuration

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ClassePersonnaeTheSprawl}[202260205 Classe LaTeX JdR TheSprawl V0.2.0]
 
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

\RequirePackage{fancybox} %% boxes

%% \RequirePackage{tikzpeople}
\RequirePackage{tikz} %% + 'pgf' ?
%% \RequirePackage{pgf}

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

\newcommand{\titleTWOLINES}[1]{ \textsc{\huge \bfseries #1 }~\\~\rule{0.50\textwidth}{1px}~\\~\rule{0.50\textwidth}{1px}~\\} 

\newcommand{\titleONELINES}[1]{ \textsc{\LARGE \bfseries #1 }~\\~\rule{0.50\textwidth}{0.5px}~\\}

\newcommand{\underTitleChoices}[1]{ {\raggedright \footnotesize \emph{#1} }~\\ }

\newcommand{\reverseCounter}[0]{
	\begin{tabular}[h]{ r r r r r r }
			15h		&	18h		&	21h		&	22h		&	23h		&	24h 	\\
		\shadowbox{ \begin{minipage}[ht]{0.05\textwidth} ~ \end{minipage} } &	
			\shadowbox{ \begin{minipage}[ht]{0.05\textwidth} ~ \end{minipage} } &
			\shadowbox{ \begin{minipage}[ht]{0.05\textwidth} ~ \end{minipage} } & 
			\shadowbox{ \begin{minipage}[ht]{0.01\textwidth} ~ \end{minipage} } & 
			\shadowbox{ \begin{minipage}[ht]{0.01\textwidth} ~ \end{minipage} } & 
			\shadowbox{ \begin{minipage}[ht]{0.01\textwidth} ~ \end{minipage} } \\ 
	\end{tabular}
}

\newcommand{\hexWithTrayTORIGHT}[0]{
	%% \draw [very thin, gray] (0,0) grid (5,5);
	\def\rot{-60} %% rotate=30,  
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=2.0cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=1.8cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\draw[thick, black] (1.0,0.0) -- (4.0,0.0) ;
}

\newcommand{\hexWithTrayTOLEFT}[0]{
	%% \draw [very thin, gray] (0,0) grid (5,5);
	\def\rot{-60} %% rotate=30,  
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=2.0cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=1.8cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\draw[thick, black] (-1.0,0.0) -- (-4.0,0.0) ;
}

\newcommand\hexWithTrayTORIGHTnamed[1]{
	%% \draw [very thin, gray] (0,0) grid (5,5);
	\def\rot{-60} %% rotate=30,  
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=2.0cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=1.8cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node (NAME) at (2.0,0.25) {#1};
	\draw[thick, black] (1.0,0.0) -- (4.0,0.0) ;
}

\newcommand\hexWithTrayTOLEFTnamed[1]{
	%% \draw [very thin, gray] (0,0) grid (5,5);
	\def\rot{-60} %% rotate=30,  
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=2.0cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=1.8cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node (NAME) at (-2.0,0.25) {#1};
	\draw[thick, black] (-1.0,0.0) -- (-4.0,0.0) (NAME) ;
}

\newcommand\hexWithTrayTORIGHTvaluedANDnamed[2]{
	%% \draw [very thin, gray] (0,0) grid (5,5);
	\def\rot{-60} %% rotate=30,  
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=2.0cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=1.8cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {#2};
	\node (NAME) at (2.0,0.25) {#1};
	\draw[thick, black] (1.0,0.0) -- (4.0,0.0) ;
}

\newcommand\hexWithTrayTOLEFTvaluedANDnamed[2]{
	%% \draw [very thin, gray] (0,0) grid (5,5);
	\def\rot{-60} %% rotate=30,  
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=2.0cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {};
	\node[thick, regular polygon, regular polygon sides=6, shape aspect=0.5, minimum width=1.8cm, minimum height=1cm, draw, shape border rotate=\rot] (reg) {#2};
	\node (NAME) at (-2.0,0.25) {#1};
	\draw[thick, black] (-1.0,0.0) -- (-4.0,0.0) (NAME) ;
}

\newcommand{\threeHEXalternate}[0]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z in {-0.80/0.00/\hexWithTrayTOLEFT, 0.80/1.00/\hexWithTrayTORIGHT,-0.80/2.00/\hexWithTrayTOLEFT} 
				{ \begin{scope}[shift={(\x, \y)}] \z \end{scope} }
		\end{tikzpicture}
	\end{center}
}

\newcommand{\forHEXalternate}[0]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z in {-0.80/0.00/\hexWithTrayTOLEFT, 0.80/1.00/\hexWithTrayTORIGHT,-0.80/2.00/\hexWithTrayTOLEFT, 0.80/3.00/\hexWithTrayTORIGHT} 
				{ \begin{scope}[shift={(\x, \y)}] \z \end{scope} }
		\end{tikzpicture}
	\end{center}
}

\newcommand{\sixHEXalternateBLANK}[0]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z in {-0.80/0.00/\hexWithTrayTOLEFT, 0.80/1.00/\hexWithTrayTORIGHT,-0.80/2.00/\hexWithTrayTOLEFT, 0.80/3.00/\hexWithTrayTORIGHT,-0.80/4.00/\hexWithTrayTOLEFT, 0.80/5.00/\hexWithTrayTORIGHT} 
				{ \begin{scope}[shift={(\x, \y)}] \z \end{scope} }
		\end{tikzpicture}
	\end{center}
}

\newcommand{\sixHEXalternate}[0]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z in {-0.80/0.00/\hexWithTrayTOLEFT, 0.80/1.00/\hexWithTrayTORIGHT,-0.80/2.00/\hexWithTrayTOLEFT, 0.80/3.00/\hexWithTrayTORIGHT,-0.80/4.00/\hexWithTrayTOLEFT, 0.80/5.00/\hexWithTrayTORIGHT} 
				{ \begin{scope}[shift={(\x, \y)}] \z \end{scope} }
		\end{tikzpicture}
	\end{center}
}

\newcommand{\sixHEXalternateNAMEDdefault}[0]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z/\t in {-0.80/0.00/\hexWithTrayTOLEFTnamed/CRAN, 0.80/1.00/\hexWithTrayTORIGHTnamed/PRO,-0.80/2.00/\hexWithTrayTOLEFTnamed/CHAIR, 0.80/3.00/\hexWithTrayTORIGHTnamed/ESPRIT,-0.80/4.00/\hexWithTrayTOLEFTnamed/STYLE, 0.80/5.00/\hexWithTrayTORIGHTnamed/SYNTH} 
				{ \begin{scope}[shift={(\x, \y)}] \z{\t} \end{scope} }
		\end{tikzpicture}
	\end{center}
}

\newcommand{\sixHEXalternateNAMEDparams}[6]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z/\t in {-0.80/0.00/\hexWithTrayTOLEFTnamed{#1}, 0.80/1.00/\hexWithTrayTORIGHTnamed{#1},-0.80/2.00/\hexWithTrayTOLEFTnamed{#3}, 0.80/3.00/\hexWithTrayTORIGHTnamed{#4},-0.80/4.00/\hexWithTrayTOLEFTnamed{#5}, 0.80/5.00/\hexWithTrayTORIGHTnamed{#6}} 
				{ \begin{scope}[shift={(\x, \y)}] \z \end{scope} }
		\end{tikzpicture}
	\end{center}
}

\newcommand{\forHEXalternateNAMEDparams}[8]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z in {-0.80/0.00/\hexWithTrayTOLEFTvaluedANDnamed{#1}{#2}, 0.80/1.00/\hexWithTrayTORIGHTvaluedANDnamed{#3}{#4},-0.80/2.00/\hexWithTrayTOLEFTvaluedANDnamed{#5}{#6}, 0.80/3.00/\hexWithTrayTORIGHTvaluedANDnamed{#7}{#8}} 
				{ \begin{scope}[shift={(\x, \y)}] \z \end{scope} }
		\end{tikzpicture}
	\end{center}
}

\newcommand{\threeHEXalternateNAMEDparams}[6]{
	\begin{center}
		\begin{tikzpicture}
			%% \draw [very thin, gray] (00,00) grid (15,10);
			\foreach \x/\y/\z in {-0.80/0.00/\hexWithTrayTOLEFTvaluedANDnamed{#1}{#2}, 0.80/1.00/\hexWithTrayTORIGHTvaluedANDnamed{#3}{#4},-0.80/2.00/\hexWithTrayTOLEFTvaluedANDnamed{#5}{#6}} 
				{ \begin{scope}[shift={(\x, \y)}] \z \end{scope} }
		\end{tikzpicture}
	\end{center}
}
