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

[Non-vocalized laughing and crying.]

Adri laughing is an action applying to nothing.
Understand "laugh" as adri laughing when the location is END2.

Instead of adri laughing:
	increase adri-laugh-count by 1;
	if adri-Peter is locked:
		say "You force yourself to laugh, at first it's forced, but soon you're laughing hysterically, albeit silently.";
		if adri-cry-count is greater than 0:
			say "[adri-unlock-cage]";
	otherwise:
		say "You look at [adri-Peter], and you laugh. He's here, he's really here."
                        
Adri crying is an action applying to nothing.
Understand "cry" and "weep" as adri crying when the location is END2.

Instead of adri crying:
	increase adri-cry-count by 1;
	if adri-Peter is locked:
		say "You break down into tears, sobbing heavily, all without making a sound.";
		if adri-laugh-count is greater than 0:
			say "[adri-unlock-cage]";
	otherwise:
		say "You look at [adri-Peter], and you cry, this time from happiness and relief."

Adri-cry-count is a number that varies. Adri-cry-count is 0.

Adri-laugh-count is a number that varies. Adri-laugh-count is 0.

To say adri-unlock-cage:
say "[line break]Suddenly Peter looks up at you. He stands up and walks over to you, taking your hand.";
now the adri-Peter is unlocked.

Adri casting xyzzy is an action applying to nothing.
Understand "xyzzy" and "plugh" as adri casting xyzzy when the location is END2.

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

Understand the command "hug" as something new.
Understand the command "embrace" as something new.

Adri hugging is an action applying to one thing.
Understand "hug [something]" and "embrace [something]" as Adri hugging when the location is END2.

Instead of Adri hugging something when the noun is not Adri-Peter:
try kissing the noun.

Instead of waving when the location is END2:
try adri waving at Adri-Peter.

Adri waving at is an action applying to one thing.
Understand "wave at [something]" as Adri waving at.

Instead of Adri waving at something:
	say "You wave at [the noun]. [run paragraph on]";
	if the noun is adri-Peter:
		if the adri-Peter is locked:
			say "He doesn't wave back.";
		otherwise:
			say "He waves back at you.";
	otherwise:
		say "[paragraph break]"

Adri signing is an action applying to nothing.
Understand "use sign language" as Adri signing when the location is END2.

Instead of Adri signing:
	say "The only sign language you know is 'I love you.' You sign that at [Adri-Peter]. [run paragraph on]";
	if Adri-Peter is locked:
		say " He does not respond. He doesn't seem to be able to see you.";
	otherwise:
		say " He smiles."

Instead of going when the location is END2:
say "There is nothing but darkness in that direction."

Instead of going up when the location is END2:
say "You cannot fly."

Instead of going down when the location is END2:
say "The ground seems pretty solid."

Instead of listening when the location is END2:
say "You hear nothing at all. It is eerily quiet."

Section 3 - Things

An adri-mask is a kind of thing. An adri-mask is scenery.

The adri-buskin-mask is an adri-mask in END2.
Printed name of the adri-buskin-mask is "buskin mask".
Understand "mask" and "buskin" and "buskin mask" and "tragedy mask" and "crying mask" as adri-buskin-mask when the location is END2.
Description of the adri-buskin-mask is "TODO."

The adri-sock-mask is an adri-mask in END2.
Printed name of the adri-sock-mask is "sock mask".
Understand "mask" and "sock" and "sock mask" and "comedy mask" and "laughing mask" as adri-sock-mask when the location is END2.
Description of the adri-sock-mask is "TODO."

The adri-gate is a closed unopenable door and scenery.
The adri-gate is southeast of END2.
Printed name of the adri-gate is "gate".
Understand "gate" as adri-gate when the location is END2.
Description of the adri-gate is "TODO: [if the adri-gate is closed]closed[otherwise]open[end if] gate".

Instead of opening the adri-gate:
say "You can't find any way to open it. It doesn't seem to slide or push, and there's no way to pull it."

[remember to list gate and masks, etc, in description]
[world is purple, ground is stone, can walk around gate, but it's just a closed gate that cannot be opened]

Section 4 - NPCs

Adri-Peter is a man in END2.
Printed name of adri-Peter is "Peter".
Understand "peter" and "husband" and "my husband" as adri-Peter when the location is END2.
Description of adri-Peter is "TODO[if the adri-Peter is locked] FOO[otherwise] BAR[end if]."
Initial appearance of Adri-Peter is "TODO Peter."

Adri-Peter can be locked or unlocked. Adri-Peter is locked.

Instead of touching Adri-Peter:
	if the adri-Peter is locked:
		say "You press your hand against [adri-Peter]'s forward. He feels cold, but he's breathing and has a slow, steady pulse.";
	otherwise:
		say "You lay your hand on [adri-Peter]'s cheek. He smiles at you.".

Instead of kissing Adri-Peter:
	if the adri-Peter is locked:
		say "You kiss [adri-Peter] gently on the lips. Alas, it does not rouse him.";
	otherwise:
		say "You kiss [adri-Peter]. He kisses you back and holds you tightly.".

Instead of Adri hugging Adri-Peter:
	if the adri-Peter is locked:
		say "You wrap your arms around [adri-Peter], trying to warm him up. It doesn't seem to help.";
	otherwise:
		say "You pull [adri-Peter] into an embrace. He hugs you back."
                
[final move is to "enter gate"]
[through the open gate, you see Real Life, It is nighttime.]

["You take Peter's hand and walk forward, through the gate and into the night."]
