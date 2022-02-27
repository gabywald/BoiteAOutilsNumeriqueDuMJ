
%% Pretire JdR CyberPunk Red
%% LaTeX Class
%% Version 0.1.0 (25/02/2022)
%% 
%% Author : Gabriel Chandesris
%% 
%% License : Creative Common CC-BY-SA

%% Class Configuration

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ClassePretiresCyberPunkRED}[202220225 Pretire JdR CyberPunk Red V0.1.0]
 
%%%  Chargement de la classe article, avec transfert d'options
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
\RequirePackage{verbatim}

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

\def\CELLblackTXTWhite{\cellcolor{black} \color{white}}
\def\CELLredTXTWhite{\cellcolor{red} \color{black}}
\def\CELLwhiteTXTWhite{\cellcolor{white} \color{black}}

%% Commands

\newcommand{\headerTest}[9]{
	#1 #2 #3 #4 #5 #6 #7 #8 #9 ... 
}

\newcommand{\headerNameClass}[2]{
	Name (Classe) : #1 (#2)
}

\newcommand{\CaracByFive}[5]{
	#1	&	#2	&	#3	&	#4	&	#5	
}

\newcommand{\CaracANYone}[1]{
	#1	
}



