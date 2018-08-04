Chapter 1 - Do Not Change Any Of This

Include Cragne Suite by Ryan Veeder.

Use unabbreviated object names.

END is a region.

END2 is a room in END.

Part 1 - END2 Finale

Chapter - Setup

Section - Transcript and Fast Quitting (Not for release)

Understand "* [text]" as a mistake ("Noted.") when the location is END2.
Understand "*[text]" as a mistake ("Noted.") when the location is END2.

Adri Fast quitting is an action out of world.
Understand "quitr" as adri fast quitting when the location is END2.
Carry out adri fast quitting: follow the immediately quit rule.

when play begins:
	if the location is END2:
		try switching the story transcript on;
		say "[bold type]You can annotate the transcript by prefixing your comment with *[paragraph break]Please send transcripts to genericgeekgirl@gmail.com.[paragraph break][roman type]"

Section - Other Setup

Adri requesting story information is an action out of world.
Understand "about" and "credits" as Adri requesting story information when the location is END2.

Carry out Adri requesting story information:
say "Beta testers: Andrew Schultz, Michael Phipps, Michael Silverman, Brett Witty[line break]"

Adri hinting is an action out of world.
Understand "hint" and "help" as Adri hinting when the location is END2.

Carry out Adri hinting:
say "Have you tried searching everything?"

Chapter - Environment

Adri-room-color is a text that varies. Adri-room-color is usually "purple".
 
Printed name of END2 is "The Great [Adri-room-color in Sentence case] Unknown (Adri)".

Description of END2 is "The world around you is [adri-room-color]. So much [adri-room-color]. The immediate area is bright enough to see, but you don't see any obvious light source, and then there is darkness. [Adri-room-color in sentence case] darkness. The ground seems to be some sort of dark stone. There is a gate here, an ornate wrought-iron one with an arch over it, but it doesn't connect to any sort of fence. In fact, you can walk around the gate without any problem, and through it, you see only more [adri-room-color][if the adri-set-of-masks is part of the adri-gate]. Above the gate, secured to the metal arch, are a set of masks[end if]."

Commentary of END2 is "There's a fly buzzing around here somewhere."

Instead of listening when the location is END2:
say "You hear nothing at all. It is eerily quiet."

Chapter - Actions

Section - Laughing and Crying
                                
Adri laughing is an action applying to nothing.
Understand "laugh" as adri laughing when the location is END2.

Instead of adri laughing:
	increase adri-laugh-count by 1;
	if adri-Peter is locked:
		say "You laugh. At first it feels forced, but soon you're laughing hysterically, albeit silently.";
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
now the initial appearance of adri-Peter is "[Adri-Peter] is here. He towers over you, refusing to leave your side."

Section - Other Actions

Instead of thinking when the location is END2:
say "You're too overwhelmed to think clearly."

Instead of jumping when the location is END2:
say "You jump, but the gravity here seems heavier than normal."

Adri screaming is an action applying to nothing.
Understand "scream" as Adri screaming when the location is END2.

Instead of Adri screaming:
say "You scream until your throat is sore, never making a sound."

Adri blaspheming is an action applying to nothing.
Understand "say Ialdabaoloth" and "Ialdabaoloth" as adri blaspheming.

Instead of Adri blaspheming:
	if adri-Peter is locked:
		say "Suddenly [adri-peter] stands and approaches you. He slaps you hard across the face, knocking you to the ground. Then he walks off into the darkness. You stare after him for a while. When you finally turn around, you notice the gate is also gone.";
		end the story saying "You have lost everything";
	otherwise:
		say "[Adri-Peter] wraps his hands tightly around your throat. You struggle, but he's much stronger than you. As you lose consciousness, you hear the sound of laughter.";
		end the story saying "You have died";
                
Adri waking is an action applying to one thing.
Understand "wake [someone]" and "rouse [someone]" and "shake [someone]" as Adri waking when the location is END2.

Adri smiling is an action applying to nothing.
Understand "smile" as adri smiling when the location is END2.

Instead of adri smiling:
	if adri-Peter is locked:
		say "You don't really feel like smiling right now.";
	otherwise:
		say "You smile at [Adri-peter], and he smiles back."

Adri casting xyzzy is an action applying to nothing.
Understand "xyzzy" and "plugh" and "plover" as adri casting xyzzy when the location is END2.

Instead of adri casting xyzzy:
say "Magic can't save you now."

Before showing something to someone:
try adri pointing at the noun instead.

Adri Pointing at is an action applying to one thing.
Understand "point to [something]" and "point at [something]" and "gesture at [something]" as adri pointing at when the location is END2.

Instead of adri pointing at something:
	say "You point at [the noun]. [run paragraph on]";
	if the adri-Peter is locked:
		say "[Adri-Peter] doesn't notice.";
	otherwise:
		say "[Adri-Peter] shrugs."

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
Understand "use sign language" and "sign" as Adri signing when the location is END2.

Adri signing at is an action applying to one thing.
Understand "sign at [Adri-Peter]" and "sign to [Adri-Peter]" as Adri signing at when the location is END2.

Instead of Adri signing at something:
try Adri signing.

Instead of Adri signing:
	say "The only sign language you know is 'I love you.' You sign that at [Adri-Peter]. [run paragraph on]";
	if Adri-Peter is locked:
		say "He does not respond. He doesn't seem to be able to see you.";
	otherwise:
		say "He smiles."

After reading a command when the location is END2:
	if the player's command includes "unlock":
		replace the matched text with "adriunlock"

Adri unlocking is an action applying to one thing.
Understand "adriunlock [something]" as Adri unlocking when the location is END2.

Instead of adri unlocking something:
say "That isn't locked."
 
Section - Conversation

Persuasion rule for asking people to try doing something when the location is END2:
say "[adri-silence]";
persuasion fails.

Instead of saying goodbye to a person when the location is END2:
try leavetaking.

Instead of saying hello to a person when the location is END2:
	if the noun is the player:
		say "You've always talked to yourself. It's not a sign that you're going crazy. Or is it?";
	otherwise:
		try leavetaking.

Instead of leavetaking when the location is END2:
say "[adri-silence]".

To say adri-silence:
say "Your lips form words, but no sound comes out."

Before doing anything when the location is END2:
now the current interlocutor is Adri-Peter.

Instead of speaking when the location is END2:
try leavetaking.

Section - Going

Instead of going when the location is END2:
say "There is nothing but darkness in that direction."

[Instead of entering when the location is END2:
say "There is nothing to enter here."] [Doesn't work]

Instead of exiting when the location is END2:
	if the adri-gate is closed:
		say "You're not quite certain yet how to do that.";
	otherwise:
		try entering the adri-gate.

Instead of going up when the location is END2:
say "You cannot fly."

Instead of going down when the location is END2:
say "The ground seems pretty solid."

Chapter - Scenery

Section - Backgrounds

An adri-background is a kind of thing.
An adri-background is scenery.
An adri-background is privately-named.

Instead of tasting an adri-background:
say "It tastes [one of]sweet[or]salty[or]bitter[at random]."

The adri-purple is an adri-background in END2.
Printed name of adri-purple is "purple".
Understand "purple" and "sky" as adri-purple when the location is END2.
Description of the adri-purple is "Purple, nothing but endless purple."

Instead of taking the adri-purple:
say "You can't take that. You don't want that. You don't need that."

The adri-orange is an adri-background.
Printed name of adri-orange is "orange".
Understand "orange" and "sky" as adri-orange when the location is END2.
Description of the adri-orange is "It's just a sea of orange, everywhere you look."

Instead of taking the adri-orange:
say "It's not a piece of fruit that you can just pick up."

The adri-green is an adri-background.
Printed name of adri-green is "green".
Understand "green" and "sky" as adri-green when the location is END2.
Description of the adri-green is "It's all green, as far as your eyes can see."

Instead of taking the adri-green:
say "That just isn't possible, even in this dimension."

Section - The Fly

adri-search-count is a number that varies. adri-search-count is 0.

Does the player mean searching an adri-background: it is likely.
Does the player mean searching adri-peter: it is unlikely.

Instead of searching an adri-background:
	if adri-search-count is 3:
		say "You find a horsefly, buzzing silently around your head.";
		move the adri-fly to the location;
	otherwise:
		say "There's nothing there, except more [adri-room-color].";
		increase adri-search-count by 1.

The adri-fly is privately-named scenery.
Printed name of adri-fly is "horsefly".
Understand "fly" and "horsefly" as the adri-fly when the location is END2.
Description of the adri-fly is "Disgusting little thing."

Instead of taking the adri-fly:
say "It flies out of your reach."

Instead of attacking the adri-fly:
say "You attempt to squash the [adri-fly]. As it dodges swiftly out of the way, it begins to multiply. Soon you are surrounded by flies. They swarm over your body, feasting on your flesh.";
end the story saying "You have died".

Section - Other

The adri-darkness is privately-named scenery in END2.
Printed name of adri-darkness is "darkness".
Understand "darkness" as adri-darkness when the location is END2.
Description of the adri-darkness is "You are surrounded by darkness in all directions."

Instead of taking the adri-darkness:
say "Taking the darkness? Unheard of."
                
The adri-ground is privately-named scenery in END2.
Printed name of adri-ground is "ground".
Understand "ground" and "floor" and "stone" and "rock" as adri-ground when the location is END2.
Description of the adri-ground is "The ground consists of flat, dark stone, but you're not certain what kind."

Instead of searching the adri-ground:
say "You can't find so much as a loose pebble."

Instead of taking the adri-ground:
say "The ground is one solid piece of rock. There's nothing to take."

Chapter - Items

Section - Masks

An adri-mask is a kind of thing. An adri-mask is wearable. An adri-mask is privately-named.

Instead of taking an adri-mask when the noun is part of the adri-gate:
say "[if the noun is plural-named]They're[otherwise]It's[end if] just too high for you to reach, even standing on your toes."

Instead of adri pointing at an adri-mask when adri-Peter is unlocked:
	say "You gesture at [the noun]. [run paragraph on]";
	if the noun is part of the adri-gate:
		say "[Adri-Peter] nods and retrieves [if the noun is plural-named]them[otherwise]both masks[end if] for you.";
		now the player carries the adri-buskin-mask;
		now the player carries the adri-sock-mask;
		now the adri-set-of-masks is part of the player;
	otherwise:
		say "[Adri-Peter] shrugs."

Instead of taking the adri-set-of-masks:
say "[adri-sock-mask]: [run paragraph on]";
try taking the adri-sock-mask;
say "[adri-buskin-mask]: [run paragraph on]";
try taking the adri-buskin-mask.

Instead of dropping the adri-set-of-masks:
say "[adri-sock-mask]: [run paragraph on]";
try dropping the adri-sock-mask;
say "[adri-buskin-mask]: [run paragraph on]";
try dropping the adri-buskin-mask.

Instead of searching the adri-set-of-masks:
say "[adri-sock-mask]: [run paragraph on]";
try searching the adri-sock-mask;
say "[adri-buskin-mask]: [run paragraph on]";
try searching the adri-buskin-mask.

Before searching an adri-mask when the noun is part of the adri-gate:
say "That would be easier if you were holding the [if the noun is plural-named]masks[otherwise]mask[end if]." instead.

Before searching an adri-mask when the noun is worn:
say "You can't do that while wearing it." instead.

Before giving the adri-set-of-masks to someone when the adri-set-of-masks is part of the player:
say "[Adri-Peter] doesn't seem interested." instead.

Instead of putting an adri-mask on adri-Peter:
say "[Adri-Peter] shakes his head."

Instead of wearing the adri-set-of-masks:
say "You can only wear one mask at a time."

Check wearing an adri-mask when an adri-mask is worn:
say "You hold the other mask in front of your face and look through the eyes, and your vision goes black. You take the mask away." instead.

After taking off an adri-mask:
say "You take off [the noun].";

The adri-set-of-masks is a plural-named adri-mask.
The adri-set-of-masks is part of the adri-gate.
The printed name of the adri-set-of-masks is "set of masks".
Understand "set of masks" and "masks" as adri-set-of-masks when the location is END2.
Description of the adri-set-of-masks is "It's a set of those tragedy and comedy masks you've seen on theatre playbills. You think they're named Sock and Buskin."

The adri-sock-mask is an adri-mask and part of the adri-gate.
Printed name of the adri-sock-mask is "sock mask".
Understand "mask" and "sock" and "sock mask" and "comedy mask" and "laughing mask" and "silver mask" as adri-sock-mask when the location is END2.
Description of the adri-sock-mask is "This silver mask depicts a gleeful face. It makes you want to laugh, despite yourself."

After wearing the adri-sock-mask:
now adri-orange is in END2;
now adri-purple is nowhere;
now adri-room-color is "orange";
now the adri-orange-spot is part of the adri-gate;
say "You slip [the noun] over your face."

Before taking off the adri-sock-mask:
now adri-purple is in END2;
now adri-orange is nowhere;
now adri-room-color is "purple";
now the adri-orange-spot is nowhere.

The adri-buskin-mask is an adri-mask and part of the adri-gate.
Printed name of the adri-buskin-mask is "buskin mask".
Understand "mask" and "buskin" and "buskin mask" and "tragedy mask" and "crying mask" and "gold mask" as adri-buskin-mask when the location is END2.
Description of the adri-buskin-mask is "The face depicted in this gold mask is so sad, it makes you feel like crying."

After wearing the adri-buskin-mask:
now adri-green is in END2;
now adri-purple is nowhere;
now adri-room-color is "green";
now the adri-green-spot is part of the adri-gate;
say "You slip [the noun] over your face."

Before taking off the adri-buskin-mask:
now adri-purple is in END2;
now adri-green is nowhere;
now adri-room-color is "purple";
now the adri-green-spot is nowhere.

adri-orange-sock-mask-value is a number that varies.
adri-green-buskin-mask-value is a number that varies.

Before searching the adri-buskin-mask for the first time:
now adri-green-buskin-mask-value is a random number between 1 and 9.

Before searching the adri-sock-mask for the first time:
now adri-orange-sock-mask-value is a random number between 1 and 9.

Instead of searching the adri-buskin-mask:
say "It's been scratched out, but you think you can make out the number [adri-green-buskin-mask-value]."

Instead of searching the adri-sock-mask:
say "You wipe away some dirt, revealing the number [adri-orange-sock-mask-value]."

Section - Gate

The adri-gate is a privately-named closed unopenable door and scenery in END2.
The adri-gate is southeast of END2.
Printed name of the adri-gate is "gate".
Understand "gate" and "gates" as adri-gate when the location is END2.
Description of the adri-gate is "A pair of closed metal gates, the sort that should swing open, if only you could figure out how they worked. The bars are too decorative and entwined to squeeze through, and the gate is too high to climb over, not that you think it would take you anywhere if you did. You can walk right around it, and the other side is [if the adri-set-of-masks is part of the adri-gate]near identical, minus the masks on the arch[otherwise]identical[end if][if the adri-set-of-dials is part of the adri-gate]. You have found a set of dials, one on each gate[end if]."

The adri-bars are privately-named, plural-named, and part of the adri-gate.
Printed name of the adri-bars are "bars".
Understand "bars" as adri-bars when the location is END2.
Description of the adri-bars is "The iron bars twist around each other, forming vines."

The adri-arch is privately-named scenery in END2.
Printed name of the adri-arch is "arch".
Understand "arch" as adri-arch when the location is END2.
Description of the adri-arch is "A tall iron arch standing around the gates[if the adri-set-of-masks is part of the adri-gate]. A set of masks hang at the apex[end if]."

Instead of searching the adri-arch:
try searching the adri-gate.

After examining the adri-gate when the adri-gate is closed:
	if the adri-buskin-mask is worn:
		say "You see a glowing green spot on the right side of the gate.";
	otherwise if the adri-sock-mask is worn:
		say "You see a glowing orange spot on the left side of the gate."

Before searching the adri-gate when an adri-mask is worn:
say "You can barely see with this mask on." instead.

Instead of climbing the adri-gate:
say "You make it all the way to the top of the gate, when your foot slips and you fall across the top of the gate, impaling yourself on a rather sharp spike you hadn't noticed before. Your death comes slowly, but it does come.";
end the story saying "You have died".
   
Instead of searching the adri-gate:
say "Looking more closely, you see a set of dials hidden in the decoration of the gate.";
now the adri-set-of-dials is part of the adri-gate;
now the adri-orange-left-dial is part of the adri-gate;
now the adri-green-right-dial is part of the adri-gate.

Instead of taking the adri-gate:
say "Try as you might, you can't pull it out of the ground."

Instead of closing the adri-gate:
	if the adri-gate is closed:
		say "It's already closed.";
	otherwise:
		say "The gates won't move. Besides, your goal was to [italic type]open[roman type] the gate. Mission accomplished."

Instead of pushing or pushing the adri-gate:
try opening the adri-gate.
                
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

Instead of adri pointing at the adri-gate when the adri-gate is open:
	if the adri-Peter is locked:
		say "You point at the [noun]. [Adri-peter] doesn't acknowledge it.";
	otherwise:
		say "You gesture at the open gate. [Adri-Peter] nods and waves for you to go first."

Instead of entering the adri-gate:
	if the adri-gate is closed:
		say "The gate is still closed.";
	otherwise:
		if the adri-Peter is locked: [this shouldn't be possible]
			say "You won't leave without your husband!";
		otherwise:
			say "You take [Adri-Peter]'s hand and walk forward, through the gate and into the night.";
			end the story finally saying "You have won"

Section - Spots

An adri-spot is a kind of thing. An adri-spot is scenery. An adri-spot is privately-named.

Instead of searching an adri-spot:
say "It's just a bit of colored bright light. There's nothing else there."

Instead of pushing or touching an adri-spot:
say "You press [the noun], but nothing happens."

The adri-orange-spot is an adri-spot.
Printed name of adri-orange-spot is "orange spot".
Understand "orange spot" and "spot" and "dot" and "orange dot" as adri-orange-spot when the location is END2.
Description of adri-orange-spot is "A tiny dot of bright orange has appeared on the left side of the gate."

The adri-green-spot is an adri-spot.
Printed name of adri-green-spot is "green spot".
Understand "green spot" and "spot" and "dot" and "green dot" as adri-green-spot when the location is END2.
Description of adri-green-spot is "A tiny dot of bright green has appeared on the right side of the gate."
                
Section - Dials

An adri-dial is a kind of thing. An adri-dial is scenery. An adri-dial is privately-named.

The adri-set-of-dials is a plural-named adri-dial.
The printed name of the adri-set-of-dials is "set of dials".
Understand "set of dials" and "dials" as adri-set-of-dials when the location is END2.
Description of adri-set-of-dials is "There are two dials here, like those found on a combination lock, one on each gate."

To say adri-dial-description:
say "It's a tiny dial. It can be turned to any number. It currently reads ".

adri-orange-left-dial-count is a number that varies. adri-orange-left-dial-count is -1.
adri-green-right-dial-count is a number that varies. adri-green-right-dial-count is -1.

The adri-orange-left-dial is an adri-dial.
Printed name of adri-orange-left-dial is "left dial".
Understand "dial" and "left dial" and "left" as adri-orange-left-dial when the location is END2.
Description of adri-orange-left-dial is "[adri-dial-description][if adri-orange-left-dial-count is greater than 0][adri-orange-left-dial-count][otherwise]0[end if]."

The adri-green-right-dial is adri-dial.
Printed name of adri-green-right-dial is "right dial".
Understand "dial" and "right dial" and "right" as adri-green-right-dial when the location is END2.
Description of adri-green-right-dial is "[adri-dial-description][if adri-green-right-dial-count is greater than 0][adri-green-right-dial-count][otherwise]0[end if]."

Instead of pulling or pushing an adri-dial:
say "It's a dial. Therefore it can be turned, but neither pushed nor pulled."

Adri setting is an action applying to one thing and one number.
Understand "turn [adri-dial] to [a number]" as Adri setting when the location is END2.

Adri spinning is an action applying to one thing.
Understand "spin [adri-dial]" as Adri spinning when the location is END2.

Instead of Adri spinning an adri-dial:
	let N be a random number between 0 and 9;
	say "You spin the dial, and it randomly lands on [N].";
	if the noun is the adri-orange-left-dial:
		now adri-orange-left-dial-count is N;
	otherwise if the noun is the adri-green-right-dial:
		now adri-green-right-dial-count is N.

Instead of turning an adri-dial:
say "You need to turn a dial to a number."

Instead of Adri setting an adri-dial:
	let N be the number understood;
	if N is greater than 9 or N is less than 0:
		say "The dial only goes from 0 to 9.";
		stop the action;
	if the noun is the adri-set-of-dials:
		say "You can only use one dial at a time.";
	otherwise:
		say "You turn [the noun] to [N].";
		if the noun is the adri-orange-left-dial:
			now adri-orange-left-dial-count is N;
		otherwise if the noun is the adri-green-right-dial:
			now adri-green-right-dial-count is N.

Every turn when the adri-set-of-dials is part of the adri-gate and the location is END2 and the adri-gate is closed:
	if adri-orange-left-dial-count is adri-orange-sock-mask-value and adri-green-right-dial-count is adri-green-buskin-mask-value:
		now the adri-gate is open;
		now the description of the adri-gate is "The gates are open, beckoning you to walk through.";
		say "[The adri-gate] suddenly swings open."

Chapter - People

Section - The Player

Instead of examining the player when the location is END2:
say "You've looked better. You could really use a nice warm shower when all this is over."

Instead of searching the player when the location is END2:
say "You've left everything behind."

Section - Peter

Adri-Peter is a privately-named man in END2.
Printed name of adri-Peter is "Peter".
Understand "peter" and "husband" and "my husband" as adri-Peter when the location is END2.
Description of adri-Peter is "It's your husband, Peter[if the adri-Peter is locked]! He looks unharmed, but his eyes are dull, and he is unresponsive under your gaze[otherwise]. He looks as handsome as ever.[end if]."
Initial appearance of Adri-Peter is "In the center of the lit area is Peter. He kneels on the ground, staring off into nothingness."

Adri-Peter can be locked or unlocked. Adri-Peter is locked.

Adri-Peter-eyes is a privately-named part of Adri-Peter.
Printed name of adri-Peter-eyes is "Peter's eyes". 
Understand "Peter's eyes" and "eyes" as Adri-Peter-eyes when the location is END2.
Description of adri-peter-eyes is "[if adri-peter is locked][Adri-Peter] stares unblinkingly ahead of him, not focusing on anything in particular[otherwise]You gaze deeply into [Adri-Peter-eyes]. They stand out against the [adri-room-color] of the world around you[end if]."

Adri-Peter-hand is a privately-named part of Adri-Peter.
Printed name of adri-Peter-hand is "Peter's hand".
Understand "Peter's hand" and "hand" as Adri-peter-hand when the location is END2.
Description of adri-peter-hand is "It's Peter's hand. There's nothing particularly special about it."

Instead of taking adri-peter-hand:
	if the adri-Peter is locked:
		say "You take [adri-peter-hand] in yours. Suddenly he has your hand pinned behind your back. Before you can react, he rips into your throat with his teeth, snarling as he does so.";
		end the story saying "You have died";
	otherwise:
		say "You give [adri-peter-hand] a quick squeeze."

Instead of Adri waking Adri-Peter:
	if adri-Peter is locked:
		say "You shake [Adri-Peter]. When you let go, his body continues to shake. His skin splits open, revealing the most beautiful creature you have ever seen. Overcome with happiness, you start to weep, tears of blood running down your cheeks.";
		end the story saying "You have gone utterly mad";
	otherwise:
		say "He's already awake."
                
Instead of searching Adri-Peter:
say "You find a note in his pocket.";
now the adri-note is in the location.

The adri-note is a privately-named thing.
Printed name of adri-note is "note".
Understand "note" as adri-note when the location is END2.

Instead of examining the adri-note:
say "You unfold and read the note. The handwriting is unmistakably your husband's. 'Ialdabaoloth'. It's a single word, but suddenly everything makes sense. You start to laugh uncontrollably.";
end the story saying "You have gone utterly mad"

Before showing the adri-note to adri-peter when adri-peter is unlocked:
say "Peter starts to laugh. Then you start to laugh. You barely notice as he plunges his hand into your chest, ripping out your heart. You're too busy laughing.";
end the story saying "You have died"

Instead of entering Adri-Peter:
try climbing the adri-peter.

Instead of climbing Adri-Peter:
	if the adri-Peter is locked:
		say "You try to climb onto [Adri-peter]'s shoulders, but you slip and lose your balance. As you fall, you pull his lifeless body down onto yours. You are pinned underneath him, his face just inches from yours. As you stare into his cold, empty eyes, you realize he is already dead.";
		end the story saying "You have lost everything";
	otherwise:
		say "[Adri-Peter] helps you climb onto his shoulders. As you reach for the masks, he stumbles under your weight, causing you to fall against the gate. A particularly sharp bit of decoration pierces your chest, killing you instantly.";
		end the story saying "You have died".
                
Instead of attacking Adri-Peter:
say "Have you gone crazy? Well, maybe you have. But nonetheless, that doesn't seem like a good idea."

Instead of touching Adri-Peter:
	if the adri-Peter is locked:
		say "You place your fingers on [adri-peter]'s neck, feeling for a pulse. It's weak and irregular, but it's there. Suddenly his hands are caressing your cheeks. He stares intently into your eyes as he twists your head to the side, snapping your neck.";
		end the story saying "You have died";
	otherwise:
		say "You lay your hand on [adri-Peter]'s cheek. He smiles at you.".

Instead of kissing Adri-Peter:
	if the adri-Peter is locked:
		say "You kiss [adri-Peter] gently on the lips, hoping to rouse him. For a moment, it seems like he's responding in kind, until you feel the tentacles slide down your throat. The last thing you see are his eyes, glowing with a distant light.";
		end the story saying "You have died";		
	otherwise:
		say "You kiss [adri-Peter]. He kisses you back and holds you tightly for a moment."

Instead of Adri hugging Adri-Peter:
	if the adri-Peter is locked:
		say "You wrap your arms around [adri-Peter], trying to warm him up. You're about to give up, when he suddenly hugs you back. He's cold, so cold. You try to pull away, but he only holds you more tightly, squeezing you until you can barely breath. When he finally releases you, you find you are frozen in place. As the world around you goes black, all you can think is that at least your husband is alive.";
		end the story saying "You have been lost";
	otherwise:
		say "You pull [adri-Peter] into an embrace. He hugs you back."

Chapter - Testing

test adri-foo with "laugh / cry / point at masks / search gate / search buskin / search sock".
