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

class PersonnaeCyberPunkRED( object ) :
  def __init__(self,
               name      = None, classe   = None, image     = "img/personnageAnonymous.jpg", 
               title     = None, healpoint= None, impact    = None, 
               int       = None, ref      = None, dex       = None, 
               tech      = None, pres     = None, vol       = None, cha = None, 
               mouv      = None, cor      = None, emp       = None,  
               biography = [], lightbio    = []): 
        self.name       = name
        self.classe     = classe
        self.image      = image
        self.title      = title
        self.healpoint  = healpoint
        if (healpoint != None):
          self.seriously  = str(int(healpoint) / 2)
        else: 
          self.seriously  = healpoint
        self.deathsave  = cor
        self.int        = int
        self.ref        = ref
        self.dex        = dex
        self.tech       = tech
        self.pres       = pres
        self.vol        = vol
        self.cha        = cha
        self.mouv       = mouv
        self.cor        = cor
        self.emp        = emp
        self.lightbio   = lightbio
        self.biography  = biography
        
  ## implement for str representation ! => print( [ <instance>] )
  def __str__(self) : 
    str = ""
    str += "BEGIN personnae\n";
    str += "CLASSE " + self.classe + "\n"
    str += "NAME " + self.name + "\n"
    str += "IMAGE " + self.image + "\n"
    str += "TITLE " + self.title + "\n"
    str += "healpoint " + self.healpoint + "\n"
    str += "seriously " + self.seriously + "\n"
    str += "deathsave " + self.deathsave + "\n"
    str += "int " + self.int + "\n"
    str += "ref " + self.ref + "\n"
    str += "dex " + self.dex + "\n"
    str += "tech " + self.tech + "\n"
    str += "pres " + self.pres + "\n"
    str += "vol " + self.vol + "\n"
    str += "cha " + self.cha + "\n"
    str += "mouv " + self.mouv + "\n"
    str += "cor " + self.cor + "\n"
    str += "emp " + self.emp + "\n"
    str += "BEGIN lightbio" + "\n";
    for item in self.lightbio:
      str += item + "\n"
    str += "END lightbio " + "\n"
    str += "BEGIN biography" + "\n"
    for item in self.biography:
      str += item + "\n"
    str += "END biography" + "\n";
    str += "END personnae" + "\n";
    return str
  
  def toStringPersonnae(self):
    return self.__str__()

  def addLightBiography( self, content ):
    self.lightbio.append( content )

