#!/usr/bin/perl

$datum = '';
$vrijeme = 'Pristup poslužitelju';

while(defined($row = <>)) {
	chomp($row);
	if ($row =~ /\[([0-9]{2}\/[A-Za-z]{3}\/[0-9]{4}):([0-9]{2})/) {
		if ($datum ne $1) {
		    print "$vrijeme : $br\n\n";
			$datum = $1;
			$vrijeme = $2;
			$br = 1;
			print "Date: $1\n";
			print "Sat: broj pristupa\n";
			print "------------------\n";
		}
		elsif ($vrijeme ne $2) {
		    print "$vrijeme : $br\n";
			$vrijeme = $2;
			$br = 1;
		}
		else {
			$br += 1;
		}	
	}
}

print "$vrijeme: $br\n";