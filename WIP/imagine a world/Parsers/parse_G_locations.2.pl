#!/usr/bin/perl

use Modern::Perl;

if (!$ARGV[0]) { &show_help() and exit() }

my $location_file = $ARGV[0];
open my ($location), '<', $location_file;

my $locations;

&get_data;
&print_data;

sub get_data {
    while (<$location>) {
	if (/(.*?)\s\((\d+)\):\s(.*)/) {
	    my ($location_name, $hubid, $destinations) = ($1, $2, $3);
	    my @destinations = split(/, /, $destinations);
	    $$locations{$location_name}{'destinations'} = \@destinations;
	    $$locations{$location_name}{'hub_id'} = $hubid;
	}
    }
}

sub dump_data {
    use Data::Dumper;
    say Dumper($locations);
}

sub print_data {

    my @directions = qw/north east south west northeast southeast southwest southeast north east south west northeast southeast southwest southeast/;

    for my $location_name (sort keys %$locations) {

	my $hub_id =  $$locations{$location_name}{'hub_id'};
	my $destinations = $$locations{$location_name}{'destinations'};

	my $region = &region_number_to_name($hub_id);
	
	my @array = ();
	my @array2 = ();
	
	for my $i (0..$#$destinations) {
	    
	    my $destination = $$destinations[$i];

	    next if (!$$locations{$destination}); # we've already seen these mappings

	    my $d_hub_id = $$locations{$destination}{'hub_id'};

	    if ($hub_id != $d_hub_id) {
		my $d_region =  &region_number_to_name($d_hub_id);
		my $string = "$location_name is ".$directions[$i]." of $destination. [interregional: $region to $d_region]";
		push @array2, $string;
	    }
	    else { 
		my $string = $directions[$i].' of '.$destination;
		push @array, $string;
	    }
	}
	
	if (@array) {
	    
	    my $exits = q{};
	    
	    if ($array[1]) {
		my $last_element = shift @array;
		$exits = join(', ', @array);
		$exits .= " and $last_element";
	    }
	    else { $exits = $array[0] }
	    
	    say "($region) $location_name is $exits";
	}
	
	if (@array2) {
	    foreach my $path (@array2) { say $path }
	}

	$$locations{$location_name} = undef;
    }
}

close $location;

sub show_help {
    print <<HELP;
    $0 FILE
HELP
}


sub region_number_to_name {
    my $region_number = shift;

    my %number_to_name = (
	26 => "Abbasid",
	27 => "Ix",
	28 => "Old Groddle Forest",
	37 => "POLs",
	40 => "Naraka",
	50 => "Ilmenskie Caverns",
	51 => "Uralia",
	55 => "June 2010 POLs",
	56 => "Groddle Forest",
	57 => "Levelup Templates",
	58 => "Groddle Meadow",
	60 => "Backups",
	63 => "Shimla Mirch",
	64 => "Groddle Heights",
	66 => "The Seams",
	70 => "Shimla Mirch POLs",
	71 => "Jethimadh",
	72 => "Chakra Phool",
	75 => "Bortola",
	76 => "Alakol",
	77 => "Jethimadh Tower: Base",
	78 => "Ilmenskie Deeps",
	83 => "Alakol POLs",
	85 => "Kajuu",
	86 => "Baqala",
	87 => "Kajuu POLs",
	88 => "Karnata",
	89 => "Andra",
	90 => "Choru",
	91 => "Zhambu",
	92 => "Tamila",
	93 => "Salatu",
	94 => "Andra POLs",
	95 => "Xalanga",
	96 => "Jethimadh Tower: Mid",
	97 => "Muufo",
	98 => "Besara",
	99 => "Kalavana",
	100 => "Vantalu",
	101 => "Aranna",
	102 => "Ormonos",
	103 => "Aranna POLs",
	105 => "Lida",
	106 => "Pollokoo",
	107 => "Callopee",
	108 => "Party Locations",
	109 => "Rasana",
	110 => "Massadoe",
	111 => "Lida POLs",
	112 => "Brillah",
	113 => "Tahli",
	114 => "Firozi",
	116 => "Haraiva",
	119 => "Folivoria",
	120 => "Cauda",
	121 => "Sura",
	123 => "Fenneq",
	124 => "Abandoned Apartments",
	126 => "Roobrik",
	128 => "Balzare",
	131 => "Haoma",
	133 => "Kloro",
	136 => "Jal",
	137 => "Nottis",
	140 => "Samudra",
	141 => "Drifa",
	143 => "Vortex of Random"
    );
    
    my $region_name = ($number_to_name{$region_number}) ? $number_to_name{$region_number} : "Region $region_number";

    return $region_name;
}
