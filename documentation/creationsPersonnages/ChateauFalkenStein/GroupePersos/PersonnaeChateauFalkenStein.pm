package PersonnaeChateauFalkenStein;

use strict;

## idEes : générer variables d'en-tête fichiers [.tex] 
## include [TEX] du reste du fichier à générer en PDF
## ## ++ Makefile associés et compilé

sub new {
	my $class	= shift;
	$class		= ref($class) || $class;

	my $self	= {};

	$self->{NAME}				= "~~"; ## undef;
	$self->{ORIGIN}				= "~~"; ## undef;
	$self->{CHARACTER}			= "~~"; ## undef;
	$self->{CLASS}				= "~~"; ## undef;
	$self->{BIOGRAPHY}			= "~~"; ## undef;
	$self->{EQUIPMENT}			= "~~"; ## undef;
	$self->{AISANCE_SOCIALE}	= "Moyen (4)"; ## undef;
	$self->{ATHLETISME}			= "Moyen (4)"; ## undef;
	$self->{ATTRACTION}			= "Moyen (4)"; ## undef;
	$self->{BRICOLAGE}			= "Moyen (4)"; ## undef;
	$self->{CHARISME}			= "Moyen (4)"; ## undef;
	$self->{CHARME_FAE}			= "Moyen (4)"; ## undef;
	$self->{COURAGE}			= "Moyen (4)"; ## undef;
	$self->{DISCRETION}			= "Moyen (4)"; ## undef;
	$self->{ESCRIME}			= "Moyen (4)"; ## undef;
	$self->{ETHERALITE_FAE}		= "Moyen (4)"; ## undef;
	$self->{FINANCES}			= "Moyen (4)"; ## undef;
	$self->{INSTRUCTION}		= "Moyen (4)"; ## undef;
	$self->{INTERPRETATION}		= "Moyen (4)"; ## undef;
	$self->{MEDECINE}			= "Moyen (4)"; ## undef;
	$self->{PERCEPTION}			= "Moyen (4)"; ## undef;
	$self->{PHYSIQUE}			= "Moyen (4)"; ## undef;
	$self->{PILOTAGE}			= "Moyen (4)"; ## undef;
	$self->{POUVOIR_FAE}		= "Moyen (4)"; ## undef;
	$self->{PUGILAT}			= "Moyen (4)"; ## undef;
	$self->{RELATIONS}			= "Moyen (4)"; ## undef;
	$self->{SORCELLERIE}		= "Moyen (4)"; ## undef;
	$self->{TIR}				= "Moyen (4)"; ## undef;
	$self->{OTHERS}				= {}; ## {"DATE" => "BOLO", "ANYY" => "BOLO"};
	bless($self, $class);
	return $self;
}

sub toStringPersonnae {
	my $self = shift;
	my $toReturn = "";
	
	$toReturn .= "BEGIN personnae\n";
	$toReturn .= "NAME\t".$self->{NAME}."\n";
	$toReturn .= "ORIGIN\t".$self->{ORIGIN}."\n";
	$toReturn .= "CHARACTER\t".$self->{CHARACTER}."\n";
	$toReturn .= "CLASS\t".$self->{CLASS}."\n";
	$toReturn .= "BIOGRAPHY\t".$self->{BIOGRAPHY}."\n";
	$toReturn .= "EQUIPMENT\t".$self->{EQUIPMENT}."\n";
	$toReturn .= "AISANCE_SOCIALE\t".$self->{AISANCE_SOCIALE}."\n";
	$toReturn .= "ATHLETISME\t".$self->{ATHLETISME}."\n";
	$toReturn .= "ATTRACTION\t".$self->{ATTRACTION}."\n";
	$toReturn .= "BRICOLAGE\t".$self->{BRICOLAGE}."\n";
	$toReturn .= "CHARISME\t".$self->{CHARISME}."\n";
	$toReturn .= "CHARME_FAE\t".$self->{CHARME_FAE}."\n";
	$toReturn .= "COURAGE\t".$self->{COURAGE}."\n";
	$toReturn .= "DISCRETION\t".$self->{DISCRETION}."\n";
	$toReturn .= "ESCRIME\t".$self->{ESCRIME}."\n";
	$toReturn .= "ETHERALITE_FAE\t".$self->{ETHERALITE_FAE}."\n";
	$toReturn .= "FINANCES\t".$self->{FINANCES}."\n";
	$toReturn .= "INSTRUCTION\t".$self->{INSTRUCTION}."\n";
	$toReturn .= "INTERPRETATION\t".$self->{INTERPRETATION}."\n";
	$toReturn .= "MEDECINE\t".$self->{MEDECINE}."\n";
	$toReturn .= "PERCEPTION\t".$self->{PERCEPTION}."\n";
	$toReturn .= "PHYSIQUE\t".$self->{PHYSIQUE}."\n";
	$toReturn .= "PILOTAGE\t".$self->{PILOTAGE}."\n";
	$toReturn .= "POUVOIR_FAE\t".$self->{POUVOIR_FAE}."\n";
	$toReturn .= "PUGILAT\t".$self->{PUGILAT}."\n";
	$toReturn .= "RELATIONS\t".$self->{RELATIONS}."\n";
	$toReturn .= "SORCELLERIE\t".$self->{SORCELLERIE}."\n";
	$toReturn .= "TIR\t".$self->{TIR}."\n";
	## $toReturn .= "OTHERS\t".$self->{OTHERS}	= ();
	foreach my $caractOthers (keys %{$self->{OTHERS}}) {
		print "\t'".$caractOthers."' => '".%{$self->{OTHERS}}{$caractOthers}."'\n";
		$toReturn .= "\t'".$caractOthers."' => '".%{$self->{OTHERS}}{$caractOthers}."'\n";
	}
	$toReturn .= "END personnae"."\n";
	
	return $toReturn."\n\n";
}

my @arrayOfNumbers = ("ZER", "ONE", "TWO", "THR", "FOR");

sub toLaTeX {
	my $self = shift;
	my $toReturn = "";
	$toReturn .= "\\input{../personnaeHeader.tex}\n\n"; 

	## $toReturn .= "\\def\\FRdefCharacterSheetHeaderTitle{Feuille de Personnage Château FalkenStein -- \\emph{\\PersonnaeName } }\n\n"; 

	$toReturn .= "\\def\\contentNAME{".$self->{NAME}."}\n";
	$toReturn .= "\\def\\contentORIGIN{".$self->{ORIGIN}."}\n";
	$toReturn .= "\\def\\contentCHARACTER{".$self->{CHARACTER}."}\n";
	$toReturn .= "\\def\\contentCLASS{".$self->{CLASS}."}\n";
	$toReturn .= "\\def\\contentBIOGRAPHY{".$self->{BIOGRAPHY}."}\n";
	$toReturn .= "\\def\\contentEQUIPMENT{".$self->{EQUIPMENT}."}\n";
	$toReturn .= "\\def\\contentAISANCE_SOCIALE{".$self->{AISANCE_SOCIALE}."}\n";
	$toReturn .= "\\def\\contentATHLETISME{".$self->{ATHLETISME}."}\n";
	$toReturn .= "\\def\\contentATTRACTION{".$self->{ATTRACTION}."}\n";
	$toReturn .= "\\def\\contentBRICOLAGE{".$self->{BRICOLAGE}."}\n";
	$toReturn .= "\\def\\contentCHARISME{".$self->{CHARISME}."}\n";
	$toReturn .= "\\def\\contentCHARME_FAE{".$self->{CHARME_FAE}."}\n";
	$toReturn .= "\\def\\contentCOURAGE{".$self->{COURAGE}."}\n";
	$toReturn .= "\\def\\contentDISCRETION{".$self->{DISCRETION}."}\n";
	$toReturn .= "\\def\\contentESCRIME{".$self->{ESCRIME}."}\n";
	$toReturn .= "\\def\\contentETHERALITE_FAE{".$self->{ETHERALITE_FAE}."}\n";
	$toReturn .= "\\def\\contentFINANCES{".$self->{FINANCES}."}\n";
	$toReturn .= "\\def\\contentINSTRUCTION{".$self->{INSTRUCTION}."}\n";
	$toReturn .= "\\def\\contentINTERPRETATION{".$self->{INTERPRETATION}."}\n";
	$toReturn .= "\\def\\contentMEDECINE{".$self->{MEDECINE}."}\n";
	$toReturn .= "\\def\\contentPERCEPTION{".$self->{PERCEPTION}."}\n";
	$toReturn .= "\\def\\contentPHYSIQUE{".$self->{PHYSIQUE}."}\n";
	$toReturn .= "\\def\\contentPILOTAGE\{".$self->{PILOTAGE}."}\n";
	$toReturn .= "\\def\\contentPOUVOIR_FAE{".$self->{POUVOIR_FAE}."}\n";
	$toReturn .= "\\def\\contentPUGILAT{".$self->{PUGILAT}."}\n";
	$toReturn .= "\\def\\contentRELATIONS{".$self->{RELATIONS}."}\n";
	$toReturn .= "\\def\\contentSORCELLERIE{".$self->{SORCELLERIE}."}\n";
	$toReturn .= "\\def\\contentTIR{".$self->{TIR}."}\n";
	## $toReturn .= "\\def\\contentOTHERS{".$self->{OTHERS}	= ();
	my $i = 0;
	foreach my $caractOthers (keys %{$self->{OTHERS}}) {
		print "\t'".$caractOthers."' => '".%{$self->{OTHERS}}{$caractOthers}."'\n";
		# $toReturn .= "\t'".$caractOthers."' => '".%{$self->{OTHERS}}{$caractOthers}."'\n";
		$toReturn .= "\\def\\contentOTHER".$arrayOfNumbers[$i]."NAMEE{".$caractOthers."}\n";
		my $value = %{$self->{OTHERS}}{$caractOthers};
		$value =~ s/\) \[/\)~\\newline\[/;
		$toReturn .= "\\def\\contentOTHER".$arrayOfNumbers[$i]."VALUE{".$value."}\n";
		$i += 1;
	}
	for ( ; $i < 5 ; $i++) { 
		$toReturn .= "\\def\\contentOTHER".$arrayOfNumbers[$i]."NAMEE{---}\n";
		$toReturn .= "\\def\\contentOTHER".$arrayOfNumbers[$i]."VALUE{---}\n";
	}

	$toReturn .= "\\input{../personnaeBottom.tex}\n";
	return $toReturn;
}

1;