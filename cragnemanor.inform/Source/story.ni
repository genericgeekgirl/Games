Chapter 1 - Do Not Change Any Of This

Include Cragne Suite by Ryan Veeder.

END is a region.

END2 is a room in END.

Part 1 - END2 Finale

Section 0 - Transcript and Fast Quitting (Not for release)

Understand "* [text]" as a mistake ("Noted.") when the location is END2.
Understand "*[text]" as a mistake ("Noted.") when the location is END2.

Adri Fast quitting is an action out of world.
Understand "quitr" as adri fast quitting when the location is END2.
Carry out adri fast quitting: follow the immediately quit rule.

when play begins:
	if the location is END2:
		try switching the story transcript on;
		say "[bold type]You can annotate the transcript by prefixing your comment with *[paragraph break][roman type]"

Section 1 - Room Setup

Adri-room-color is a text that varies. Adri-room-color is usually "purple".
 
Printed name of END2 is "The Great [Adri-room-color in Sentence case] Unknown (Adri)".

Description of END2 is "The world around you is [adri-room-color]. So much [adri-room-color]. The immediate area is bright enough to see, but you don't see any obvious light source, and then there is darkness. [Adri-room-color in sentence case] darkness. The ground seems to be some sort of dark stone. There is a gate here, an ornate wrought-iron one with an arch over it, but it doesn't connect to any sort of fence. In fact, you can walk around the gate without any problem, and through it, you see only more [adri-room-color]. Above the gate, secured to the metal arch, are a set of masks."

Commentary of END2 is "TODO."

Section 2 - Actions

Instead of examining the player when the location is END2:
say "You've looked better. And some day, you will again. You could really use a nice warm shower when all this is over."

Adri laughing is an action applying to nothing.
Understand "laugh" as adri laughing when the location is END2.

Instead of adri laughing:
	increase adri-laugh-count by 1;
	if adri-Peter is locked:
		say "You force yourself to laugh, at first it's forced, but soon you're laughing hysterically, albeit silently.";
		if adri-laugh-count is 1:
			say "[line break]The world seems a little brighter.";
		if adri-cry-count is greater than 0:
			say "[adri-unlock-peter]";
	otherwise:
		say "You look at [adri-Peter], and you laugh. He's here, he's really here."
                        
Adri crying is an action applying to nothing.
Understand "cry" and "weep" as adri crying when the location is END2.

Instead of adri crying:
	increase adri-cry-count by 1;
	if adri-Peter is locked:
		say "You break down into tears, sobbing heavily, all without making a sound.";
		if adri-cry-count is 1:
			say "[line break]Your heart feels a little lighter.";
		if adri-laugh-count is greater than 0:
			say "[adri-unlock-peter]";
	otherwise:
		say "You look at [adri-Peter], and you cry, this time from happiness and relief."

Adri-cry-count is a number that varies. Adri-cry-count is 0.

Adri-laugh-count is a number that varies. Adri-laugh-count is 0.

To say adri-unlock-peter:
say "[line break]Suddenly Peter looks up at you. He stands up and walks over to you, taking your hand.";
now the adri-Peter is unlocked;
now the initial appearance of adri-Peter is "Peter is here. He towers over you, refusing to leave your side."

Adri casting xyzzy is an action applying to nothing.
Understand "xyzzy" and "plugh" and "plover" as adri casting xyzzy when the location is END2.

Instead of adri casting xyzzy:
say "Magic won't help you now."

Adri Pointing at is an action applying to one thing.
Understand "point at [something]" as adri pointing at when the location is END2.

Instead of adri pointing at something:
	say "You point at [the noun]. [run paragraph on]";
	if the adri-Peter is locked:
		say "Peter doesn't notice.";
	otherwise:
		say "Peter shrugs."

Instead of adri pointing at an adri-mask when adri-Peter is unlocked:
say "You gesture at [the noun]. Peter nods and retrieves [if the noun is plural-named]them[otherwise]both masks[end if] for you.";
now the player carries the adri-buskin-mask;
now the player carries the adri-sock-mask.

Instead of saying goodbye to a person when the location is END2:
try leavetaking.

Instead of saying hello to a person when the location is END2:
	if the noun is the player:
		say "You've always talked to yoursef. It's not a sign that you're going crazy. Or is it?";
	otherwise:
		try leavetaking.

Instead of leavetaking when the location is END2:
say "Your lips form words, but no sound comes out."

Adri hugging is an action applying to one thing.
Understand "adrihug [someone]" as Adri hugging when the location is END2.

Instead of Adri hugging something when the noun is not Adri-Peter:
try kissing the noun.

After reading a command when the location is END2:
	if the player's command includes "hug" or the player's command includes "embrace":
		replace the matched text with "adrihug"
                
Instead of waving when the location is END2:
try adri waving at Adri-Peter.

Adri waving at is an action applying to one thing.
Understand "wave at [something]" as Adri waving at when the location is END2.

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

After reading a command when the location is END2:
	if the player's command includes "unlock":
		replace the matched text with "adriunlock"

Adri unlocking is an action applying to one thing.
Understand "adriunlock [something]" as Adri unlocking when the location is END2.

Instead of adri unlocking something:
say "That isn't locked."

Section 3 - Things

The adri-purple is scenery in END2.
Understand "purple" and "sky" as adri-purple when the location is END2.
Description of the adri-purple is "Purple. Nothing but endless purple. It used to be your favorite color, but now you're not so sure."

Instead of taking the adri-purple:
say "You can't take that. You don't want that. You don't need that."

The adri-orange is a scenery.
Understand "orange" and "sky" as adri-orange when the location is END2.
Description of the adri-orange is "There is nothing but a sea of orange, everywhere you look."

Instead of taking the adri-orange:
say "It's not a piece of fruit that you can just pick up."

The adri-green is scenery.
Understand "green" and "sky" as adri-green when the location is END2.
Description of the adri-green is "Green. It's all green."

Instead of taking the adri-green:
say "That just isn't possible, even in this dimension."

The adri-ground is scenery in END2.
Understand "ground" and "floor" and "stone" as adri-ground when the location is END2.
Description of the adri-ground is "The ground consists of flat, dark stone, but you're not certain what kind."

Instead of taking the adri-ground:
say "You can't find so much as a loose pebble."

An adri-mask is a kind of thing. An adri-mask is scenery. An adri-mask is wearable.

Instead of taking an adri-mask when the noun is part of the adri-gate:
say "[if the noun is plural-named]They're[otherwise]It's[end if] just too high for you to reach."

After wearing an adri-mask:
say "You slip [the noun] over your face."

After taking off an adri-mask:
say "You take off [the noun].";

[TODO: What do I do with set of masks after they've been taken?]

The adri-set-of-masks is a plural-named adri-mask and part of the adri-gate.
The printed name of the adri-set-of-masks is "set of masks".
Understand "masks" as adri-set-of-masks when the location is END2.
Description of the adri-set-of-masks is "It's a set of those tragedy and comedy masks you've seen on theatre playbills. You think they're named Sock and Buskin."

The adri-sock-mask is an adri-mask and part of the adri-gate.
Printed name of the adri-sock-mask is "sock mask".
Understand "mask" and "sock" and "sock mask" and "comedy mask" and "laughing mask" and "gold mask" as adri-sock-mask when the location is END2.
Description of the adri-sock-mask is "This gold mask depicts a gleeful face. It makes you want to laugh, despite yourself."

Before wearing the adri-sock-mask:
now adri-orange is in END2;
now adri-purple is nowhere;
now adri-room-color is "orange".

Before taking off the adri-sock-mask:
now adri-purple is in END2;
now adri-orange is nowhere;
now adri-room-color is "purple".

The adri-buskin-mask is an adri-mask and part of the adri-gate.
Printed name of the adri-buskin-mask is "buskin mask".
Understand "mask" and "buskin" and "buskin mask" and "tragedy mask" and "crying mask" and "silver mask" as adri-buskin-mask when the location is END2.
Description of the adri-buskin-mask is "The face depicted in this silver mask is so sad, it makes you feel like crying."

Before  wearing the adri-buskin-mask:
now adri-green is in END2;
now adri-purple is nowhere;
now adri-room-color is "green".

Before taking off the adri-buskin-mask:
now adri-purple is in END2;
now adri-green is nowhere;
now adri-room-color is "purple".

The adri-gate is a closed unopenable door and scenery in END2.
The adri-gate is southeast of END2.
Printed name of the adri-gate is "gate".
Understand "gate" and "arch" as adri-gate when the location is END2.
Description of the adri-gate is "[if the adri-gate is closed]A pair of closed metal gates, the sort that should swing open, if only you could figure out how they worked. The bars are too decorative and entwined to squeeze through, and the gate is too high to climb over, not that you think it would take you anywhere if you did. You can walk right around it, and the other side is near identical, minus the masks on the arch[otherwise]The gates are open, beckoning you to walk through[end if]."

Instead of searching the adri-gate:
say "Looking more closely, you see a set of dials hidden in the decoration of the gate.";
now the adri-set-of-dials is part of the adri-gate;
now the adri-gold-dial is part of the adri-gate;
now the adri-silver-dial is part of the adri-gate.

An adri-dial is a kind of thing. An adri-dial is scenery.

The adri-set-of-dials is a plural-named adri-dial.
The printed name of the adri-set-of-dials is "set of dials".
Understand "dials" as adri-set-of-dials when the location is END2.
Description of adri-set-of-dials is "There are two dials here, like on a combination lock. One is gold and the other is silver."

Adri-gold-dial-count is a number that varies. Adri-gold-dial-count is 0.

Adri-silver-dial-count is a number that varies. Adri-silver-dial-count is 0.

The adri-gold-dial is an adri-dial.
Printed name of adri-gold-dial is "gold dial".
Understand "dial" and "gold dial" and "gold" as adri-gold-dial when the location is END2.
Description of adri-gold-dial is "It's a tiny golden dial. It can be turned to any number."

The adri-silver-dial is adri-dial.
Printed name of adri-silver-dial is "silver dial".
Understand "dial" and "silver dial" and "silver" as adri-silver-dial when the location is END2.
Description of adri-silver-dial is "It's a tiny silver dial. It can be turned to any number."

[TODO: turning dials to numbers]

Every turn when the adri-set-of-dials is part of the adri-gate and the location is END2:
	if adri-gold-dial-count is adri-laugh-count and adri-silver-dial-count is adri-cry-count:
		now the adri-gate is open;
		say "The [adri-gate] suddenly swings open."

Instead of taking the adri-gate:
say "Try as you might, you can't pull it out of the ground."

Instead of opening the adri-gate:
	if the adri-gate is closed:
		say "You pull and push on the bars to no avail. It must be locked, but there's no latch or keyhole.";
	otherwise:
		say "It's already open!"

Instead of adri unlocking the adri-gate:
	if the adri-gate is closed:
		say "You can't see an obvious way to unlock it.";
	otherwise:
		say "It's already open!"

Instead of entering the adri-gate:
	if the adri-gate is closed:
		say "The gate is still closed.";
	otherwise:
		say "You take Peter's hand and walk forward, through the gate and into the night.";
		end the story finally saying "The End"
                
Section 4 - NPCs

Adri-Peter is a man in END2.
Printed name of adri-Peter is "Peter".
Understand "peter" and "husband" and "my husband" as adri-Peter when the location is END2.
Description of adri-Peter is "It's your husband, Peter[if the adri-Peter is locked]! He looks unharmed, but his eyes are dull, and he is unresponse under your gaze[otherwise]. He looks as handsome as ever. He notices you looking at him, and he smiles, his bright eyes crinkling[end if]."
Initial appearance of Adri-Peter is "In the center of the lit area is Peter. He kneels on the ground, staring off into nothingness."

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
