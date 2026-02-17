#!/usr/bin/perl -w

use strict;

use lib '.';
use PersonnaeChateauFalkenStein;

my $fileToLoad			= "personnaeBase.txt";

my @personnaes			= ();

my $currentPersonnae	= undef;

my $flagPersonnae		= 0;
open (INPUT, "<".$fileToLoad);
while (my $line = <INPUT>) {
	$line =~ s/[\n\r]//;
	if ($line =~ /BEGIN personnae/) { 
		$flagPersonnae = 1;
		$currentPersonnae = PersonnaeChateauFalkenStein->new();
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
		if ($line =~ /^NAME\t(.*?)$/)		{ $currentPersonnae->{NAME} = $1; }
		if ($line =~ /^CLASS\t(.*?)$/)		{ $currentPersonnae->{CLASS} = $1; }
		if ($line =~ /^ORIGIN\t(.*?)$/)		{ $currentPersonnae->{ORIGIN} = $1; }
		if ($line =~ /^CHARACTER\t(.*?)$/)	{ $currentPersonnae->{CHARACTER} = $1; }
		if ($line =~ /^CLASS\t(.*?)$/)		{ $currentPersonnae->{CLASS} = $1; }
		if ($line =~ /^BIOGRAPHY\t(.*?)$/)	{ $currentPersonnae->{BIOGRAPHY} = $1; }
		if ($line =~ /^EQUIPMENT\t(.*?)$/)	{ $currentPersonnae->{EQUIPMENT} = $1; }
		if ($line =~ /^AISANCE_SOCIALE\t(.*?)$/)	{ $currentPersonnae->{AISANCE_SOCIALE} = $1; }
		if ($line =~ /^ATHLETISME\t(.*?)$/)	{ $currentPersonnae->{ATHLETISME} = $1; }
		if ($line =~ /^ATTRACTION\t(.*?)$/)	{ $currentPersonnae->{ATTRACTION} = $1; }
		if ($line =~ /^BRICOLAGE\t(.*?)$/)	{ $currentPersonnae->{BRICOLAGE} = $1; }
		if ($line =~ /^CHARISME\t(.*?)$/)	{ $currentPersonnae->{CHARISME} = $1; }
		if ($line =~ /^CHARME_FAE\t(.*?)$/)	{ $currentPersonnae->{CHARME_FAE} = $1; }
		if ($line =~ /^COURAGE\t(.*?)$/)	{ $currentPersonnae->{COURAGE} = $1; }
		if ($line =~ /^DISCRETION\t(.*?)$/)	{ $currentPersonnae->{DISCRETION} = $1; }
		if ($line =~ /^ESCRIME\t(.*?)$/)	{ $currentPersonnae->{ESCRIME} = $1; }
		if ($line =~ /^ETHERALITE_FAE\t(.*?)$/)	{ $currentPersonnae->{ETHERALITE_FAE} = $1; }
		if ($line =~ /^FINANCES\t(.*?)$/)		{ $currentPersonnae->{FINANCES} = $1; }
		if ($line =~ /^INSTRUCTION\t(.*?)$/)	{ $currentPersonnae->{INSTRUCTION} = $1; }
		if ($line =~ /^INTERPRETATION\t(.*?)$/)	{ $currentPersonnae->{INTERPRETATION} = $1; }
		if ($line =~ /^MEDECINE\t(.*?)$/)		{ $currentPersonnae->{MEDECINE} = $1; }
		if ($line =~ /^PERCEPTION\t(.*?)$/)		{ $currentPersonnae->{PERCEPTION} = $1; }
		if ($line =~ /^PHYSIQUE\t(.*?)$/)		{ $currentPersonnae->{PHYSIQUE} = $1; }
		if ($line =~ /^PILOTAGE\t(.*?)$/)		{ $currentPersonnae->{PILOTAGE} = $1; }
		if ($line =~ /^POUVOIR_FAE\t(.*?)$/)	{ $currentPersonnae->{POUVOIR_FAE} = $1; }
		if ($line =~ /^PUGILAT\t(.*?)$/)		{ $currentPersonnae->{PUGILAT} = $1; }
		if ($line =~ /^RELATIONS\t(.*?)$/)		{ $currentPersonnae->{RELATIONS} = $1; }
		if ($line =~ /^SORCELLERIE\t(.*?)$/)	{ $currentPersonnae->{SORCELLERIE} = $1; }
		if ($line =~ /^TIR\t(.*?)$/)			{ $currentPersonnae->{TIR} = $1; }
		if ($line =~ /^OTHERS\t(.*?)\t(.*?)$/)	{ ${$currentPersonnae->{OTHERS}}{$1} = $2; }
	} ## END "if ($flagPersonnae == 1)"
}
close INPUT;

my $dirOfPersonnaeSample	= "ChateauFalkenSteinPlayerSample/";
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
print OUTPUT "mrproper : \n";
print OUTPUT "\trm *.aux\n";
print OUTPUT "\trm *.log\n\n";
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
# system( "rm ".$baseNameOutputFiles."*.tex" );
system( "rm Makefile" );

chdir("..");

