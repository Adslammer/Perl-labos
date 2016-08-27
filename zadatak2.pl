#!/usr/bin/perl

print "Unesite brojeve: \n";
chomp(@lista = <STDIN>);

$zbroj = 0;

if (@lista < 1) {
	print "Unešen je prazan niz\n";
} else {
	foreach $broj (@lista) {
		$zbroj += $broj;
	}
}

$rezultat = $zbroj/@lista;

print "Aritmetièka sredina brojeva je: $rezultat.\n";