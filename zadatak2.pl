#!/usr/bin/perl

print "Unesite brojeve: \n";
chomp(@lista = <STDIN>);

$zbroj = 0;

if (@lista < 1) {
	print "Une�en je prazan niz\n";
} else {
	foreach $broj (@lista) {
		$zbroj += $broj;
	}
}

$rezultat = $zbroj/@lista;

print "Aritmeti�ka sredina brojeva je: $rezultat.\n";