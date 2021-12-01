#!/usr/bin/python3

__author__ = "Gabriel Chandesris"
__copyright__ = "CC Gabriel Chandesris (2021)"
__credits__ = ""
__licence__ = "GNU GENERAL PUBLIC LICENSE v3"
__version__ = "1.0.0"
__maintainer__ = "Gabriel Chandesris"
__email__ = "gabywald[at]laposte.net"
__contact__ = "gabywald[at]laposte.net"
__status__ = "Development"

from Personnae import Personnae

import BiographicDataLoadAndSelect
from BiographicDataLoadAndSelect import BiographicDataLoad
from BiographicDataLoadAndSelect import selectRandomBiographic
from BiographicDataLoadAndSelect import selectBiographicElements

biotables = BiographicDataLoad.loadBiographicsTables()
jobs = BiographicDataLoad.loadJobsToSkills()
skills = BiographicDataLoad.loadSkills()

## numberOfResults = 10
## res = selectBiographicElements( numberOfResults )
## for elt in res : 
##     print( "%s " %( elt.contents[1] ) )

## Créer personnae + comparer avec script initial en Perl
personnaeToOuput = Personnae()
## Etape 1: Imaginer un concept
concept = None
while( (concept == None) or (concept == "") ):
    print("\t **** Concept ***** ")
    concept = str(input())
    concept = concept.strip()
    print("\t\t Concept: {", concept, "}")

personnaeToOuput.concept = concept
personnaeToOuput.title = concept

## Sexe / genre  
print("\t **** Sexe ***** "); ## TODO externalize sexes in a configuration file !
sexes = ( "Indéterminé-e", "Femme", "Homme" );
i = 0;
for sex in sexes:
    print("\t\t (", (i+1), ")-{", sex, "}")
    i += 1
choice = BiographicDataLoadAndSelect.choiceWithIn(i)

selection = sexes[choice-1];
print("\t\t Selected {", selection, "}")
personnaeToOuput.sexe = selection

## Nom
name = None
while( (name == None) or (name == "") ):
    print("\t **** Nom ***** ")
    name = str(input())
    name = name.strip()
    print("\t\t Nom: {", name, "}")

personnaeToOuput.name = name

## Etape 2: Scores de caractéristiques

import re, random

def randomizer( whatdices ):
    result = re.match("^([0-9])D([0-9]+)\+?([0-9]+)?$", whatdices)
    multi    = 0;
    kind     = 0;
    adder    = 0;
    if (result != None):
        multi    = result.group(1);
        kind     = result.group(2);
        adder    = result.group(3);
        ## print( "multi:", multi, "\tkind:", kind, "\tadder:", adder)
        value    = 0
        while (value <= 2):
            for i in range(int(multi)):
                value += random.randint(1, int(kind))
            if (adder != None):
                value += int(adder)
            ## print( value )
            if (value > 10):
                value = 10
        ## print( "+++" )
        return value
    else:
        print("\t ??{", whatdices, "} ??")
        return 0

## NOTE basically (3D6+30) and mixed between all with max of 10 and min of 2
INT  = randomizer("2D6")
REF  = randomizer("2D6")
DEX  = randomizer("2D6")
TECH = randomizer("2D6")
PRES = randomizer("2D6")
VOL  = randomizer("2D6")
CHA  = randomizer("2D6")
MOUV = randomizer("2D6")
COR  = randomizer("2D6")
EMP  = randomizer("2D6")

print( "\t **** Attributs ***** " )
validateAttributes = None
while (validateAttributes == None):
    print( "\t\t INT : (", INT, ")")
    print( "\t\t REF : (", REF, ")")
    print( "\t\t DEX : (", DEX, ")")
    print( "\t\t TECH: (", TECH, ")")
    print( "\t\t PRES: (", PRES, ")")
    print( "\t\t VOL : (", VOL, ")")
    print( "\t\t CHA : (", INT, ")")
    print( "\t\t MOUV: (", MOUV, ")")
    print( "\t\t COR : (", COR, ")")
    print( "\t\t EMP : (", EMP, ")")
    print( "\t Valider ? [y/N]")
    validateAttributes = str(input());
    validateAttributes = validateAttributes.strip()
    if ( (validateAttributes == "Y") or (validateAttributes == "y") ):
        validateAttributes = "y"
    else:
        validateAttributes = "N"
    print("\t\t Validation: {" + validateAttributes + "}")
    
    attributesDetection = "(INT|REF|DEX|TECH|PRES|VOL|CHA|MOUV|COR|EMP)";
    if ( validateAttributes != "y" ):
        validateAttributes = None
        print("\t Nouveau tirage ? [All|XXX|n]")
        newTirage = str(input());
        newTirage = newTirage.strip()
        print("\t\t newTirage: {" + newTirage + "}")
        
        resutirage = re.match(attributesDetection, newTirage)
        
        if (newTirage == "All"):
            INT  = randomizer("2D6")
            REF  = randomizer("2D6")
            DEX  = randomizer("2D6")
            TECH = randomizer("2D6")
            PRES = randomizer("2D6")
            VOL  = randomizer("2D6")
            CHA  = randomizer("2D6")
            MOUV = randomizer("2D6")
            COR  = randomizer("2D6")
            EMP  = randomizer("2D6")
        elif (resutirage != None):
            resutiragegroup1 = resutirage.group(1)
            print("\t => {" + resutiragegroup1 + "}")
            if (resutiragegroup1 == "INT"):
                INT = randomizer("2D6")
            elif (resutiragegroup1 == "REF"):
                REF = randomizer("2D6")
            elif (resutiragegroup1 == "DEX"):
                DEX = randomizer("2D6")
            elif (resutiragegroup1 == "TECH"):
                TECH = randomizer("2D6")
            elif (resutiragegroup1 == "PRES"):
                PRES = randomizer("2D6")
            elif (resutiragegroup1 == "VOL"):
                VOL = randomizer("2D6")
            elif (resutiragegroup1 == "CHA"):
                CHA = randomizer("2D6")
            elif (resutiragegroup1 == "MOUV"):
                MOUV = randomizer("2D6")
            elif (resutiragegroup1 == "COR"):
                COR = randomizer("2D6")
            elif (resutiragegroup1 == "EMP"):
                EMP = randomizer("2D6")

personnaeToOuput.int  = str(INT)
personnaeToOuput.ref  = str(REF)
personnaeToOuput.dex  = str(DEX)
personnaeToOuput.tech = str(TECH)
personnaeToOuput.pres = str(PRES)
personnaeToOuput.vol  = str(VOL)
personnaeToOuput.cha  = str(CHA)
personnaeToOuput.mouv = str(MOUV)
personnaeToOuput.cor  = str(COR)
personnaeToOuput.emp  = str(EMP)

## Etape 3: Autres valeurs
## ## Points de Vie         = (COR + VOL) * 5 / 2
## ## Seuil de Blessure     = Points de Vie / 2, arrondi à l'entier inférieur

PV      = int( (COR + VOL) * 5 / 2 );
print("\t\t PV-: {", PV, "}")
seuilBL   = int( PV / 2 )
print("\t\t sBL: {", seuilBL, "}")

personnaeToOuput.pv = str(PV)
personnaeToOuput.impact = 0
personnaeToOuput.humanite = str(EMP)

## ## ## Competences Métier : EDU*20 (%)
countJobTalent    = 0;
countJobMaxims    = 40;

baseTPC = 40 ## +1 by year after 28
agesAndTPCchanges = [
                    (12, 5, -15), 
                    (13, 5, -10), 
                    (14, 4, -5), 
                    (15, 4, -1), 
                    (16, 3, 3), 
                    (17, 3, 6), 
                    (18, 3, 9), 
                    (19, 3, 12), 
                    (20, 2, 14), 
                    (21, 2, 16), 
                    (22, 2, 18), 
                    (23, 2, 20), 
                    (24, 1, 21), 
                    (25, 1, 22), 
                    (26, 1, 23), 
                    (27, 1, 24), 
                    (28, 1, 25)
                    ]

## Préparation Étape 4 : générer biographie
## ## ## quelques variables pour retenir des éléments supplémentaires liés à la biographie...
## ... preparing and function for biographic details
## Etape 4: Choisir une occupation : choix métier + répartir EDU*20 (et au moins une à 60%)

print("\t **** Age de base ***** ")
validateAge = None;
while ( validateAge == None ):
    tirageAge = random.randint(1, 6)
    if (tirageAge == 1):
        age           = 12 + random.randint(1, 16-12+1);
        argent        = random.randint(1, 6)*2000;
        count4biog    = 3;
    elif ( (tirageAge == 2) or (tirageAge == 3) ):
        age           = 17 + random.randint(1, 30-17+1);
        argent        = random.randint(1, 6)*1000 + 10000;
        count4biog    = 6; 
    elif ( (tirageAge == 4) or (tirageAge == 5) ):
        age           = 30 + random.randint(1, 50-30+1);
        argent        = random.randint(1, 6)*2000 + 30000;
        count4biog    = 6;
    elif (tirageAge == 6):
        age           = 50 + random.randint(1, 20);
        argent        = random.randint(1, 6)*2000 + 5000;
        count4biog    = 8;
    
    print("\t\t Age: ", age, " ans. ")
    print("\t\t Fortune: ", argent, " euros. ")
    
    print("\t Valider ? [y/N]")
    validateAge = str(input()).strip()
    if ( (validateAge == "Y") or (validateAge == "y") ):
        validateAge = "Y"
    else:
        validateAge = None

personnaeToOuput.age = str(age)
personnaeToOuput.argent = str(argent) ## NOTE : can be modified later !!

if (age < 28):
    for elt in agesAndTPCchanges:
        if (age == elt[0]):
            countJobMaxims += elt[2]
            break
else:
    countJobMaxims += (age-28)

print( "TPC: ", countJobMaxims)

print("\t **** Biographie ***** ");
biographicElements = [];
while (len(biographicElements) < count4biog):
    tables = BiographicDataLoad.loadBiographicsTables()
    beToShowKeep = selectRandomBiographic( tables )
    print("\t\t ", beToShowKeep.toString() )
    print("\t Conserver ? [Y/n]")
    validateBio = str(input())
    validateBio.strip()
    if ( (validateBio != "N") and (validateBio != "n") ):
        biographicElements.append( beToShowKeep )

bdl = BiographicDataLoad()

allowedJob  = {}
metiers     = bdl.loadJobsToSkills() ## {}
talents     = bdl.loadSkills() ## {}
equipments  = bdl.loadEquipmentTables() ## {}
godfathers  = {}
greatTales  = {}
cyberequips = []
cailloux    = []
programmes  = []
debtsToTo   = []
debtsFrom   = []

for metier in metiers.keys():
    allowedJob[ metier ] = 0
    godfathers[ metier ] = 0

print("\t **** Biographie ++ processing ***** ");
for bioELT in biographicElements:
    print("\t\t ", bioELT.toString() )
    personnaeToOuput.lightbio.append( bioELT.toString() );
    addins = bioELT.addins
    for addin in addins:
        print("\t\t\t [", addin, "]" )
        splitColon = addin.split(':')
        if (len(splitColon) > 1):
            first     = splitColon[0];
            second    = splitColon[1];
            if (first == "talent"):
                competences = []
                if (second == "*"):
                    competences = sorted(talents.keys()) 
                else:
                    parse     = second.split('=')
                    metier    = parse[0];
                    select    = parse[1];
                    print("\t\t => [", metier, "]")
                    if (metier in metiers.keys()):
                        if (select == "*"):
                            competences = metiers[ metier ].skills
                        elif (select == "all"):
                            for comp in competences:
                                greatTales[ comp ] = 50
                        ## TODO affiner selection ?
                        else:
                            competences = metiers[ metier ]
                    else: 
                        print("\t\t JOB [", metier, "] has NO talents DEFINED !!!!!" )
                        competences.append( "Connaissance du milleu -" + metier + "-" )
                if (len(competences) > 0):
                    ## Choix de compétence / talent...
                    print("\t\t ***** Choix parmi : ")
                    i = 0;
                    for comp in competences:
                        print("\t\t (", (i+1), ")-{", comp, "}")
                        i += 1
                    choice = BiographicDataLoadAndSelect.choiceWithIn(i)
                    selection = competences[choice-1];
                    BiographicDataLoadAndSelect.addToGreatTalent(talents, greatTales, selection, 50, 10)
                    countPersoTalent += 50
            elif (first == "debtTo"):
                print("\t\t Debt TO {", second, "} added. ")
                debtsToTo.append( second )
            elif (first == "debtFrom"):
                print("\t\t Debt FROM {", second, "} added. ")
                debtsFrom.append( second )
            elif (first == "credit"):
                resSecond = re.match("^([+-]?)(\d+)$", second)
                if (resSecond != None):
                    sum = int( resSecond.group(2) );
                    if (resSecond.group(1) == ""): 
                        argent  = sum
                    elif (resSecond.group(1) == "-"): 
                        argent -= sum
                    elif (resSecond.group(1) == "+"): 
                        argent += sum
                    print("\t\t Money is now [", argent, "]")
                else: 
                    print("\n\nUNKNOWN CREDIT FORM={[", second, "]}\n")
            elif (first == "Parrain"):
                print("\t\t Parrain {", second, "} added. ")
                if (second in godfathers.keys()): 
                    godfathers[ second ] += 1
                else:
                    godfathers[ second ] = 1
            elif (first == "logiciel"):
                print("\t\t software {", second, "} added. ")
                programmes.append( second )
            elif (first == "métier"):
                parse     = second.split('=')
                metier    = parse[0]
                if (metier in allowedJob.keys()): 
                    allowedJob[ metier ] += int(parse[1])
                else:
                    allowedJob[ metier ]  = int(parse[1])
                print("\t\t Job {", metier, "} at level [", allowedJob[ metier ], "]. ")
            elif (first == "blessures"):
                ## 3Bb in biographic table !!
                blessuresTab= biotables[ "3Bb" ].contents
                blessures	= { n : blessuresTab[n-1] for n in range(1, len(blessuresTab)+1)  }
                parse		= second.split(',')
                for elt in parse:
                    personnaeToOuput.lightbio.append( blessures[ int(elt) ] );
            else:
                print("\n\nUNKNOWN FIRST={[", first, "]}\n")
        else:
            print("TODO PARSE {[", addin, "]} !!!!! ")

personnaeToOuput.cyberequipement = equipments
personnaeToOuput.cailloux = cailloux
personnaeToOuput.programs = programmes

divers = ""
for debtTo in debtsToTo: 
    divers += "Dette envers " + debtTo + ". "
for debtFr in debtsFrom:
    divers += "Dette de " + debtFr + ". "
if (divers == ""):
    divers = "---"
personnaeToOuput.divers = divers
personnaeToOuput.argent = str(argent)

print("\t **** Choix Parrain ***** ")
possibleGDs = [];
for keyGD in (sorted(godfathers.keys())):
    localCount = godfathers[ keyGD ]
    if (localCount > 0): 
        print("\t\t {", keyGD, "}\t(", godfathers[ keyGD], ")")
        possibleGDs.append( keyGD )

if (len(possibleGDs) > 0):
    possibleGDs.append("---")
    i = 0;
    for parrain in possibleGDs: 
        print("\t\t (", (i+1), ")-{", parrain, "}")
        i += 1
    choice = BiographicDataLoadAndSelect.choiceWithIn(i)
    selection = possibleGDs[ choice-1 ];
    print("\t\t Selected {", selection, "}")
    personnaeToOuput.parrain = selection 
else: 
    print("\t Pas de choix possible !")
    personnaeToOuput.parrain = "---"

## METIER
print("\t **** Choix métier + talents / compétences ***** ")
possibleJOBs = []
for keyJOB in (sorted(allowedJob.keys())):
    localCount = allowedJob[ keyJOB ]
    if (localCount > 0):
        print("\t\t {", keyJOB, "} recommended (", localCount, "). ")
        possibleJOBs.append( keyJOB ) 
    elif (localCount < 0): 
        print("\t\t {", keyJOB, "} not permitted (", localCount, "). ")

if (len(possibleJOBs) == 0):
    for keyJOB in (sorted(allowedJob.keys())):
        localCount = allowedJob[ keyJOB ]
        if (localCount >= 0): 
            possibleJOBs.append( keyJOB ) 

if (len(possibleJOBs) >= 0):
    i = 0
    for job in possibleJOBs:
        print("\t\t (", (i+1), ")-{", job, "}")
        i += 1
    choice = BiographicDataLoadAndSelect.choiceWithIn(i)               
    selection = possibleJOBs[choice-1];
    print("\t\t Selected {", selection, "}")
    personnaeToOuput.metier = selection 
    ## appliquer talents / compétences : choix sur liste par métier sélectionné
    competences = metiers[ selection ].skills
    ## boucle interactive
    while( countJobTalent < countJobMaxims):
        print("\t **** Choix valeurs par compétence ? (min 2, max 6) TPCmax: ", countJobMaxims, "\tactual: ", countJobTalent)
        i = 0
        for comp in competences: 
            print("\t\t (", (i+1), ")-{", comp, "} = ", end='')
            ## print( talents[ comp ].level )
            if (not comp in greatTales):
                greatTales[ comp ] = 0
            print( greatTales[ comp ] )
            i += 1
        choice = BiographicDataLoadAndSelect.choiceWithIn(i)               
        selectedComp = competences[choice-1];
        print("\t\t Selected {", selectedComp, "}")
        print("\t **** Choix valeurs ? (min 2, max 6) TPCmax: ", countJobMaxims, "\tactual: ", countJobTalent)
        value2set = BiographicDataLoadAndSelect.choiceWithTwo()
        ## Pour la dernière note : si excessive, sur ce qui reste par rapport au maximum
        if ( (countJobTalent + value2set) > countJobMaxims):
            value2set = countJobMaxims - countJobTalent
        BiographicDataLoadAndSelect.addToGreatTalent(talents, greatTales, selectedComp, value2set, value2set, 1)
        countJobTalent += value2set
else:
    print("\t Pas de choix possible !")
    personnaeToOuput.metier( "--- ??" )

print("\t **** Compilation talents / compétences ***** ")
talentsProjection = []
for talentName in (sorted(greatTales.keys())): 
    talentsProjection.append(talentName + "\t" + str(greatTales[ talentName ]))
    
personnaeToOuput.talents.extend( talentsProjection )

## Etape 5: Les Compétences d'intérêts personnels (INT*10% ailleurs) => indiquer valeur
remain4job = "For TPC, max was [" + str(countJobMaxims) + "], used [" + str(countJobTalent) + "], remain [" + str(countJobMaxims - countJobTalent) + "]";

personnaeToOuput.addLightBiography( remain4job )

print( remain4job )

## Etape 6: Finitions
import os
if not os.path.exists("../generated"):
    os.makedirs("../generated")

outputFile = concept + "-" + name;
outputFile = re.sub(" ", "", outputFile)
outputFile = "../generated/personnae" + outputFile + ".txt";
with open(outputFile, "w", encoding = "utf-8") as file:
    file.write( personnaeToOuput.toStringPersonnae() )

os.system( "../convertLaTeXChars.pl " + outputFile);

## ## ## ...

