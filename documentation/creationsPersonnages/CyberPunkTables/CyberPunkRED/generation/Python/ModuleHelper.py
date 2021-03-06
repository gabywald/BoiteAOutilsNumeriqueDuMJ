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

## Notes : https://docs.python.org/3/library/configparser.html
import configparser

import json
import codecs

def readFileToJSON( filePath ) : 
  """Read file from path indicated in parameter and return it as a JSON. """
  print ( "[[[" + filePath + "]]]" )
  json2return  = json.load(codecs.open(filePath, 'r', 'utf-8-sig'))
  ## json2return  = json.loads(open(filePath).read().decode('utf-8-sig'))
  return json2return

def readFileToList( filePath ) : 
  """Read file from path indicated in parameter and return it as a list of lines. """
  listToReturn = []
  with open(filePath, 'r') as file : 
    data     = file.read()
    listToReturn = data.split( "\n" )
  return listToReturn

def loadFileConfig( nameOfRSC, paths = 'paths'  ) : 
  """ To read file resources ! """
  ## Use a configuration file ! 'sources.ini' !
  parser = configparser.ConfigParser()
  parser.read( "sources.ini" )
  if parser.has_option(paths, nameOfRSC):
    return readFileToList( parser[ paths ].get( nameOfRSC ) )
  else:
    return []

def loadJSONConfig( nameOfRSC, paths = 'paths' ) : 
  """ To read file resources ! """
  ## Use a configuration file ! 'sources.ini' !
  parser = configparser.ConfigParser()
  parser.read( "sources.ini" )
  if parser.has_option(paths, nameOfRSC):
    return readFileToJSON( parser[ paths ].get( nameOfRSC ) )
  else:
    return []
    
def loadDataConfig( nameOfRSC, paths = 'data'  ) : 
  """ To read data resources ! """
  ## Use a configuration file ! 'sources.ini' !
  parser = configparser.ConfigParser()
  parser.read( "sources.ini" )
  if parser.has_option('data', nameOfRSC):
    return parser[ paths ].get( nameOfRSC )[2:-2].split( ", " )
  else:
    return []
