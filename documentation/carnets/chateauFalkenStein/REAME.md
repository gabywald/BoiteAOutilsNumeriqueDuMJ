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

Utilisation de texlive-latex-\* sur une Distribution Linux Ubuntu 


NOTE : make avec 'xelatex' plutôt que 'pdflatex' à cause de certains packages (notamment polices de caractères). 
Packages 'fontspec' et 'JeuxCartes' (attention compatibilité avec packages de mathématiques). 

## package JeuxCartes

Notes un peu particulières pour "linuxiens LaTeXiens avancés". 

JeuxCartes est dans "texlive-games" => "texlive-extra" dans texlive-* à partir de 2021
	- Jusqu'à cette date, installé dans /usr/share/texlive/... ; Ensuite dans /usr/local/texlive/<year> !!
	- Historiquement 20.04 si installation texlive postérieure à 2021 effectuée séparément (voir ci-dessous) ; 
	- Sur une Ubuntu postérieure (LTS 22 ou 24 ou +/plus), cela devrait fonctionner sans soucis !
	
 -- Sinon soucis compatibilité JeuxCartes avec packages xkeyval / simplekv ?! (pour version à partir de 2021)

 -- Installation manuelle utilisateur courant pour UN package : 
 -- 	0. Récupération archive CTAN ( https://ctan.org/pkg/jeuxcartes )
 -- 	1. Installer dans ~texmf/tex/latex/jeuxcartes/ ("mkdir", "cp" complet du contenu du répertoire 
 -- 	2. texhash ~/texmf
 -- 	3. kpsewhich JeuxCartes.sty (doit renvoyer "<HOME>/texmf/tex/latex/jeuxcartes/JeuxCartes.sty" )

 -- Faire de même avec une version 'compatible' du package 'xkeyval' / 'simplekv' ?? !!
 -- 	https://ctan.org/tex-archive/macros/latex/contrib/xkeyval
 -- 	https://ctan.org/pkg/keyval
 -- 	https://ctan.org/pkg/simplekv

-- Remove old TeX Live	sudo apt-get remove --purge texlive*
Install dependencies	sudo apt-get install -y perl wget xz-utils
Download TeX Live		wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
Extract and install		tar -xzf install-tl-*.tar.gz; cd install-tl-*
Run the installer		sudo perl install-tl --no-interaction
Add to PATH				echo 'export PATH=/usr/local/texlive/<year>/bin/x86_64-linux:$PATH' >> ~/.bashrc
Verify installation		tex --version
Update	tlmgr			sudo tlmgr update --self --all

=> If you prefer a full installation (all packages), omit the --no-interaction flag and select the full scheme during installation.
=> If you want to install TeX Live in your home directory (no sudo required), replace /usr/local/texlive/<year> with ~/texlive/<year> in the PATH and installation steps.

installation en local dans répertoire de base "/home/<user>/texlive" => bien spécifier répertoire de base ; et adapter PATH en conséquence !
