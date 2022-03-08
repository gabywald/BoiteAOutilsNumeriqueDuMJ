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
               name      = None, classe    = None, image     = "NONE", age = None, 
               title     = None, healpoint = None, impact    = None, 
               int       = None, ref       = None, dex       = None, 
               tech      = None, pres      = None, vol       = None, cha = None, 
               mouv      = None, cor       = None, emp       = None, 
               biography = {}, lightbio    = {},   style     = {}, skills    = {}, 
               armor     = {}, weapons     = {},   gears     = {}, cyberware = {}): 
        self.name       = name
        self.classe     = classe
        self.image      = image
        self.age        = age
        self.title      = title
        self.healpoint  = healpoint
        if (healpoint != None):
          self.seriously  = str(int(healpoint) / 2)
        else: 
          self.seriously  = cor
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
        self.skills     = skills
        self.style      = style
        self.lightbio   = lightbio
        self.biography  = biography
        self.armor      = armor
        self.weapons    = weapons
        self.gears      = gears
        self.cyberware  = cyberware
        
  ## implement for str representation ! => print( [ <instance>] )
  def __str__(self) : 
    str = ""
    str += "BEGIN personnae\n";
    str += "CLASSE " + self.classe + "\n"
    str += "NAME " + self.name + "\n"
    str += "ICON " + self.image + "\n"
    str += "AGE " + self.age + "\n"
    str += "TITLE " + self.title + "\n"
    str += "HEALPOINTS " + self.healpoint + "\n"
    str += "SERIOUSLYWOUNDED " + self.seriously + "\n"
    str += "DEATHSAVE " + self.deathsave + "\n"
    str += "INT " + self.int + "\n"
    str += "REF " + self.ref + "\n"
    str += "DEX " + self.dex + "\n"
    str += "TECH " + self.tech + "\n"
    str += "COOL " + self.pres + "\n"
    str += "WILL " + self.vol + "\n"
    str += "LUCK " + self.cha + "\n"
    str += "MOVE " + self.mouv + "\n"
    str += "BODY " + self.cor + "\n"
    str += "EMP " + self.emp + "\n"
    for item in self.skills:
      str += item + "\t" + self.skills[ item ] + "\n"
    str += "BEGIN lightbio" + "\n"
    for item in self.lightbio:
      str += item.upper() + "\t" + self.lightbio[ item ] + "\n"
    str += "END lightbio " + "\n"
    str += "BEGIN biography" + "\n"
    for item in self.biography:
      str += item.upper() + "\t" + self.biography[ item ] + "\n"
    str += "END biography" + "\n"
    str += "BEGIN style" + "\n"
    for item in self.style:
      str += item.upper() + "\t" + self.style[ item ] + "\n"
    str += "END style" + "\n"
    # str += "armor : " + self.armor["name"] + " (" + self.armor["sp"] + ") " + "\n"
    for item in self.armor:
      # str += "armor : " + item + " (" + self.armor[ item ] + ") " + "\n"
      str += "ARMORDESC\t" + item + "\n"
      str += "ARMORHEADDESC\tTête" + "\n"
      str += "ARMORTORSODESC\tTorse" +  "\n"
      str += "ARMORHEADVALUE\t" + self.armor[ item ] + "\n"
      str += "ARMORTORSOVALUE\t" + self.armor[ item ] + "\n"
    for item in self.weapons:
      # str += "weapon : " + item + " (" + self.weapons[ item ] + ") " + "\n"
      str += "WEAPONNAME\t" + item + "\n"
      str += "WEAPONDAMAGE\t" + self.weapons[ item ] + "\n"
      ## TODO if more than one weapon : concatenate with " / "
    for item in self.cyberware:
      # str += "cyberware : " + item + "\n"
      # CyberWarePartOne	*****
      # CyberWarePartTwo	\resizebox{0.46\linewidth}{25pt}{\includegraphics{../../../../../images/pixel.png}}
      str += "CyberWarePartOne\t" + item + "\n"
      str += "CyberWarePartTwo\t\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../../../images/pixel.png}}" + "\n"
    for item in self.gears:
      # str += "gear : " + item + "\n"
      # GearPartOne	*****
      # GearPartTwo	\resizebox{0.46\linewidth}{25pt}{\includegraphics{../../../../../images/pixel.png}}
      str += "GearPartOne\t" + item + "\n"
      str += "GearPartTwo\t\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../../../images/pixel.png}}" + "\n"
    str += "END personnae" + "\n";
    return str
  
  def toStringPersonnae(self):
    return self.__str__()

  def addLightBiography( self, content ):
    self.lightbio.append( content )

