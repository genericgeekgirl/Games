#!/usr/bin/perl

use Modern::Perl;

if (!$ARGV[0]) { &show_help() and exit() }

my $achievement_file = $ARGV[0];
open my ($achievement), '<', $achievement_file;

my $a = {};

&get_data();
#&dump_data();
&print_data();

close $achievement;

sub dump_data {
    use Data::Dumper;
#    say Dumper($a);

    say $$a{'name'};
    say Dumper($$a{'conditions'});
    say q{};
}

sub print_data {
    my $name = $$a{'name'};
    my $desc = $$a{'desc'};
    my $status_text = $$a{'status_text'};
    
    my $line = "$name is an achievement. The description is \"$desc\"";
    if ($status_text) { $line .= " The completion text is \"$status_text\""}

    say $line;

    my $rewards = $$a{'rewards'};
    my $rewards_list = q{};

    my $giant = q{};
    my $points = q{};
    my $items = ();
    my $recipes = ();

    foreach my $key (keys %$rewards) {
	my $value = $$rewards{$key};
	if ($key =~ /giant/) { $giant = $value; next }
	if ($key =~ /points/) { $points = $value; next }
	if ($key =~ /items/) { $items = $value; next }
	if ($key =~ /recipes/) { $recipes = $value; next }

	$rewards_list .= "Increase $key by $value. ";
    }

    if ($giant && $points) { $rewards_list .= "Increase favor of $giant by $points." }

    if ($rewards_list) { say "[$rewards_list]" }

    my $items_list = ();
 
    if ($items) { 
	for my $i (0..$#$items) {
	    my $hash = $$items[0];
	    push @$items_list , $$hash{'count'}.q{ }.$$hash{'label'};
	}
    }

    if ($items_list) { say "[Move ".join(", ", @$items_list)." to the player.]" }

    my $recipes_list = ();
 
    if ($recipes) { 
	for my $i (0..$#$recipes) {
	    my $hash = $$recipes[0];
	    push @$recipes_list , $$hash{'label'};
	}
    }

    if ($recipes) { say "[Now the player knows these recipes: ".join(", ", @$recipes_list).'.]' }

    say q{};

#    say Dumper($$a{'conditions'});
    
    say q{};
}

sub get_data {

    while (<$achievement>) {
	chomp;
      
	if (/^\n*var\s*(\w*)\s*=\s*(".*"|\d+|{}?)/) {

	    my ($key,$value) = ($1,$2);

	    next if $value eq '""';

	    $value =~ s/^['"]|['"]$//g;
	    
	    if (grep {$_ eq $key} qw/category desc collection_type name status_text/) {
		$$a{$key} = $value;
	    }
	    
	    elsif ($key eq 'conditions') {

		while (<$achievement>) {
		    last if /};/;
		    chomp;

		    if (/(\d+).*?:/) { 
			
			my $condition_id = $1;

			while (<$achievement>) {
			    last if /},/;
			    chomp;		
			    
			    if (/.*?(\w+).*?:.*?(\w+)/) {
				
				my ($key,$value) = ($1,$2);

				$$a{'conditions'}{$condition_id}{$key} = $value;
			    }
			}
		    }
		}
	    }

	    elsif ($key eq 'rewards') {

		next if ($value =~ /{}/);

		while (<$achievement>) {
		    last if /};/;
		    chomp;

		    if (/.*?(\w+)\W*?:\s*"?(\w*)"?,?/) {

			my ($key,$value) = ($1,$2);

			next if ($key eq 'favor');

			if (grep {$_ eq $key} qw/items recipes/) {

			    my $reward_type = $key;

			    my $rewards = [];

			    while (<$achievement>) {
				last if /}/;
				chomp;

				if (/(\d+).*?:/) { 
				    
				    my $reward = {};

				    while (<$achievement>) {
					last if /}/;
					chomp;		
					
					if (/.*?(\w+).*?:\s*(".*"|\d+)/) {
					    
					    my ($key,$value) = ($1,$2);
					    $value =~ s/^['"]|['"]$//g;
					    $$reward{$key} = $value;
					    
					}
				    }

				    push @$rewards, $reward;

				}
			    }

			    $$a{'rewards'}{$reward_type} = $rewards;
			}
			
			else { $$a{'rewards'}{$key} = $value }
		    }
		}
		
	    }

	}
    }
}

sub show_help {
    print <<HELP;
    set - *.js
	for d ; do $0 \$d ; done
HELP
}
