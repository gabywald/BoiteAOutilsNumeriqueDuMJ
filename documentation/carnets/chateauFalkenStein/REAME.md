# Carnet Château FalkenStein

Fichier README bref et concis servant pour prise de notes de développeemnt de ce carnet "prêt-à-imprimer". 

## Objectif principal

Génération d'un fichier PDF imprimable pour le contenu du carnet. 
Couverture du carnet fait de façon séparée. 

## Fontes / Polices de caractères

 - "Standard" : 'Liberation Serif'
 - Chomsky : https://fontmeme.com/polices/police-chomsky/
 - Z003 : https://fontmeme.com/polices/police-z003/
 
NOTES : vérifier comment installer les polices de caractères (ici TTF) !

## Usage de LaTeX et packages dédiés

utilisation de texlive-latex-* sur une Ubuntu 20.04. 

NOTE : make avec 'xelatex' plutôt que 'pdflatex' à cause de certains packages (notamment polices de caractères). 
Packages 'fontspec' et 'JeuxCartes' (attention compatibilité avec packages de mathématiques). 

## package JeuxCartes

JeuxCartes est dans "texlive-games" => "texlive-extra"
Soucis compatibilité avec xkeyval ?! (pour version à partir de 2021)

Installation manuelle utilisateur courant : 
	0. Récupération archive CTAN ( https://ctan.org/pkg/jeuxcartes )
	1. Installer dans ~texmf/tex/latex/jeuxcartes/ ("mkdir", "cp" complet du contenu du répertoire 
	2. texhash ~/texmf
	3. kpsewhich JeuxCartes.sty (doit renvoyer "<HOME>/texmf/tex/latex/jeuxcartes/JeuxCartes.sty" )

Faire de même avec une version 'compatible' du package 'xkeyval' / 'simplekv' ?? !!

