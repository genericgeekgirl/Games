#!/usr/bin/perl

use Modern::Perl;

if (!$ARGV[0]) { &show_help() and exit() }

my $location_file = $ARGV[0];
open my ($location), '<', $location_file;


&get_location_data();

close $location;

sub get_location_data {
    while (<$location>) {
	if (/<game_object\stsid="(.*?)".*?label="(.*?)".*?hubid="(\d*)"/) { 
	    my ($tsid, $location_name, $hub_id) = ($1, $2, $3);
	    say "$tsid\t$location_name\t$hub_id";
	    last;
	}
    }	
}

sub region_number_to_name {
    my $region_number = shift;
    
    my %number_to_name = (
	33 => "Quoin Paradise",
	41 => "arbito bonus room",
	45 => "Start",
	49 => "Eesti Life Catalog",
	52 => "The New Start - May 2010",
	61 => "Simple Level Quests",
	67 => "Multiplayer Quests",
	69 => "Bureaucratic Hall",
	73 => "Penalty",
	79 => "Tower Quest",
	125 => "Underground Puzzles",
	130 => "Ticket To Paradise",
	132 => "Skill Quests",
	135 => "Puzzles",
	138 => "Fireflex 3000 Labs",
	139 => "Fireflex 3000 Lab",
	142 => "Moshi Moshi Oshilatis"
	);
}

sub show_help {
    print <<HELP;
    set - L*.xml
    for d ; do $0 \$d ; done
HELP
}
