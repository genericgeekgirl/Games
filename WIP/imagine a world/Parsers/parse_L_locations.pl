#!/usr/bin/perl

use Modern::Perl;

if (!$ARGV[0]) { &show_help() and exit() }

my $location_file = $ARGV[0];
open my ($location), '<', $location_file;

my $location_name = q{};
my $hub_id = q{};
my $l = {};

&get_location_data();
#&dump_location_data();
&print_location_data();

close $location;


sub dump_location_data {
    use Data::Dumper;
    say $location_name;
    say $hub_id;
    say Dumper($l);
}

sub print_location_data {

    my $region_name = &region_number_to_name($hub_id);

    my $objects = $$l{'in_location'};
    my @items = ();

    my %numbers = ( 2 => 'two',   3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve');

    my $fox = 0;

    foreach my $item (keys %$objects) {

        if ($item eq 'fox ranger') { $fox = 1 }

	next if ($item =~ /mailbox|spawner|marker|collision|cubimal|quoin|coin|broadcaster|ticket|visiting|forehorseman/i);
	next if ($item =~ /vendor|fox ranger|street spirit|shrine/i);

	$item =~ s/dead /deceased /;
	$item =~ s/dark /underground /;
	
	$item = "a $item";
	
	push @items, $item;
    }

    my $type = 'street';
    if ($fox) { $type = 'fox preserve' }

    say "{$location_name}A $location_name is a $type in $region_name.";

    if (@items) {
	my $items_in_location = join(', ', @items);
	say "{$location_name}B In $location_name is $items_in_location."
    }
}

sub get_location_data {

    while (<$location>) {
	if (/<game_object\s.*?label="(.*?)".*?hubid="(\d*)"/) { 
	    $location_name = $1;	    
	    $hub_id = $2;
	}	
	
	elsif (/<objrefs\sid="items">/) {
	    while (<$location>) {
		last if /<\/objrefs>/;
		if (/<objref.*?label="(.*?)"\/>/) { 
		    my $item = $1;
		    $$l{'in_location'}{lc($item)}++; 
		}
	    }
	}
	
#	elsif (/<bool\sid="(.*?)">(true|false)<\/bool>/) {
#	    my ($key, $value) = ($1, $2);
#	    if (grep {$_ eq $key} qw/no_teleportation disallow_animals/) {
#		$$l{'boolean'}{$key} = $value;
#	    }
#	}
    }

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


#	    33 => "Quoin Paradise" (10)
# 	    41 => "arbito bonus room" (10)
# 	    45 => "Start" (10)
# 	    49 => "Eesti Life Catalog" (10)
# 	    52 => "The New Start - May 2010" (10)
# 	    61 => "Simple Level Quests" (10)
# 	    67 => "Multiplayer Quests" (10)
# 	    69 => "Bureaucratic Hall" (10)
# 	    73 => "Penalty" (10)
# 	    79 => "Tower Quest" (10)
# 	    125 => "Underground Puzzles" (10)
# 	    130 => "Ticket To Paradise" (10)
# 	    132 => "Skill Quests" (10)
# 	    135 => "Puzzles" (10)
# 	    138 => "Fireflex 3000 Labs" (10)
# 	    139 => "Fireflex 3000 Lab" (10)
# 	    142 => "Moshi Moshi Oshilatis" (10)


sub show_help {
    print <<HELP;
    set - L*.xml
    for d ; do $0 \$d ; done
HELP
}
