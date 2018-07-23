Chapter 1 - Do Not Change Any Of This

Include Cragne Suite by Ryan Veeder.

END is a region.

END2 is a room in END.

Part 1 - END2 Finale

Section 0 - Transcript (Not for release)

Understand "* [text]" as a mistake ("Noted.") when the location is END2.
Understand "*[text]" as a mistake ("Noted.") when the location is END2.

Adri Fast quitting is an action out of world.
Understand "quitr" as adri fast quitting.
Carry out adri fast quitting: follow the immediately quit rule.

Section 1 - Room Setup

Printed name of END2 is "ROOM NAME (Adri)". [TODO]

Description of END2 is "ROOM DESCRIPTION." [TODO]

Commentary of END2 is "TODO." [TODO]

Section 2 - Actions

Instead of examining the player when the location is END2:
say "TODO."

Adri laughing is an action applying to nothing.
Understand "laugh" as adri laughing when the location is END2.

Instead of adri laughing:
	increase adri-laugh-count by 1;
	say "TODO.";
	if adri-cry-count is greater than 0:
		say "[adri-unlock-cage]".

Adri crying is an action applying to nothing.
Understand "cry" and "weep" as adri crying when the location is END2.

Instead of adri crying:
	increase adri-cry-count by 1;
	say "TODO.";
	if adri-laugh-count is greater than 0:
		say "[adri-unlock-cage]".

Adri-cry-count is a number that varies. Adri-cry-count is 0.

Adri-laugh-count is a number that varies. Adri-laugh-count is 0.

To say adri-unlock-cage:
say "FOO: BAR: TODO.";
now the adri-cage is unlocked;
remove the adri-cage from play.

Adri casting xyzzy is an action applying to nothing.
Understand "xyzzy" and "plugh" as adri casting xyzzy.

Instead of adri casting xyzzy:
say "TODO"

Instead of saying goodbye to a person when the location is END2:
try leavetaking.

Instead of saying hello to a person when the location is END2:
	if the noun is the player:
		say "TODO.";
	otherwise:
		try leavetaking.

Instead of leavetaking when the location is END2:
say "Your lips form words, but no sound comes out."

Adri waving at is an action applying to one thing.
Understand "wave at [something]" as Adri waving at.

Instead of Adri waving at something:
	say "You wave at [the noun]. [run paragraph on]";
	if the noun is adri-Peter:
		if the adri-cage is locked:
			say "He doesn't wave back.";
		otherwise:
			say "He waves back at you.";
	otherwise:
		say "[paragraph break]"
                        

Section 3 - Things

[Initial appearance of the veeder-beaker is “There’s a beaker here.”]

An adri-mask is a kind of thing. An adri-mask is scenery.

The adri-buskin-mask is an adri-mask in END2.
Printed name of the adri-buskin-mask is "buskin mask".
Understand "mask" and "buskin" and "buskin mask" and "tragedy mask" and "crying mask" as adri-buskin-mask.
Description of the adri-buskin-mask is "TODO."

The adri-sock-mask is an adri-mask in END2.
Printed name of the adri-sock-mask is "sock mask".
Understand "mask" and "sock" and "sock mask" and "comedy mask" and "laughing mask" as adri-sock-mask.
Description of the adri-sock-mask is "TODO."

The adri-cage is scenery in END2.
The adri-cage can be locked or unlocked. The adri-cage is locked.
Printed name of the adri-cage is "cage of fire".
Understand "cage of fire" and "fire cage" and "fire" and "cage" as adri-cage.
Description of the adri-cage is "TODO."

Section 4 - NPCs

[TODO:]
[maybe the cage is the gate instead] 
[hell hound?]
[there  should be a gate to the outside]
[he can't hear you, he can't see you, he can't speak, he feels cold when you touch him, but he's breathing and has a pulse]
[you can't speak either. Non-vocalized laughing and crying.]
[there is no sound in this room, except maybe for...?]

Adri-Peter is a man in END2.
Printed name of adri-Peter is "Peter".
Understand "peter" and "husband" and "my husband" as adri-Peter.
Description of adri-Peter is "TODO[if the adri-cage is locked] FOO[otherwise] BAR[end if]."

[sign language - you only know a few phrases, like i love you]
[waving at and to]