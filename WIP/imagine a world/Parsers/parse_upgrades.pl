#!/usr/bin/perl

use Modern::Perl;
use File::Basename qw(basename);
use File::Spec::Functions qw(catfile);

my $item_file = $ARGV[0];
open my ($item), '<', $item_file;

my $a = {};

&get_data();
#&dump_data();
&print_data();

close $item;

sub dump_data {
    use Data::Dumper;
    say Dumper($a);
}

sub print_data {

    say "[An upgrade has the following values: req_{skill, level, achievement, quest, upgrade, maxenergy}.]";

    foreach my $key (sort keys %$a) {
	my $function = $$a{$key};

	my $name = $$function{'name'};

	print "$name is an upgrade. The description is \"".$$function{'desc'}."\". The cost of $name is ".$$function{'cost'}.q{.};
	if ($$function{'skill_id'}) { print " The req_skill for $name is ".$$function{'skill_id'}.q{.} }
	if ($$function{'level'}) { print " The req_level of $name is ".$$function{'level'}.q{.} }
	if ($$function{'achievement_id'}) { print " The req_achievement for $name is ".$$function{'achievement_id'}.q{.} }
	if ($$function{'quest_id'}) { print " The req_quest for $name is ".$$function{'quest_id'}.q{.} }
	if ($$function{'imagination_id'}) { print " The req_upgrade for $name is ".$$function{'imagination_id'}.q{.} } 
	if ($$function{'max energy'}) { print " The req_maxenergy for $name is ".$$function{'max energy'}.q{.} }
	    
	say q{};
	say q{};
    }
}
    


sub get_data {

    while (<$item>) {
	chomp;
	
	if (/function\simagination_get_(.*?)\(/) {
	    my $function = $1;

#	    next if $function =~ /learning|speed|learntime|imagination|achievement|machine|vendors|snapshottery|transcendental|limit|reward|piety|herdkeeping|making/;

	    next unless $function =~ /learning|speed|learntime|achievement|machine|vendors|snapshottery|transcendental|limit|reward|piety|herdkeeping|making/;
	    
	    while (<$item>) {
		last if /};/;
		chomp;

		$_ =~ s/\s+/ /g;

		if (/(.*?)\s*:\s*(.*?),?$/) {

 		    my ($key, $value) = ($1, $2);

  		    $key =~ s/^\s+//;
 		    $value =~ s/^\s+//;
		    
 		    $key =~ s/"//g;
 		    $value =~ s/"//g;

 		    $$a{$function}{$key} = $value;
		}
	    }
	}
    }
}

