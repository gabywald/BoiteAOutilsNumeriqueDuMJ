#!/usr/bin/python3

__author__ = "Gabriel Chandesris"
__copyright__ = "CC Gabriel Chandesris (2022)"
__credits__ = ""
__licence__ = "GNU GENERAL PUBLIC LICENSE v3"
__version__ = "1.0.0"
__maintainer__ = "Gabriel Chandesris"
__email__ = "gabywald[at]laposte.net"
__contact__ = "gabywald[at]laposte.net"
__status__ = "Development"

import ModuleHelper
import random
from PersonnaeCyberPunkRED import PersonnaeCyberPunkRED

dataBaseJSONtest = ModuleHelper.loadJSONConfig( "mainDatabase" )

## Personnae
personnaeToOuput = PersonnaeCyberPunkRED()

## Nom
name = None
while( (name == None) or (name == "") ):
    print("\t **** Nom ***** ")
    name = str(input())
    name = name.strip()
    print("\t\t Nom: {", name, "}")

personnaeToOuput.name = name

## Classe
roleListBase = list(dataBaseJSONtest["role_stats"])
roleListSelector = []
for item in roleListBase:
  if ( not item.startswith( "**" ) ): 
    roleListSelector.append( item )
    print( item )

classe = None
while ( ( (classe == None) or (classe == "") ) or (classe not in roleListSelector) ):
    print("\t **** Classe ***** ")
    classe = str(input())
    classe = classe.strip()
    print("\t\t Classe: {", classe, "}")

personnaeToOuput.classe = classe
personnaeToOuput.title = name + " (" + classe + ") "

stats = random.choice(list(dataBaseJSONtest["role_stats"][ classe ]))
INT  = stats["int"]
REF  = stats["ref"]
DEX  = stats["dex"]
TECH = stats["tech"]
PRES = stats["cool"]
VOL  = stats["will"]
CHA  = stats["luck"]
MOUV = stats["move"]
COR  = stats["body"]
EMP  = stats["emp"]

print( "\t **** Caracteristics ***** " )
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
    
    if ( validateAttributes != "y" ):
      stats = random.choice(list(dataBaseJSONtest["role_stats"][ classe ]))
      INT  = stats["int"]
      REF  = stats["ref"]
      DEX  = stats["dex"]
      TECH = stats["tech"]
      PRES = stats["cool"]
      VOL  = stats["will"]
      CHA  = stats["luck"]
      MOUV = stats["move"]
      COR  = stats["body"]
      EMP  = stats["emp"]
      validateAttributes = None

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

personnaeToOuput.healpoint = str(int(10 + 5 * ( (COR + VOL) / 2 )))
personnaeToOuput.seriously = str(int(int(personnaeToOuput.healpoint) / 2))
personnaeToOuput.deathsave = personnaeToOuput.cor

print( "healpoint: ", personnaeToOuput.healpoint )
print( "seriously: ", personnaeToOuput.seriously )
print( "deathsave: ", personnaeToOuput.deathsave )

## ***** Biography (light) *****
print( "***** Biography (light) *****" )
biographySelector = []
for item in dataBaseJSONtest:
  if ( item.startswith( "biography-" ) ): 
    biographySelector.append( item )
    # print( item )

lightbio = {}
for item in biographySelector:
  shortname = item.replace("biography-", "")
  select    = random.choice(dataBaseJSONtest[item])
  print( shortname, " => ", select )
  lightbio[ shortname ] = select

personnaeToOuput.lightbio = lightbio

## ***** Appearance *****
## appearance = dataBaseJSONtest["appearance"]
clothes      = random.choice(dataBaseJSONtest["appearance"]["Clothes"])
hairstyle    = random.choice(dataBaseJSONtest["appearance"]["Hairstyle"])
affectations = random.choice(dataBaseJSONtest["appearance"]["Affectations"])
origines     = random.choice(dataBaseJSONtest["appearance"]["Origins"])
print( "\t **** Appearance ***** " )
validateAttributes = None
while (validateAttributes == None):
    print( "\t\t clothes : (", clothes, ")")
    print( "\t\t hairstyle : (", hairstyle, ")")
    print( "\t\t affectations : (", affectations, ")")
    print( "\t\t origines : (", origines, ")")
    print( "\t Valider ? [y/N]")
    validateAttributes = str(input())
    validateAttributes = validateAttributes.strip()
    if ( (validateAttributes == "Y") or (validateAttributes == "y") ):
        validateAttributes = "y"
    else:
        validateAttributes = "N"
    print("\t\t Validation: {" + validateAttributes + "}")
    
    if ( validateAttributes != "y" ):
      clothes      = random.choice(dataBaseJSONtest["appearance"]["Clothes"])
      hairstyle    = random.choice(dataBaseJSONtest["appearance"]["Hairstyle"])
      affectations = random.choice(dataBaseJSONtest["appearance"]["Affectations"])
      origines     = random.choice(dataBaseJSONtest["appearance"]["Origins"])
      validateAttributes = None

style = {}
style[ "clothes" ]      = clothes
style[ "hairstyle" ]    = hairstyle
style[ "affectations" ] = affectations
style[ "origines"]      = origines
personnaeToOuput.style  = style

## ***** Armor *****
print( "\t **** Armor ***** " )
index     = 0
armorLIST = []
for item in dataBaseJSONtest["armor"]:
  print( index, " -- ", item["name"], " : ", item["sp"] )
  armorLIST.append( item )
  index += 1

select = None
while (select == None):
  print( "Which one ?" )
  select = int(input())
  if ( (select < 0) or (select >= len(armorLIST)) ):
    select = None
  else:
    selected = armorLIST[ select ]
    personnaeToOuput.armor[ selected["name"] ] = str(selected["sp"])

## ***** Weapons *****
print( "\t **** Weapons ***** " )
index      = 0
weaponLIST = []
for item in dataBaseJSONtest["weapons"]:
  print( index, " -- ", item )
  weaponLIST.append( item )
  index += 1

selector = None
maxWeaps = 3
while (selector == None):
  print( "Number[0-3] ?" )
  selector = int(input())
  if ( (selector < 0) or (selector > maxWeaps) ):
    selector = None

for i in range(selector):
  select = None
  while (select == None):
    print( "Which one ?" )
    select = int(input())
    if ( (select < 0) or (select >= len(armorLIST)) ):
      select = None
    else:
      selected = weaponLIST[ select ]
      personnaeToOuput.weapons[ selected ] = dataBaseJSONtest["weapons"][ selected ]["damage"]

## ***** CyberWare *****
print( "\t **** CyberWare ***** " )
index         = 0
cyberwareLIST = []
for item in dataBaseJSONtest["cyberware"]:
  print( index, " -- ", item, ":", dataBaseJSONtest["cyberware"][ item ]["description"] )
  cyberwareLIST.append( item )
  index += 1

selector = None
maxWeaps = 5
while (selector == None):
  print( "Number[0-5] ?" )
  selector = int(input())
  if ( (selector < 0) or (selector > maxWeaps) ):
    selector = None

for i in range(selector):
  select = None
  while (select == None):
    print( "Which one ?" )
    select = int(input())
    if ( (select < 0) or (select >= len(cyberwareLIST)) ):
      select = None
    else:
      selected = cyberwareLIST[ select ]
      personnaeToOuput.cyberware[ selected ] = selected

## ***** Gear *****
print( "\t **** Gear ***** " )
index    = 0
gearLIST = []
for item in dataBaseJSONtest["gears"]:
  print( index, " -- ", item, ":", dataBaseJSONtest["gears"][ item ]["description"] )
  gearLIST.append( item )
  index += 1

selector = None
maxWeaps = 5
while (selector == None):
  print( "Number[0-5] ?" )
  selector = int(input())
  if ( (selector < 0) or (selector > maxWeaps) ):
    selector = None

for i in range(selector):
  select = None
  while (select == None):
    print( "Which one ?" )
    select = int(input())
    if ( (select < 0) or (select >= len(gearLIST)) ):
      select = None
    else:
      selected = gearLIST[ select ]
      personnaeToOuput.gears[ selected ] = selected

## TODO Skills
## ## numnber or '\dotfill'
## ## remove spaces in names for generation


print( )

## EXPORT DATA to generated DIRECTORY ***** 
import os, re
if not os.path.exists("../generated"):
    os.makedirs("../generated")

outputFile = classe + "-" + name;
outputFile = re.sub(" ", "", outputFile)
outputFile = "../generated/personnae" + outputFile + ".txt"
with open(outputFile, "w", encoding = "utf-8") as file:
    file.write( personnaeToOuput.toStringPersonnae() )

os.system( "../convertLaTeXChars.pl " + outputFile)

print( outputFile )

