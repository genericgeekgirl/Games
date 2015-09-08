#!/usr/bin/perl -w
use Modern::Perl;
use Switch;

system("clear");
say "Cloak of Darkness - Perl Implementation - By Adri\n";

# initialize
my $score = 0;
my %inventory = ("cloak" => 1);
my $room = "foyer";
my $command;

my $lose_flag = true;
my $lights_on = false;

# room descriptions
my $foyer_desc = "You are standing in the Opera House's foyer. Exits are to the north, south and west.";
my $bar_desc =  "You are standing in the bar. " . ( (!$lights_on) ? "It is pitch black. " : "There is a message written on the floor. " ) . "The exit is to the north.";
my $cloakroom_desc = "You are standing in the cloakroom. There is a hook on the wall. The exit is to the east.";

# initial view of foyer
look();
# request user-input
command();


sub command {
    print "\n>";
    $command = <STDIN>;
    chomp($command);
    $command =~ tr/A-Z/a-z/;
    if ($command =~ "inventory" || $command eq "i") {
        inventory();
    }
    elsif ($command =~ "look") {
        look();
    }
    elsif ($command =~ "examine cloak") {
        say "It is a light-absorbent black velvet cloak";
    }        
    elsif ($command =~ "examine message" || $command =~ "read message") {
        ($lose_flag) ? say "You have lost.\n" : say "You have won.\n";
        exit();
    }        
    else {
        switch ($room) {
            case "foyer"     { foyer_command(); }
            case "bar"       { bar_command(); }
            case "cloakroom" { cloakroom_command(); }
        }
    }
    command();
}

# various commands

sub look {
    switch ($room) {
        case "foyer"     { say $foyer_desc; }
        case "bar"       { say $bar_desc; }
        case "cloakroom" { say $cloakroom_desc; }
    }
}

sub travel {
    $room = shift;
    look();
}
        
sub inventory {
    if ($inventory{"cloak"} == 1) {
        say "You are carrying a black velvet cloak"
    }
    else {
        say "You are empty-handed.";
    }
}

# room-specific commands

sub bar_command {
    if ($command eq "north") {
        travel('foyer');
    }
    elsif (!$lights_on) {
        say "You fumble around in the darkness.";
        $lose_flag = true;
    }
}

sub foyer_command {
    if ($command eq 'north') {
        say "It's cold outside.";
    }
    elsif ($command eq 'south') {
        travel('bar');
    } elsif ($command eq 'west') {
        travel('cloakroom');
    }    
}

sub cloakroom_command {
    if ($command eq "east") {
        travel('foyer'); 
    }
    elsif ($command =~ 'drop cloak') {
        say "You drop the cloak on the floor.";
        $lights_on = true;
    }
    elsif ($command =~ 'put cloak on hook') {
        say "You hang the cloak on the hook.";
        $lights_on = true;
    }
    elsif ($command =~ 'take cloak') {
        say "You take the cloak.";
        $lights_on = false;
    }
}    
        

