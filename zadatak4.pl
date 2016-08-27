#!/usr/bin/perl

while (defined ( $row = <> )) {
	chomp($row);
	@podaci_labosa = split /;/, $row;
	$podaci_labosa[3] =~ /([0-9]{4}-[0-9]{2}-[0-9]{2}) ([0-9]{2}):/;
	$startdatum = $1;
	$startvrijeme = $2;
	$podaci_labosa[4] =~ /([0-9]{4}-[0-9]{2}-[0-9]{2}) ([0-9]{2}):/;
	$lockdatum = $1;
	$lockvrijeme = $2;
	
	if ($startdatum ne $lockdatum or $startvrijeme < $lockvrijeme) {
		print "$podaci_labosa[0]; $podaci_labosa[1] $podaci_labosa[2] - PROBLEM: $podaci_labosa[3] --> $podaci_labosa[4]\n";
	}
}