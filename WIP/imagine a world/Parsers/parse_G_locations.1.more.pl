#!/usr/bin/perl

use Modern::Perl;

if (!$ARGV[0]) { &show_help() and exit() }

my $location_file = $ARGV[0];
open my ($location), '<', $location_file;

my $location_name = q{};
my $destinations = [];
my $sign_txt = [];

while (<$location>) {
    if (/<game_object\s.*?label="(.*?)"\sclass_tsid/) { $location_name = $1 }
    elsif (/<objref\sid="target"\stsid="\w+"\slabel="(.*?)"\/>/) { push @$destinations, $1 }
    elsif (/sign_txt\">(.*?)<\/str/) { push @$sign_txt, $1 }

}

if (@$destinations) {
    say "$location_name: ".join(', ', @$destinations);
}

say q{};

if (@$sign_txt) {
#    say "Street - $location_name";
#    foreach (@$sign_txt) { say 'TXT '.$_ }
}

say q{};

close $location;

sub show_help {
    print <<HELP;
    set - G*.xml
    for d ; do $0 \$d ; done
HELP
}
