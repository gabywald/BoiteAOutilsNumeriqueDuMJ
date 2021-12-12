#!/usr/bin/python3

class Personnae( object ) :
  def __init__(self,
               name      = None, concept  = None, image     = "img/personnageAnonymous.jpg", 
               title     = None, pv       = None, impact    = None, 
               humanite  = None, int      = None, ref       = None, 
               dex       = None, tech     = None, pres      = None, 
               vol       = None, cha      = None, mouv      = None, 
               cor       = None, emp      = None,  
               age       = None, sexe     = None, parrain   = None,  
               argent    = None, metier   = None, divers    = None,  
               biography = [], cyberequip = [], cailloux    = [], 
               programs  = [], talents    = [], lightbio    = []): 
        self.name       = name
        self.concept    = concept
        self.image      = image
        self.title      = title
        self.impact     = impact
        self.pv         = pv
        self.humanite   = humanite
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
        self.cyberequip = cyberequip
        self.cailloux   = cailloux
        self.programs   = programs
        self.talents    = talents
        self.lightbio   = lightbio
        self.age        = age
        self.sexe       = sexe
        self.parrain    = parrain
        self.argent     = argent
        self.metier     = metier
        self.divers     = divers
        self.biography  = biography
        
  ## implement for str representation ! => print( [ <instance>] )
  def __str__(self) : 
    str = ""
    str += "BEGIN personnae\n";
    str += "CONCEPT " + self.concept + "\n"
    str += "NAME " + self.name + "\n"
    str += "IMAGE " + self.image + "\n"
    str += "TITLE " + self.title + "\n"
    str += "PV " + self.pv + "\n"
    str += "HUMANITE " + self.humanite + "\n"
    str += "INT " + self.int + "\n"
    str += "REF " + self.ref + "\n"
    str += "DEX " + self.dex + "\n"
    str += "TECH " + self.tech + "\n"
    str += "PRES " + self.pres + "\n"
    str += "VOL " + self.vol + "\n"
    str += "CHA " + self.cha + "\n"
    str += "MOUV " + self.mouv + "\n"
    str += "COR " + self.cor + "\n"
    str += "EMP " + self.emp + "\n"
    str += "BEGIN cyberequipement" + "\n"
    for item in self.cyberequip: 
      str += item + "\n"
    str += "END cyberequipement" + "\n";
    str += "BEGIN cailloux" + "\n"
    for item in self.cailloux:
      str += item + "\n"
    str += "END cailloux" + "\n";
    str += "AGE " + self.age + "\n";
    str += "SEXE " + self.sexe + "\n";
    str += "PARRAIN " + self.parrain + "\n";
    str += "ARGENT " + self.argent + "\n";
    str += "DIVERS " + self.divers + "\n";
    str += "METIER " + self.metier + "\n";
    str += "BEGIN talents" + "\n";
    for item in self.talents:
      str += item + "\n"
    str += "END talents" + "\n";
    str += "BEGIN lightbio" + "\n";
    for item in self.lightbio:
      str += item + "\n"
    str += "END lightbio " + "\n";
    str += "BEGIN biography" + "\n";
    for item in self.biography:
      str += item + "\n"
    str += "END biography" + "\n";
    str += "END personnae" + "\n";
    return str
  
  def toStringPersonnae(self):
    return self.__str__()

  def addLightBiography( self, content ):
    self.lightbio.append( content )

