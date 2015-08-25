#!/usr/bin/perl

use Modern::Perl;

if (!$ARGV[0]) { &show_help() and exit() }

my $location_file = $ARGV[0];
open my ($location), '<', $location_file;

my $labels_file = "FILES";
open my ($labels), '<', $labels_file;

my $l = {};

&make_hash;
&get_data;

close $labels;

sub make_hash {

    while (<$labels>) {
	chomp;
	my $line = $_;
	
	my @array = split(/\t/, $line);
	
	my ($tsid, $label, $hubid) = @array;
	
	$tsid =~ s/^\w//;
	
	$$l{$tsid}{'label'} = $label;
	$$l{$tsid}{'hubid'} = $hubid;
    }
}


sub get_data {

    my $location_name = q{};
    my $destinations = [];
    my $hubid = 0;

    while (<$location>) {
	if (/<game_object\stsid="(.*?)".*?label="(.*?)"\sclass_tsid/) { 
	    
	    my $tsid = $1;
	    my $label = $2;
	    $tsid =~ s/^\w//;
	    
	    my $location = $$l{$tsid};

	    if (!$location) { 
		$location_name = $label;
		$hubid = 0;
	    }
	    else {
		$location_name = $$location{'label'};
		$hubid = $$location{'hubid'};
	    }
	}
	
	elsif (/<objref\sid="target"\stsid="\w+"\slabel="(.*?)"\/>/) { 
	    my $label = $1;
	    push @$destinations, $label;
	}
    }
    
    if (@$destinations) {
	say "$location_name ($hubid): ".join(', ', @$destinations);
    }
    
    say q{};
}    

close $location;
    
sub show_help {
    print <<HELP;
    set - G*.xml
    for d ; do $0 \$d ; done
HELP
}
