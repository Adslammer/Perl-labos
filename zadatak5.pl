#!/usr/bin/perl -w

chomp ($faktori = <>);
@faktori = split /;/, $faktori;
$rang = 0;

while (defined ($row = <>)) {
	@row = split /;/, $row;
	$jmbag = shift @row;
	$prez = shift @row;
	$ime = shift @row;
	$i = 0;
	$zbroj = 0;
	foreach (@row) {
		if ($_ eq '-') {
			$_ = 0;
		}
		$zbroj += $faktori[$i] * $_;
		$i++;
	}
	$ranglista[$rang] = sprintf("%06.2f;%s;%s;%s", $zbroj, $jmbag, $prez, $ime);
	$rang++;
}

@revsortranglista = reverse sort (@ranglista);
$rang = 1;

foreach (@revsortranglista) {
	@row = split /;/, $_;
	printf ("%3d. %-30s:% 6.2f\n", $rang, "$row[2], $row[3] ($row[1])", $row[0]);
	$rang++;
}