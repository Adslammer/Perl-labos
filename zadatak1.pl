#!/usr/bin/perl

print "u�itaj niz znakova: ";
$niz = <stdin>;

print "u�itaj broj ponavljanja: ";
chomp ($n = <stdin>);

print $niz x $n;