#!/usr/bin/perl
use Data::Dumper;
use SpaceShip;
use Term::ANSIColor 4.00 qw(RESET color :constants256);


my $ship_file1 = shift;
my $color = shift;
open (my $fh1, "<", $ship_file1) or die "failed to open $ship_file1\n";
my $ship_str1 = "";
while (<$fh1>){
	$ship_str1 .= $_;
}
close $fh1;

print "---------------------" . " ship input" . "---------------------" . "\n\n";
print $ship_str1;
print "\n---------------------" . " ship output" . "--------------------" . "\n\n";

my $ship = SpaceShip->new($ship_str1, 5, 5, 1, 1, { color => $color } );
my $display = $ship->getShipDisplay();

print $display . "\n";

print "\n-----------------------------------------------" . "\n\n";

print 'cost:    $'.$ship->{cost}."\n";
print 'powergen: '.$ship->{powergen}."\n";
print 'power:   '.$ship->{power}."\n";
print 'thrust:  '.$ship->{thrust}."\n";
print 'speed:   '. sprintf('%.2f', $ship->{speed} )."\n";
print 'weight:  '.$ship->{weight}."\n";
print 'health:  '.$ship->{health}."\n";
print 'shield:  '.$ship->{shield}."\n";

#print "left:" . $ship->{leftmost} . "\n";
#print "right:" . $ship->{rightmost} . "\n";
#print "top:" . $ship->{topmost} . "\n";
#print "bottom:" . $ship->{bottommost} . "\n";



#print Dumper($ship->{ship});
