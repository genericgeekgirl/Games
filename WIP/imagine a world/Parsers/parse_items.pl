#!/usr/bin/perl

use Modern::Perl;

if (!$ARGV[0]) { &show_help() and exit() }

my $item_file = $ARGV[0];
open my ($item), '<', $item_file;

my $a = {};

&get_item_data();
#&dump_item_data();
&print_item_data();

close $item;

sub print_item_data {

    my $var = $$a{'var'};

    say "Book - $$var{'name_single'}\n";

    my $noun = $$var{'article'}.q{ }.lc($$var{'name_single'});

    say ucfirst($noun).' is a kind of thing.';
    say 'The description is "'.$$var{'description'}.q{"};

    unless ($$var{'name_plural'} eq $$var{'name_single'} ||
	$$var{'name_plural'} eq $$var{'name_single'}.'s') {
	say 'The plural of '.lc($$var{'name_single'}).' is '.lc($$var{'name_plural'}).'.';
    }


    if ($$var{'base_cost'} > 0) {
    say 'The base_cost of '.$$var{'name_single'}.' is '.$$var{'base_cost'}.q{.};
    }

    my $label = lc($$var{'name_single'});

    if ($$var{'classProps'}{'drink_mood'}) { 
	say "The mood of $label is ".$$var{'classProps'}{'drink_mood'}.q{.};
    }
    if ($$var{'classProps'}{'drink_energy'}) {
	say "The energy of $label is ".$$var{'classProps'}{'drink_energy'}.q{.};
    }
    if ($$var{'classProps'}{'drink_xp'}) {
	say "The img of $label is ".$$var{'classProps'}{'drink_xp'}.q{.};
    }


    if ($$var{'getDescExtras'}) {
	for (@{$$var{'getDescExtras'}}) { say 'DESC: '.q{"}.$_.q{"} };
    }

    if ($$var{'self_msgs'}) {
	for (@{$$var{'self_msgs'}}) { say 'RESPONSE: '.q{"}.$_.q{"} };
    }

    say q{};
}

sub get_item_data {

    my $getDescExtras = [];
    my $self_msgs = [];

    while (<$item>) {
	chomp;

	## case 1: variable    

	if (/^\n*var\s*(\w*)\s*=\s*(["'].*['"]|\d+|true|false|{.*|\[.*)/) {
	    
	    my ($key,$value) = ($1,$2);

	    # strip quotation marks (makes the above regex easier. whatever)
	    $value =~ s/^['"]|['"]$//g;

	    next if (grep {$_ eq $key} qw/itemDef version adjusted_scale cubimals/);

	    # ignore blank values of the form {} and []
	    next if ($value =~ /^[\[{][}\]];$/);

	    ## multi-line variables

	    if ($value eq '{' or $value eq '[') {

		## the following are just arrays of strings
		
		if (grep {$_ eq $key} qw/tags conversations available_quests speak_choices valid_tools/) {
		 
		    my $var_type = $key;
		    my $var_array = [];
		    
		    while (<$item>) {
			last if /\];/;
			chomp;
			
			/"(.*?)",?/;
			my $string = $1;

			push @$var_array, $string;
		    }
		    
		    $$a{'var'}{$var_type} = $var_array;
		}

		## 'responses' are a hash of strings of arrays

		elsif ($key eq 'responses') {

		    while (<$item>) {
			last if /};/;
			chomp;
			
			if (/['"](.*?)["']\s?:\s?\[/) {

			    my $response_key = $1;
			    my $responses = [];

			    while (<$item>) {
				last if /],?/;
				chomp;

				if (/"(.*?)",?/) {
				    my $response = $1;
				    push @$responses, $response;
				} 
			    }

			    $$a{'var'}{'responses'}{$response_key} = $responses;
			    
			}
		    }
		}

		## the rest are hashes

		else {

		    my $var = $key;

		    while (<$item>) {
			last if /};/;
			chomp;

			if (/.*?(\w+).*?:\s*(\[?["'].*?["]\]?)/) {
			    my ($key,$value) = ($1,$2);

			    # strip out blank values
			    next if $value =~ /^\[?['"]["']\]?$/;
			    #strip out brackets			   
			    $value =~ s/[\[\]]//g;
			    # strip out quotation marks
			    $value =~ s/^['"]|['"]$//g;

			    $$a{'var'}{$var}{$key} = $value;
			}
		    }

		}
	    }
	    
	    ## single-line variables
	    else { 

		if ($value =~ s/[\[\];]//g) { 
		    my @v = split(/, /, $value);
		    # strip out quotation marks
		    s/^['"]|['"]$//g for @v;
		    $value = \@v;
		}

		$$a{'var'}{$key} = $value;
	    }
	}
	
	# case 2: verb
	elsif (/^\n*verbs\.(\w*)\s*=\s*{/) {
	    my $verb = $1;

	    while (<$item>) {
		last if /};/;
		chomp;

		if (/.*?(\w+).*?:\s*(.*?),/) {
		    my ($key, $value) = ($1, $2);

		    # I so don't want to deal with this
		    if ($value =~ /function/) { 
			
			my $function = q{};
			
			while (<$item>) {
			    last if /},/;
			    $function .= $_;
			}

			$value = $function;
		    }
		    
		    $$a{'verb'}{$verb}{$key} = $value;
		}
	    }
	}
	elsif (/out\.push\(\[\d, "(.*?)"\]\);/) {
	    my $line = $1;
	    $line =~ s/<a href.*?>//g;
	    $line =~ s#<\\/a>##g;
	    push @$getDescExtras, $line;
	}
	
        elsif (/out\.push\(\[\d, "(.*?)"\]\);/) {
            my $line = $1;
            $line =~ s/<a href.*?>//g;
            $line =~ s#<\\/a>##g;
            push @$getDescExtras, $line;
	}
	
    }
    $$a{'var'}{'getDescExtras'} = $getDescExtras;
    $$a{'var'}{'self_msgs'} = $self_msgs;
}

sub show_help {
    print <<HELP;
    set - *.js
    for d ; do $0 \$d ; done
HELP
}





	
	# # case 3: function
	# elsif (/^\n*function\s(\w*)\(/) { 
	#     my $function = $1;

	#     next if ($function eq 'getAssetInfo');

	#     my $code = q{};

	#     while (<$item>) {

	# 	my $string = $_;

	# 	if (/^function|^var|^verb/) {
	# 	    seek($item, -length($_), 1);	
	# 	    next;
	# 	}
		
	# 	$code .= $string;
	#     }
	
# functions we always want: 
# onCreate
# initInstanceProps
# getDescExtras
# anything starting with conversation_
# getBaseCost

#	    $$a{'function'}{$function} = $code;
#	}
	

