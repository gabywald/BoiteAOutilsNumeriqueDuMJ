package PersonnaeCyberPunkRED;

use strict;

## idées : générer variables d'en-tête fichiers [.tex] 
## include [TEX] du reste du fichier à générer en PDF
## ## ++ Makefile associés et compilé

sub new {
	my $class	= shift;
	$class		= ref($class) || $class;

	my $self	= {};

	$self->{NAME}	= undef;
	$self->{CLASS}	= undef;
	$self->{ICON}	= undef;
	
	$self->{INT}	= undef;
	$self->{REF}	= undef;
	$self->{DEX}	= undef;
	$self->{TECH}	= undef;
	$self->{COOL}	= undef;
	$self->{WILL}	= undef;
	$self->{LUCK}	= undef;
	$self->{MOVE}	= undef;
	$self->{BODY}	= undef;
	$self->{EMP}	= undef;
	$self->{HEALPOINTS}	= undef;
	$self->{ARMORSPHEAD}	= undef;
	$self->{ARMORSPBODY}	= undef;
	$self->{StartingHITS}	= undef;
	$self->{SERIOUSLYWOUNDED}	= undef;
	$self->{DEATHSAVE}			= undef;
	$self->{Perception}		= "\\dotfill";
	$self->{Tracking}		= "\\dotfill";
	$self->{Education}		= "\\dotfill";
	$self->{LocalExpert}	= "\\dotfill";
	$self->{Marksmanship}	= "\\dotfill";
	$self->{Driving}		= "\\dotfill";
	$self->{Evasion}		= "\\dotfill";
	$self->{Athletics}		= "\\dotfill";
	$self->{Stealth}		= "\\dotfill";
	$self->{Brawling}		= "\\dotfill";
	$self->{MeleeWeapon}	= "\\dotfill";
	$self->{BasicTech}		= "\\dotfill";
	$self->{CyberTech}		= "\\dotfill";
	$self->{FirstAid}		= "\\dotfill";
	$self->{Bribery}		= "\\dotfill";
	$self->{Interrogation}	= "\\dotfill";
	$self->{Persuasion}		= "\\dotfill";
	$self->{Concentration}	= "\\dotfill";
	$self->{Conversation}	= "\\dotfill";
	$self->{HumanPerception}= "\\dotfill";
	$self->{PlayInstrument}	= "\\dotfill";
	$self->{Interface}		= "\\dotfill";
	$self->{ARMORDESC}			= "";
	$self->{ARMORHEADDESC}		= "";
	$self->{ARMORTORSODESC}		= "";
	$self->{ARMORHEADVALUE}		= "";
	$self->{ARMORTORSOVALUE}	= "";
	$self->{BACKGROUND}		= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}}";
	$self->{MOTIVATION}		= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}}";
	$self->{GOALS}			= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}}";
	$self->{FRIENDS}		= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}}";
	$self->{ENEMIES}		= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}}";
	$self->{ROMANCE}		= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}}";
	$self->{PERSONALITY}	= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}}";
	$self->{CyberWarePartOne}	= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}} \\newline \\newline \\newline ";
	$self->{CyberWarePartTwo}	= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}} \\newline \\newline \\newline ";
	$self->{GearPartOne}		= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}} \\newline \\newline \\newline ";
	$self->{GearPartTwo}		= "\\resizebox{0.46\\linewidth}{25pt}{\\includegraphics{../../../images/pixel.png}} \\newline \\newline \\newline ";
	
	bless($self, $class);
	return $self;
}

sub toStringPersonnae {
	my $self = shift;
	my $toReturn = "";
	
	$toReturn .= "BEGIN personnae\n";
	$toReturn .= "NAME\t".$self->{NAME}."\n";
	$toReturn .= "CLASS\t".$self->{CLASS}."\n";
	$toReturn .= "ICON\t".$self->{ICON}."\n";
	$toReturn .= "INT\t".$self->{INT}."\n";
	$toReturn .= "REF\t".$self->{REF}."\n";
	$toReturn .= "DEX\t".$self->{DEX}."\n";
	$toReturn .= "TECH\t".$self->{TECH}."\n";
	$toReturn .= "COOL\t".$self->{COOL}."\n";
	$toReturn .= "WILL\t".$self->{WILL}."\n";
	$toReturn .= "LUCK\t".$self->{LUCK}."\n";
	$toReturn .= "MOVE\t".$self->{MOVE}."\n";
	$toReturn .= "BODY\t".$self->{BODY}."\n";
	$toReturn .= "EMP\t".$self->{EMP}."\n";
	$toReturn .= "HEAL POINTS\t".$self->{HEALPOINTS}."\n";
	$toReturn .= "ARMOR SP HEAD\t".$self->{ARMORSPHEAD}."\n";
	$toReturn .= "ARMOR SP BODY\t".$self->{ARMORSPBODY}."\n";
	$toReturn .= "Starting HITS\t".$self->{StartingHITS}."\n";
	$toReturn .= "SERIOUSLY WOUNDED\t".$self->{SERIOUSLYWOUNDED}."\n";
	$toReturn .= "DEATH SAVE\t".$self->{DEATHSAVE}."\n";
	$toReturn .= "Perception\t".$self->{Perception}."\n";
	$toReturn .= "Tracking\t".$self->{Tracking}."\n";
	$toReturn .= "Education\t".$self->{Education}."\n";
	$toReturn .= "LocalExpert\t".$self->{LocalExpert}."\n";
	$toReturn .= "Marksmanship\t".$self->{Marksmanship}."\n";
	$toReturn .= "Driving\t".$self->{Driving}."\n";
	$toReturn .= "Evasion\t".$self->{Evasion}."\n";
	$toReturn .= "Athletics\t".$self->{Athletics}."\n";
	$toReturn .= "Stealth\t".$self->{Stealth}."\n";
	$toReturn .= "Brawling\t".$self->{Brawling}."\n";
	$toReturn .= "MeleeWeapon\t".$self->{MeleeWeapon}."\n";
	$toReturn .= "BasicTech\t".$self->{BasicTech}."\n";
	$toReturn .= "CyberTech\t".$self->{CyberTech}."\n";
	$toReturn .= "FirstAid\t".$self->{FirstAid}."\n";
	$toReturn .= "Bribery\t".$self->{Bribery}."\n";
	$toReturn .= "Interrogation\t".$self->{Interrogation}."\n";
	$toReturn .= "Persuasion\t".$self->{Persuasion}."\n";
	$toReturn .= "Concentration\t".$self->{Concentration}."\n";
	$toReturn .= "Conversation\t".$self->{Conversation}."\n";
	$toReturn .= "HumanPerception\t".$self->{HumanPerception}."\n";
	$toReturn .= "PlayInstrument\t".$self->{PlayInstrument}."\n";
	$toReturn .= "Interface\t".$self->{Interface}."\n";
	$toReturn .= "ARMOR DESC\t".$self->{ARMORDESC}."\n";
	$toReturn .= "ARMOR HEAD DESC\t".$self->{ARMORHEADDESC}."\n";
	$toReturn .= "ARMOR TORSO DESC\t".$self->{ARMORTORSODESC}."\n";
	$toReturn .= "ARMOR HEAD VALUE\t".$self->{ARMORHEADVALUE}."\n";
	$toReturn .= "ARMOR TORSO VALUE\t".$self->{ARMORTORSOVALUE}."\n";
	$toReturn .= "BACKGROUND\t".$self->{BACKGROUND}."\n";
	$toReturn .= "MOTIVATION\t".$self->{MOTIVATION}."\n";
	$toReturn .= "GOALS\t".$self->{GOALS}."\n";
	$toReturn .= "FRIENDS\t".$self->{FRIENDS}."\n";
	$toReturn .= "ENEMIES\t".$self->{ENEMIES}."\n";
	$toReturn .= "ROMANCE\t".$self->{ROMANCE}."\n";
	$toReturn .= "PERSONALITY\t".$self->{PERSONALITY}."\n";
	$toReturn .= "CyberWarePartOne\t".$self->{CyberWarePartOne}."\n";
	$toReturn .= "CyberWarePartTwo\t".$self->{CyberWarePartTwo}."\n";
	$toReturn .= "GearPartOne\t".$self->{GearPartOne}."\n";
	$toReturn .= "GearPartTwo\t".$self->{GearPartTwo}."\n";
	$toReturn .= "END personnae"."\n";
	
	return $toReturn."\n\n";
}

sub toLaTeX {
	my $self = shift;
	my $toReturn = "";
	$toReturn .= "\\input{../personnaeHeader.tex}\n\n"; 

	## $toReturn .= "\\def\\FRdefCharacterSheetHeaderTitle{Feuille de Personnage Cyber Age -- \\emph{\\PersonnaeName } }\n\n"; 

	$toReturn .= "\\def\\contentNAME{".$self->{NAME}."}\n";
	$toReturn .= "\\def\\contentCLASS{".$self->{CLASS}."}\n";
	$toReturn .= "\\def\\contentICON{".$self->{ICON}."}\n";
	$toReturn .= "\\def\\caracINT{".$self->{INT}."}\n";
	$toReturn .= "\\def\\caracREF{".$self->{REF}."}\n";
	$toReturn .= "\\def\\caracDEX{".$self->{DEX}."}\n";
	$toReturn .= "\\def\\caracTECH{".$self->{TECH}."}\n";
	$toReturn .= "\\def\\caracCOOL{".$self->{COOL}."}\n";
	$toReturn .= "\\def\\caracWILL{".$self->{WILL}."}\n";
	$toReturn .= "\\def\\caracLUCK{".$self->{LUCK}."}\n";
	$toReturn .= "\\def\\caracMOVE{".$self->{MOVE}."}\n";
	$toReturn .= "\\def\\caracBODY{".$self->{BODY}."}\n";
	$toReturn .= "\\def\\caracEMP{".$self->{EMP}."}\n";
	# $toReturn .= "HEAL POINTS{".$self->{HEAL POINTS}."}\n";
	# $toReturn .= "ARMOR SP HEAD{".$self->{ARMOR SP HEAD}."}\n";
	# $toReturn .= "ARMOR SP BODY{".$self->{ARMOR SP BODY}."}\n";
	# $toReturn .= "Starting HITS{".$self->{Starting HITS}."}\n";
	# $toReturn .= "SERIOUSLY WOUNDED{".$self->{SERIOUSLY WOUNDED}."}\n";
	# $toReturn .= "DEATH SAVE{".$self->{DEATH SAVE}."}\n";
	$toReturn .= "\\def\\compPerception{".$self->{Perception}."}\n";
	$toReturn .= "\\def\\compTracking{".$self->{Tracking}."}\n";
	$toReturn .= "\\def\\compEducation{".$self->{Education}."}\n";
	$toReturn .= "\\def\\compLocalExpert{".$self->{LocalExpert}."}\n";
	$toReturn .= "\\def\\compMarksmanship{".$self->{Marksmanship}."}\n";
	$toReturn .= "\\def\\compDriving{".$self->{Driving}."}\n";
	$toReturn .= "\\def\\compEvasion{".$self->{Evasion}."}\n";
	$toReturn .= "\\def\\compAthletics{".$self->{Athletics}."}\n";
	$toReturn .= "\\def\\compStealth{".$self->{Stealth}."}\n";
	$toReturn .= "\\def\\compBrawling{".$self->{Brawling}."}\n";
	$toReturn .= "\\def\\compMeleeWeapon{".$self->{MeleeWeapon}."}\n";
	$toReturn .= "\\def\\compBasicTech{".$self->{BasicTech}."}\n";
	$toReturn .= "\\def\\compCyberTech{".$self->{CyberTech}."}\n";
	$toReturn .= "\\def\\compFirstAid{".$self->{FirstAid}."}\n";
	$toReturn .= "\\def\\compBribery{".$self->{Bribery}."}\n";
	$toReturn .= "\\def\\compInterrogation{".$self->{Interrogation}."}\n";
	$toReturn .= "\\def\\compPersuasion{".$self->{Persuasion}."}\n";
	$toReturn .= "\\def\\compConcentration{".$self->{Concentration}."}\n";
	$toReturn .= "\\def\\compConversation{".$self->{Conversation}."}\n";
	$toReturn .= "\\def\\compHumanPerception{".$self->{HumanPerception}."}\n";
	$toReturn .= "\\def\\compPlayInstrument{".$self->{PlayInstrument}."}\n";
	$toReturn .= "\\def\\compInterface{".$self->{Interface}."}\n";
	# $toReturn .= "ARMOR DESC{".$self->{ARMOR DESC}."}\n";
	# $toReturn .= "ARMOR HEAD DESC{".$self->{ARMOR HEAD DESC}."}\n";
	# $toReturn .= "ARMOR TORSO DESC{".$self->{ARMOR TORSO DESC}."}\n";
	# $toReturn .= "ARMOR HEAD VALUE{".$self->{ARMOR HEAD VALUE}."}\n";
	# $toReturn .= "ARMOR TORSO VALUE{".$self->{ARMOR TORSO VALUE}."}\n";
	$toReturn .= "\\def\\biographicBACKGROUND{".$self->{BACKGROUND}."}\n";
	$toReturn .= "\\def\\biographicMOTIVATION{".$self->{MOTIVATION}."}\n";
	$toReturn .= "\\def\\biographicGOALS{".$self->{GOALS}."}\n";
	$toReturn .= "\\def\\biographicFRIENDS{".$self->{FRIENDS}."}\n";
	$toReturn .= "\\def\\biographicENEMIES{".$self->{ENEMIES}."}\n";
	$toReturn .= "\\def\\biographicROMANCE{".$self->{ROMANCE}."}\n";
	$toReturn .= "\\def\\biographicPERSONALITY{".$self->{PERSONALITY}."}\n";
	$toReturn .= "\\def\\equipmentCyberWarePartOne{".$self->{CyberWarePartOne}."}\n";
	$toReturn .= "\\def\\equipmentCyberWarePartTwo{".$self->{CyberWarePartTwo}."}\n";
	$toReturn .= "\\def\\equipmentGearPartOne{".$self->{GearPartOne}."}\n";
	$toReturn .= "\\def\\equipmentGearPartTwo{".$self->{GearPartTwo}."}\n";

	$toReturn .= "\\input{../personnaeBottom.tex}\n";
	return $toReturn;
}

1;