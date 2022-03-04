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
    print("\t **** classe ***** ")
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

## ***** biography (light) *****
biographySelector = []
for item in dataBaseJSONtest:
  if ( item.startswith( "biography-" ) ): 
    biographySelector.append( item )
    print( item )

lightbio = {}
for item in biographySelector:
  shortname = item.replace("biography-", "")
  select    = random.choice(dataBaseJSONtest[item])
  print( shortname, " => ", select )
  lightbio[ shortname ] = select

personnaeToOuput.lightbio = lightbio

## ***** appearance *****
## appearance = dataBaseJSONtest["appearance"]
clothes      = random.choice(dataBaseJSONtest["appearance"]["Clothes"])
hairstyle    = random.choice(dataBaseJSONtest["appearance"]["Hairstyle"])
affectations = random.choice(dataBaseJSONtest["appearance"]["Affectations"])
origines     = random.choice(dataBaseJSONtest["appearance"]["Origins"])
print( "\t **** Attributs ***** " )
validateAttributes = None
while (validateAttributes == None):
    print( "\t\t clothes : (", clothes, ")")
    print( "\t\t hairstyle : (", hairstyle, ")")
    print( "\t\t affectations : (", affectations, ")")
    print( "\t\t origines : (", origines, ")")
    print( "\t Valider ? [y/N]")
    validateAttributes = str(input());
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

## TODO Skills

## TODO Weapons

## TODO Armor

## TODO CyberWare

## TODO Gear

print( )
print( personnaeToOuput )
