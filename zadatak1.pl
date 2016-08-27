#!/usr/bin/perl

print "uèitaj niz znakova: ";
$niz = <stdin>;

print "uèitaj broj ponavljanja: ";
chomp ($n = <stdin>);

print $niz x $n;