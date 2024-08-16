# BoiteAOutilsNumeriqueDuMJ

Une "Boite à outils" / ToolBox pour MJ / Meneur de Jeu, pour du Jeu de Rôle (JdR). 

**Un outil d'assistance au MJ (scénario, improvisation, fiche de PJ et PNJ, génération de fiches...)** ; dans l'idée : un écran / paravent du MJ, dans un objectif fonctionnel et utilitaire. 

**Pour démarrer** (20240816 ou 16 août 2024) : voyez d'abord les idées rassemblées ici (ci-dessous) et dansle README du répertoire 'documentation'

## Qui peut participer ?

Toute personne désireuse de le faire, avec quelques idées, de la débrouillardise et de la bonne volonté. Un message à **gabywald[at]laposte.net** fera toujours plaisir (**remplacez '[at]' par une arobase '@'**). 

Différents types de participations possibles (non exclusives) : 
  * Amener de la documentation et des idées (liens internet, rédaction en "pur texte"...) ; 
  * Relecture / Écriture de documentation ; 
  * Définir outil(s) et besoin(s) associé(s) ; 
  * Coder / faire de la programmation ; 
  * ... 

## Idées de base

### "DM Digital ToolBox" / "Boite à Outils Numérique du MJ"

Quelques idées de base pour ce 'repository' : 

  * Outil préparation de partie / en cours de partie
    * => IHM avec Onglets (Tabs) et appels de fonctions ; (graphique ou ligne de commande) ; 
    * Inspiration "à la volée" (évènement, PNJ, lieu, ...) ; 
    * Tâches / Quêtes en cours ; 
    * Ajout de données (étapes, scénarios, campagnes, PJ, PNJ, documents de jeu...) ; 
    * Gestion PBtA (?) ou similaire (actions pré-définies ou catégories) ; 
    * Diagramme du scénario / Diagramme campagne en cours ; 
  * Présentation(s) "Atelier(s) MJ"

### Idées en vrac

  * Des scénarios, des petits JdR, des petites idées...
  * De la ludopédagogie / gamification ?
  * Faire un lien avec un annuaire de ressources en JdR ?
  * Pourquoi mettre / indiquer le JdR sur son CV ?
  * Fiche mémo des "Trigger Warning" (situations sensibles pour certaines personnes) ; 
  * Licence de publication, OGL / Open Game License, similarités avec les Licences informatiques (cf. https://choosealicense.com/ -- Choose an open source license )
  * ... 

### Autres idées

Voir aussi pour quelques ressources : 
  * https://github.com/gabywald/GlobalProjetJdR
  * https://github.com/gabywald/WriterInspiration
  * ... 

## Quelques éléments pratiques

### Notions de base et outils

  * Ce qu'est le **"texte brut"** ("Plain Text", et pourquoi c'est bien pratique) : 
    * https://fr.wikipedia.org/wiki/Texte_brut 
    * https://fr.wikipedia.org/wiki/Fichier_texte
    * https://techlib.fr/definition/plaintext.html
  * *Outils pour le texte brut* : 
    * (Tout système)Éditeur de texte : https://fr.wikipedia.org/wiki/Éditeur_de_texte
    * (Windows) NotePad++ https://notepad-plus-plus.org/ ; 
    * (Mac OS X) TextEdit, SimpleText, BBEdit... 
    * (Linux, Unix, ...) vi, emacs, gedit, jedit... *Normalement vous savez / avez déjà, demandez si vous ne savez pas* ; 
    * ...
  * Comment formatter du texte / indiquer une mise en page en texte brut ?
    * MarkDown : https://fr.wikipedia.org/wiki/Markdown
    * AsciiDoc : https://fr.wikipedia.org/wiki/AsciiDoc
    * (plus avancé) LaTeX : https://fr.wikipedia.org/wiki/LaTeX
    * (générique) PanDoc : https://fr.wikipedia.org/wiki/Pandoc -- https://pandoc.org/
    * ... 
  * ... 
  * Concernant le dev (outils, IDE / environnements de développement et gestionnaires de code source) : 
    * IDE / Environnement de développement : https://fr.wikipedia.org/wiki/Environnement_de_développement
    * Eclipse est plutôt recommandé (quoique si vous préférez IntelliJ, ça passe aussi)
    * Git ! (ressources facilement disponibles, sinon demandez gentiment !)
    * Maven 3
    * Java 8
    * Python 3
    * ... 
  * ... 

### Localisation de code source et ressources dans ce projet

L'organisation de ce projet (basé sur Eclipse 2020+) comprend : 
  * Ce fichier README.md
  * Licence GPL v3
  * Divers fichiers de configuration 
    - pom.xml de Maven, 
    - '.gitignore' de base pour GIT, 
    - préférences / settings Eclipse
  * Répertoires de codes sources et de ressources : 
    * src/main/java
    * src/main/python
    * src/main/main/resources
    * src/test/java
    * src/test/resources
  * Répertoire "documentation" : voir fichier README.md dédié !
  * ...

... 