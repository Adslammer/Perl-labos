#!/usr/bin/perl -w

open dat, "<$ARGV[0]";
$duzina = $ARGV[1];

while ($red = <dat>) {
	chomp ($red);
	@red = split / /, $red;
	
	foreach (@red) {
		s/([a-z]{$duzina})[\S]*/$1/i;
		tr/A-Z/a-z/;
		
		if (length ($_) == $duzina) {
			if (exists ($hash{$_}) ) { 
			    $hash{$_}++;
			}
			else {
			    $hash{$_} = 1;
			}
		}
	}
}

foreach (keys %hash) {
	print "$_: $hash{$_}\n";
}