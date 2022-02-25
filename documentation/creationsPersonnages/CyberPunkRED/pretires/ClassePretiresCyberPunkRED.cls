
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

%% Commands

\newcommand{\headerTest}[9]{
	#1 #2 #3 #4 #5 #6 #7 #8 #9 ... 
}

\newcommand{\headerNameClass}[2]{
	Name (Classe) : #1 (#2)
}


