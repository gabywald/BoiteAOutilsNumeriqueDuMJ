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
import re

## dataBaseJSONtest01 = ModuleHelper.loadJSONConfig( "mainSource" )
## print( dataBaseJSONtest01 )

## dataBaseJSONtest02 = ModuleHelper.loadJSONConfig( "mainSourceFR" )
## print( dataBaseJSONtest02 )

dataBaseJSONtest03 = ModuleHelper.loadJSONConfig( "mainDatabase" )
## print( dataBaseJSONtest03 )
for element in dataBaseJSONtest03:
  print ( element )
  print ( "*****" )

basicData = ModuleHelper.loadFileConfig( "basicData" )
for line in basicData:
  resultIgnore = re.match( "^## (.*)$", line)
  resultTitle = re.match( "^=> (.*)\t(.*)\t(.*)$", line)
  resultCaracteristics = re.match( "^\t([0-9]+)\t([0-9]+)\t([0-9]+)\t([0-9]+)\t([0-9]+)\t([0-9]+)\t([0-9]+)\t([0-9]+)\t([0-9]+)\t([0-9]+)(\t\*)?$", line)
  if (resultIgnore != None) : 
    pass
  elif (resultCaracteristics != None) : 
    pass
    ## print( line )
    ## for elt in resultCaracteristics.groups():
    ##   print( "**", elt, "**" )
    # print( "\t\t\t{ \"int\": ",   resultCaracteristics.groups()[0], \
    # 		", \"ref\": ",  resultCaracteristics.groups()[1], \
    # 		", \"dex\": ",  resultCaracteristics.groups()[2], \
    # 		", \"tech\": ", resultCaracteristics.groups()[3], \
    # 		", \"cool\": ", resultCaracteristics.groups()[4], \
    # 		", \"will\": ", resultCaracteristics.groups()[5], \
    # 		", \"luck\": ", resultCaracteristics.groups()[6], \
    # 		", \"move\": ", resultCaracteristics.groups()[7], \
    # 		", \"body\": ", resultCaracteristics.groups()[8], \
    # 		", \"emp\": ",  resultCaracteristics.groups()[9], " }, " )
  elif (resultTitle != None) : 
    print( resultTitle.groups()[0], " => ", resultTitle.groups()[1], " (", resultTitle.groups()[2], "). " )


