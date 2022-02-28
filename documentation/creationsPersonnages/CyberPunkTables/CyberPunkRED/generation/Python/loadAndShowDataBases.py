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

## dataBaseJSONtest01 = ModuleHelper.loadJSONConfig( "mainSource" )
## print( dataBaseJSONtest01 )

## dataBaseJSONtest02 = ModuleHelper.loadJSONConfig( "mainSourceFR" )
## print( dataBaseJSONtest02 )

dataBaseJSONtest03 = ModuleHelper.loadJSONConfig( "mainDatabase" )
## print( dataBaseJSONtest03 )
for element in dataBaseJSONtest03:
  print ( element )
  print ( "*****" )