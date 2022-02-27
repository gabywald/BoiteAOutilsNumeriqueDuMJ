#!/usr/bin/perl -w

use strict;

use lib '.';
use PersonnaeCyberPunkRED;

my $fileToLoad			= "personnaeBase.txt";

my @personnaes			= ();

my $currentPersonnae	= undef;

my $flagPersonnae		= 0;
open (INPUT, "<".$fileToLoad);
while (my $line = <INPUT>) {
	$line =~ s/[\n\r]//;
	if ($line =~ /BEGIN personnae/) { 
		$flagPersonnae = 1;
		$currentPersonnae = PersonnaeCyberPunkRED->new();
	} ## END "if ($line =~ /BEGIN personnae/)"
	if ($line =~ /END personnae/) { 
		$flagPersonnae = 0;
		if (defined $currentPersonnae) {
			push(@personnaes, $currentPersonnae);
			print $currentPersonnae->toStringPersonnae();
			$currentPersonnae = undef;
		} ## END "if (defined $currentPersonnae)"
	} ## END "if ($line =~ /END personnae/)"
	if ($flagPersonnae == 1) {
		if ($line =~ /^NAME\t(.*?)$/)	{ $currentPersonnae->{NAME} = $1; }
		if ($line =~ /^CLASS\t(.*?)$/)	{ $currentPersonnae->{CLASS} = $1; }
		if ($line =~ /^ICON\t(.*?)$/)	{ $currentPersonnae->{ICON} = $1; }
		if ($line =~ /^INT\t(.*?)$/)	{ $currentPersonnae->{INT} = $1; }
		if ($line =~ /^REF\t(.*?)$/)	{ $currentPersonnae->{REF} = $1; }
		if ($line =~ /^DEX\t(.*?)$/)	{ $currentPersonnae->{DEX} = $1; }
		if ($line =~ /^TECH\t(.*?)$/)	{ $currentPersonnae->{TECH} = $1; }
		if ($line =~ /^COOL\t(.*?)$/)	{ $currentPersonnae->{COOL} = $1; }
		if ($line =~ /^WILL\t(.*?)$/)	{ $currentPersonnae->{WILL} = $1; }
		if ($line =~ /^LUCK\t(.*?)$/)	{ $currentPersonnae->{LUCK} = $1; }
		if ($line =~ /^MOVE\t(.*?)$/)	{ $currentPersonnae->{MOVE} = $1; }
		if ($line =~ /^BODY\t(.*?)$/)	{ $currentPersonnae->{BODY} = $1; }
		if ($line =~ /^EMP\t(.*?)$/)	{ $currentPersonnae->{EMP} = $1; }
		if ($line =~ /^HEALPOINTS\t(.*?)$/)			{ $currentPersonnae->{HEALPOINTS} = $1; }
		if ($line =~ /^ARMORSPHEAD\t(.*?)$/)		{ $currentPersonnae->{ARMORSPHEAD} = $1; }
		if ($line =~ /^ARMORSPBODY\t(.*?)$/)		{ $currentPersonnae->{ARMORSPBODY} = $1; }
		if ($line =~ /^StartingHITS\t(.*?)$/)		{ $currentPersonnae->{StartingHITS} = $1; }
		if ($line =~ /^SERIOUSLYWOUNDED\t(.*?)$/)	{ $currentPersonnae->{SERIOUSLYWOUNDED} = $1; }
		if ($line =~ /^DEATHSAVE\t(.*?)$/)			{ $currentPersonnae->{DEATHSAVE} = $1; }
		if ($line =~ /^Perception\t(.*?)$/)		{ $currentPersonnae->{Perception} = $1; }
		if ($line =~ /^Tracking\t(.*?)$/)		{ $currentPersonnae->{Tracking} = $1; }
		if ($line =~ /^Education\t(.*?)$/)		{ $currentPersonnae->{Education} = $1; }
		if ($line =~ /^LocalExpert\t(.*?)$/)	{ $currentPersonnae->{LocalExpert} = $1; }
		if ($line =~ /^Marksmanship\t(.*?)$/)	{ $currentPersonnae->{Marksmanship} = $1; }
		if ($line =~ /^Driving\t(.*?)$/)		{ $currentPersonnae->{Driving} = $1; }
		if ($line =~ /^Evasion\t(.*?)$/)		{ $currentPersonnae->{Evasion} = $1; }
		if ($line =~ /^Athletics\t(.*?)$/)		{ $currentPersonnae->{Athletics} = $1; }
		if ($line =~ /^Stealth\t(.*?)$/)		{ $currentPersonnae->{Stealth} = $1; }
		if ($line =~ /^Brawling\t(.*?)$/)		{ $currentPersonnae->{Brawling} = $1; }
		if ($line =~ /^MeleeWeapon\t(.*?)$/)	{ $currentPersonnae->{MeleeWeapon} = $1; }
		if ($line =~ /^BasicTech\t(.*?)$/)		{ $currentPersonnae->{BasicTech} = $1; }
		if ($line =~ /^CyberTech\t(.*?)$/)		{ $currentPersonnae->{CyberTech} = $1; }
		if ($line =~ /^FirstAid\t(.*?)$/)		{ $currentPersonnae->{FirstAid} = $1; }
		if ($line =~ /^Bribery\t(.*?)$/)		{ $currentPersonnae->{Bribery} = $1; }
		if ($line =~ /^Interrogation\t(.*?)$/)	{ $currentPersonnae->{Interrogation} = $1; }
		if ($line =~ /^Persuasion\t(.*?)$/)		{ $currentPersonnae->{Persuasion} = $1; }
		if ($line =~ /^Concentration\t(.*?)$/)	{ $currentPersonnae->{Concentration} = $1; }
		if ($line =~ /^Conversation\t(.*?)$/)	{ $currentPersonnae->{Conversation} = $1; }
		if ($line =~ /^HumanPerception\t(.*?)$/){ $currentPersonnae->{HumanPerception} = $1; }
		if ($line =~ /^PlayInstrument\t(.*?)$/)	{ $currentPersonnae->{PlayInstrument} = $1; }
		if ($line =~ /^Interface\t(.*?)$/)		{ $currentPersonnae->{Interface} = $1; }
		if ($line =~ /^ARMORDESC\t(.*?)$/)			{ $currentPersonnae->{ARMORDESC} = $1; }
		if ($line =~ /^ARMORHEADDESC\t(.*?)$/)		{ $currentPersonnae->{ARMORHEADDESC} = $1; }
		if ($line =~ /^ARMORTORSODESC\t(.*?)$/)		{ $currentPersonnae->{ARMORTORSODESC} = $1; }
		if ($line =~ /^ARMORHEADVALUE\t(.*?)$/)		{ $currentPersonnae->{ARMORHEADVALUE} = $1; }
		if ($line =~ /^ARMORTORSOVALUE\t(.*?)$/)	{ $currentPersonnae->{ARMORTORSOVALUE} = $1; }
		if ($line =~ /^BACKGROUND\t(.*?)$/)		{ $currentPersonnae->{BACKGROUND} = $1; }
		if ($line =~ /^MOTIVATION\t(.*?)$/)		{ $currentPersonnae->{MOTIVATION} = $1; }
		if ($line =~ /^GOALS\t(.*?)$/)			{ $currentPersonnae->{GOALS} = $1; }
		if ($line =~ /^FRIENDS\t(.*?)$/)		{ $currentPersonnae->{FRIENDS} = $1; }
		if ($line =~ /^ENEMIES\t(.*?)$/)		{ $currentPersonnae->{ENEMIES} = $1; }
		if ($line =~ /^ROMANCE\t(.*?)$/)		{ $currentPersonnae->{ROMANCE} = $1; }
		if ($line =~ /^PERSONALITY\t(.*?)$/)	{ $currentPersonnae->{PERSONALITY} = $1; }
		if ($line =~ /^CyberWarePartOne\t(.*?)$/)	{ $currentPersonnae->{CyberWarePartOne} = $1; }
		if ($line =~ /^CyberWarePartTwo\t(.*?)$/)	{ $currentPersonnae->{CyberWarePartTwo} = $1; }
		if ($line =~ /^GearPartOne\t(.*?)$/)	{ $currentPersonnae->{GearPartOne} = $1; }
		if ($line =~ /^GearPartTwo\t(.*?)$/)	{ $currentPersonnae->{GearPartTwo} = $1; }
			
	} ## END "if ($flagPersonnae == 1)"
}
close INPUT;

my $dirOfPersonnaeSample	= "CyberPunkRedPlayerSample/";
my $baseNameOutputFiles		= "defaultBasePersonnae";

my @filesToCompileAsTEX = ();
foreach my $perso (@personnaes) {
	my $currentName = $perso->{NAME};
	print "\t {" .$currentName."}\n";
	
	my $fileTEXname = $baseNameOutputFiles.$currentName.".tex";
	$fileTEXname =~ s/[ \{\\\}\'\`\^\¨\~]//g;
	push (@filesToCompileAsTEX, $fileTEXname);
	print "\t\t {" .$fileTEXname."}\n";
	
	open (OUTPUT, ">".$dirOfPersonnaeSample.$fileTEXname);
	print OUTPUT $perso->toLaTeX();
	close OUTPUT;
} ## END "foreach my $perso (@personnaes)"

open (OUTPUT, ">".$dirOfPersonnaeSample."Makefile");
## print OUTPUT "LATEXFILE=personnae\n\n";
foreach (my $i = 0 ; $i < @filesToCompileAsTEX ; $i++) {
	my $fileTEX		= $filesToCompileAsTEX[$i];
	$fileTEX		=~ s/^(.*?).tex$/$1/g;
	my $numToShow	= (($i < 10)?"0":"").$i;
	print OUTPUT "LATEXFILE".$numToShow."=".$fileTEX."\n";
} ## END "foreach (my $i = 0 ; $i < @filesToCompileAsTEX ; $i++)"
print OUTPUT "\n";
print OUTPUT "CCPDFLA=pdflatex\n";
print OUTPUT "CCLATEX=latex\n";
print OUTPUT "CCBIBTE=bibtex\n\n";
print OUTPUT "all : pdflatex\n\n";
print OUTPUT "clean : mrproper\n";
print OUTPUT "\t# rm *.dvi\n";
print OUTPUT "\t# rm *.pdf\n\n";
## print OUTPUT "mrproper : \$(LATEXFILE).aux \$(LATEXFILE).log\n";
## print OUTPUT "\trm \$(LATEXFILE).aux\n";
## print OUTPUT "\trm \$(LATEXFILE).log\n\n";
print OUTPUT "mrproper : \n";
print OUTPUT "\trm *.aux\n";
print OUTPUT "\trm *.log\n\n";
## print OUTPUT "pdflatex : \$(LATEXFILE).tex\n";
## print OUTPUT "\t\$(CCPDFLA) \$(LATEXFILE).tex\n";
## print OUTPUT "\t\$(CCPDFLA) \$(LATEXFILE).tex\n";
## print OUTPUT "\t\$(CCPDFLA) \$(LATEXFILE).tex\n\n";
print OUTPUT "pdflatex : ";
foreach (my $i = 0 ; $i < @filesToCompileAsTEX ; $i++) {
	my $numToShow = (($i < 10)?"0":"").$i;
	print OUTPUT " \$(LATEXFILE".$numToShow.").tex";
} ## END "foreach (my $i = 0 ; $i < @filesToCompileAsTEX ; $i++)"
print OUTPUT "\n";
foreach (my $i = 0 ; $i < @filesToCompileAsTEX ; $i++) {
	my $numToShow = (($i < 10)?"0":"").$i;
	for (my $j = 0 ; $j < 3 ; $j++) 
		{ print OUTPUT "\t\$(CCPDFLA) \$(LATEXFILE".$numToShow.")\n"; }
} ## END "foreach (my $i = 0 ; $i < @filesToCompileAsTEX ; $i++)"
close OUTPUT;

chdir($dirOfPersonnaeSample);

system( "make" );
system( "make clean" );

my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my $fullYear	= 1900+$year;
my $month		= $mon+1;
my $dirname		= $fullYear.(($month < 10)?"0":"").$month.(($mday < 10)?"0":"").$mday
					.(($hour < 10)?"0":"").$hour.(($min < 10)?"0":"").$min.(($sec < 10)?"0":"").$sec
					."-"."persoGeneratedOnBase";
mkdir($dirname);

system( "mv ".$baseNameOutputFiles."*.pdf ".$dirname."/" );
system( "rm ".$baseNameOutputFiles."*.tex" );
system( "rm Makefile" );

chdir("..");

