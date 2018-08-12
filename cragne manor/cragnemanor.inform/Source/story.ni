"Cragne Manor - The Final Room" by "Adri".

The story creation year is 2018.
The release number is 2.
The story headline is "A snippet of horror".
The story genre is "horror".
The story description is "This room was created in collaboration with the Cragne Manor project."

Chapter - Setup

Section - Cragne Manor Setup

Include Cragne Suite by Ryan Veeder.

Use unabbreviated object names.

END is a region.
END2 is a room in END.

Section - Transcript and Fast Quitting (Not for release)

Understand "* [text]" as a mistake ("Noted.").
Understand "*[text]" as a mistake ("Noted.").

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

When play begins:
	if the location is END2:
		try switching the story transcript on;
		say "[bold type]You can annotate the transcript by prefixing your comment with *[paragraph break]Please send transcripts to genericgeekgirl@gmail.com.[paragraph break][roman type]"

Section - Other Setup

Requesting story information is an action out of world.
Understand "about" and "credits" as requesting story information.

Carry out requesting story information:
say "[story description][paragraph break]Beta testers: Andrew Schultz, Michael Phipps, Michael Silverman, Brett Witty, Brian Liberge[paragraph break][commentary of END2][line break]"

Hinting is an action out of world.
Understand "hint" and "help" as hinting.

Chapter - Environment

Room-color is a text that varies. room-color is usually "purple".
 
Printed name of END2 is "The Great [room-color in Sentence case] Unknown".

Description of END2 is "The world around you is [room-color]. So much [room-color]. The immediate area is bright enough to see, but you don't see any obvious light source, and then there is darkness. [room-color in sentence case] darkness. The ground seems to be some sort of dark stone. There is a gate here, an ornate wrought-iron one with an arch over it, but it doesn't connect to any sort of fence. In fact, you can walk the around gate without any problem, and through it, you see only more [room-color][if the set-of-masks is part of the gate]. Above the gate, secured to the metal arch, are a set of masks[end if]."

Commentary of END2 is "There's a fly buzzing around here somewhere."

Instead of listening:
say "You hear nothing at all. It is eerily quiet."

Chapter - Actions

Section - Laughing and Crying

Understand the command "kick" as "attack".
                      
Laughing is an action applying to nothing.
Understand "laugh" as laughing.

Instead of laughing:
	increase laugh-count by 1;
	if Peter is locked:
		say "You laugh. At first it feels forced, but soon you're laughing hysterically, albeit silently.";
		if laugh-count is 1:
			say "[line break]The world seems a little brighter.";
		if cry-count is greater than 0:
			say "[unlock-peter]";
	otherwise:
		say "You look at [Peter], and you laugh. He's here, he's really here."
                        
Crying is an action applying to nothing.
Understand "cry" and "weep" as crying.

Instead of crying:
	increase cry-count by 1;
	if Peter is locked:
		say "You break down into tears, sobbing heavily, all without making a sound.";
		if cry-count is 1:
			say "[line break]Your heart feels a little lighter.";
		if laugh-count is greater than 0:
			say "[unlock-peter]";
	otherwise:
		say "You look at [Peter], and you cry, this time from happiness and relief."

Cry-count is a number that varies. Cry-count is 0.

Laugh-count is a number that varies. Laugh-count is 0.

To say unlock-peter:
say "[line break]Suddenly Peter looks up at you. He stands up and walks over to you, taking your hand.";
now the Peter is unlocked;
now the initial appearance of Peter is "[Peter] is here. He towers over you, refusing to leave your side."

Section - Other Actions

Instead of thinking:
say "You're too overwhelmed to think clearly."

Instead of jumping:
say "You jump, but the gravity here seems heavier than normal."

screaming is an action applying to nothing.
Understand "scream" as screaming.

Instead of screaming:
say "You scream until your throat is sore, never making a sound."

Blaspheming is an action applying to nothing.
Understand "say Ialdabaoloth" and "Ialdabaoloth" as blaspheming.

Instead of blaspheming:
	if Peter is locked:
		say "Suddenly [peter] stands and approaches you. He slaps you hard across the face, knocking you to the ground. Then he walks off into the darkness. You stare after him for a while. When you finally turn around, you notice the gate is also gone.";
		end the story saying "You have lost everything";
	otherwise:
		say "[Peter] wraps his hands tightly around your throat. You struggle, but he's much stronger than you. As you lose consciousness, you hear the sound of laughter.";
		end the story saying "You have died";
                
Shaking is an action applying to one thing.
Understand "wake [someone]" and "rouse [someone]" and "shake [someone]" as shaking.

Smiling is an action applying to nothing.
Understand "smile" as smiling.

Instead of smiling:
	if Peter is locked:
		say "You don't really feel like smiling right now.";
	otherwise:
		say "You smile at [peter], and he smiles back."

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" and "plugh" and "plover" as casting xyzzy.

Instead of casting xyzzy:
say "Magic can't save you now."

Before showing something to someone:
try pointing at the noun instead.

Pointing at is an action applying to one thing.
Understand "point to [something]" and "point at [something]" and "gesture at [something]" as pointing at.

Instead of pointing at something:
	say "You point at [the noun]. [run paragraph on]";
	if the Peter is locked:
		say "[Peter] doesn't notice.";
	otherwise:
		say "[Peter] shrugs."

Hugging is an action applying to one thing.
Understand "adrihug [someone]" as hugging.

Instead of hugging something when the noun is not Peter:
try kissing the noun.

After reading a command:
	if the player's command includes "hug" or the player's command includes "embrace":
		replace the matched text with "adrihug"
                
Instead of waving:
try waving at Peter.

Waving at is an action applying to one thing.
Understand "wave at [something]" as waving at.

Instead of waving at something:
	say "You wave at [the noun]. [run paragraph on]";
	if the noun is Peter:
		if the Peter is locked:
			say "He doesn't wave back.";
		otherwise:
			say "He waves back at you.";
	otherwise:
		say "[paragraph break]"

Signing is an action applying to nothing.
Understand "use sign language" and "sign" as signing.

Signing at is an action applying to one thing.
Understand "sign at [Peter]" and "sign to [Peter]" as signing at.

Instead of signing at something:
try signing.

Instead of signing:
	say "The only sign language you know is 'I love you.' You sign that at [Peter]. [run paragraph on]";
	if Peter is locked:
		say "He does not respond. He doesn't seem to be able to see you.";
	otherwise:
		say "He smiles."

After reading a command:
	if the player's command includes "unlock":
		replace the matched text with "adriunlock"

Unlocking is an action applying to one thing.
Understand "adriunlock [something]" as unlocking.

Instead of unlocking something:
say "That isn't locked."
 
Section - Conversation

Persuasion rule for asking people to try doing something:
say "[silence]";
persuasion fails.

Instead of saying goodbye to a person:
try leavetaking.

Instead of saying hello to a person:
	if the noun is the player:
		say "You've always talked to yourself. It's not a sign that you're going crazy. Or is it?";
	otherwise:
		try leavetaking.

Instead of leavetaking:
say "[silence]".

To say silence:
say "Your lips form words, but no sound comes out."

Before doing anything:
now the current interlocutor is Peter.

Instead of speaking:
try leavetaking.

Section - Going

Instead of going:
say "There is nothing but darkness in that direction."

[Instead of entering:
say "There is nothing to enter here."] [Doesn't work]

Instead of exiting:
	if the gate is closed:
		say "You're not quite certain yet how to do that.";
	otherwise:
		try entering the gate.

Instead of going up:
say "You cannot fly."

Instead of going down:
say "The ground seems pretty solid."

Chapter - Scenery

Section - Backgrounds

A background is a kind of thing.
A background is scenery.

Understand "sky" as a background.

Instead of tasting a background:
say "It tastes [one of]sweet[or]salty[or]bitter[at random]."

The purple is a background in END2.
Description of the purple is "Purple, nothing but endless purple."

Instead of taking the purple:
say "You can't take that. You don't want that. You don't need that."

The orange is a background.
Description of the orange is "It's just a sea of orange, everywhere you look."

Instead of taking the orange:
say "It's not a piece of fruit that you can just pick up."

The green is a background.
Description of the green is "It's all green, as far as your eyes can see."

Instead of taking the green:
say "That just isn't possible, even in this dimension."

The darkness is a background in END2.
Description of the darkness is "You are surrounded by darkness in all directions."

Instead of tasting the darkness:
say "It tastes... empty."

Instead of taking the darkness:
say "Taking the darkness? Unheard of."

Section - The Fly

Search-count is a number that varies. search-count is 0.

Does the player mean searching a background: it is likely.
Does the player mean searching peter: it is unlikely.

Instead of searching a background:
	increase search-count by 1;
	if search-count is 4:
		say "You find a horsefly, buzzing silently around your head.";
		move the fly to the location;
	otherwise:
		if the noun is the darkness:
			say "You find absolutely nothing.";
		otherwise:
			say "You find nothing, of interest or otherwise."

The fly is scenery.
Printed name of fly is "horsefly".
Understand "horsefly" as the fly.
Description of the fly is "Disgusting little thing."

Instead of taking the fly:
say "It flies out of your reach."

Instead of attacking the fly:
say "You attempt to squash the [fly]. As it dodges swiftly out of the way, it begins to multiply. Soon you are surrounded by flies. They swarm over your body, feasting on your flesh.";
end the story saying "You have died".

Section - Other

The ground is scenery in END2.
Understand "floor" and "stone" and "rock" as ground.
Description of the ground is "The ground consists of flat, dark stone, but you're not certain what kind."

Instead of searching the ground:
say "You can't find so much as a loose pebble."

Instead of taking the ground:
say "The ground is one solid piece of rock. There's nothing to take."

Chapter - Items

Section - Masks

A mask is a kind of thing. A mask is wearable. A mask is privately-named.

Instead of taking a mask when the noun is part of the gate:
say "[if the noun is plural-named]They're[otherwise]It's[end if] just too high for you to reach, even standing on your toes."

Instead of pointing at a mask when Peter is unlocked:
	say "You gesture at [the noun]. [run paragraph on]";
	if the noun is part of the gate:
		say "[Peter] nods and retrieves [if the noun is plural-named]them[otherwise]both masks[end if] for you.";
		now the player carries the buskin-mask;
		now the player carries the sock-mask;
		now the set-of-masks is part of the player;
	otherwise:
		say "[Peter] shrugs."

Instead of taking the set-of-masks:
say "[sock-mask]: [run paragraph on]";
try taking the sock-mask;
say "[buskin-mask]: [run paragraph on]";
try taking the buskin-mask.

Instead of dropping the set-of-masks:
say "[sock-mask]: [run paragraph on]";
try dropping the sock-mask;
say "[buskin-mask]: [run paragraph on]";
try dropping the buskin-mask.

Instead of searching the set-of-masks:
say "[sock-mask]: [run paragraph on]";
try searching the sock-mask;
say "[buskin-mask]: [run paragraph on]";
try searching the buskin-mask.

Before searching a mask when the noun is part of the gate:
say "That would be easier if you were holding the [if the noun is plural-named]masks[otherwise]mask[end if]." instead.

Before searching a mask when the noun is worn:
say "You can't do that while wearing it." instead.

Before giving the set-of-masks to someone when the set-of-masks is part of the player:
say "[Peter] takes the masks and inspects each one closely before handing them back to you." instead.

Before giving a mask to Peter when the set-of-masks is part of the player:
say "You hand [the noun] to [Peter]. He turns it over in his hands before handing it back to you." instead.

Instead of putting a mask on Peter:
say "[Peter] shakes his head and mouths 'No.'"

Before wearing the set-of-masks:
say "You can only wear one mask at a time." instead.

Check wearing a mask when a mask is worn:
say "You hold the [the noun] in front of your face. As you look through both sets of eyes, your vision goes black. You take the second mask away." instead.

After taking off a mask:
say "You take off [the noun].";

The set-of-masks is a plural-named mask.
The set-of-masks is part of the gate.
The printed name of the set-of-masks is "set of masks".
Understand "set of masks" and "masks" as set-of-masks.
Description of the set-of-masks is "It's a set of those tragedy and comedy masks you've seen on theatre playbills. You think they're named Sock and Buskin."

The sock-mask is a mask and part of the gate.
Printed name of the sock-mask is "sock mask".
Understand "mask" and "sock" and "sock mask" and "comedy mask" and "laughing mask" and "silver mask" as sock-mask.
Description of the sock-mask is "This silver mask depicts a gleeful face. It makes you want to laugh, despite yourself."

After wearing the sock-mask:
now orange is in END2;
now purple is nowhere;
now room-color is "orange";
now the orange-spot is part of the gate;
say "You slip [the noun] over your face."

Before taking off the sock-mask:
now purple is in END2;
now orange is nowhere;
now room-color is "purple";
now the orange-spot is nowhere.

The buskin-mask is a mask and part of the gate.
Printed name of the buskin-mask is "buskin mask".
Understand "mask" and "buskin" and "buskin mask" and "tragedy mask" and "crying mask" and "gold mask" as buskin-mask.
Description of the buskin-mask is "The face depicted in this gold mask is so sad, it makes you feel like crying."

After wearing the buskin-mask:
now green is in END2;
now purple is nowhere;
now room-color is "green";
now the green-letter is part of the gate;
say "You slip [the noun] over your face."

Before taking off the buskin-mask:
now purple is in END2;
now green is nowhere;
now room-color is "purple";
now the green-letter is nowhere.

A Greek letter is a kind of value. The Greek letters are Alpha, Beta, Gamma, Delta, Epsilon, Zeta, Eta, Theta, Iota, Kappa, Lambda, Mu, Nu, Xi, Omicron, Pi, Rho, Sigma, Tau, Upsilon, Phi, Chi, Psi, Omega.

mask-letter is a Greek letter that varies. 

Before wearing the buskin-mask for the first time:
now mask-letter is a random Greek letter between Beta and Omega.

Instead of searching the buskin-mask:
say "There was once something written here, but it's been scratched out, and it's impossible to read."

Instead of searching the sock-mask:
say "You brush away some dirt, but don't find anything underneath."

Section - Gate

The gate is a closed unopenable door and scenery in END2.
The gate is southeast of END2.
Understand "gates" as gate.
Description of the gate is "A pair of closed metal gates, the sort that should swing open, if only you could figure out how they worked. The bars are too decorative and entwined to squeeze through, and the gate is too high to climb over, not that you think it would take you anywhere if you did. You can walk right around it, and the other side is [if the set-of-masks is part of the gate]near identical, minus the masks on the arch[otherwise]identical[end if][if the hook is part of the gate]. [found-items][otherwise if the dial is part of the gate]. [found-dial][end if]."

to say found-items:
say "You have found [if the dial is part of the gate]a tiny dial on the left gate and [end if]a hook on the right gate"

to say found-dial:
say "You have found a tiny dial on the left gate"

The bars are plural-named, and part of the gate.
Description of the bars is "The iron bars twist around each other, forming vines."

The arch is scenery in END2.
Description of the arch is "A tall iron arch standing around the gates[if the set-of-masks is part of the gate]. A set of masks hang at the apex[end if]."

Instead of searching the arch:
try searching the gate.

After examining the gate when the gate is closed:
	if the buskin-mask is worn:
		say "You see a glowing green symbol on the arch above the gate, where the masks used to be.";
	otherwise if the sock-mask is worn:
		say "You see a bright orange spot on the right side of the gate."

Before searching the gate when a mask is worn:
say "You can barely see with this mask on." instead.

Instead of climbing the gate:
say "You make it all the way to the top of the gate, when your foot slips and you fall across the top of the gate, impaling yourself on a rather sharp spike you hadn't noticed before. Your death comes slowly, but it does come.";
end the story saying "You have died".
   
Instead of searching the gate:
say "Looking more closely, you see a tiny dial hidden in the decoration of the gate.";
now the dial is part of the gate.

Instead of taking the gate:
say "Try as you might, you can't pull it out of the ground."

Instead of closing the gate:
	if the gate is closed:
		say "It's already closed.";
	otherwise:
		say "The gates won't move. Besides, your goal was to [italic type]open[roman type] the gate. Mission accomplished."

Instead of pushing or pushing the gate:
try opening the gate.
                
Instead of opening the gate:
	if the gate is closed:
		say "You pull and push on the bars to no avail. It must be locked, but there's no latch or keyhole.";
	otherwise:
		say "It's already open!"

Instead of unlocking the gate:
	if the gate is closed:
		say "You can't see an obvious way to unlock it.";
	otherwise:
		say "It's already open!"

Instead of pointing at the gate when the gate is open:
	if the Peter is locked:
		say "You point at the [noun]. [peter] doesn't acknowledge it.";
	otherwise:
		say "You gesture at the open gate. [Peter] nods and waves for you to go first."

Instead of entering the gate:
	if the gate is closed:
		say "The gate is still closed.";
	otherwise:
		if the Peter is locked: [this shouldn't be possible]
			say "You won't leave without your husband!";
		otherwise:
			say "You take [Peter]'s hand and walk forward, through the gate and into the night.";
			end the story finally saying "You have won"

Section - Spots

A spot is a kind of thing. A spot is scenery. A spot is privately-named.

Instead of pushing or touching the orange-spot:
	if the hook is not part of the gate:
		say "You touch [the noun], and feel a hook protruding from the gate.";
		now the hook is part of the gate;
	otherwise:
		say "You touch the hook, but nothing happens."

Instead of searching the orange-spot:
	if the hook is not part of the gate:
		say "You search the area where [the noun] is, and you find a hook protruding from the gate.";
		now the hook is part of the gate;
	otherwise:
		say "You don't find anything else."

The orange-spot is a spot.
Printed name of orange-spot is "orange spot".
Understand "orange spot" and "spot" and "dot" and "orange dot" as orange-spot.
Description of orange-spot is "A tiny spot of colored orange light has appeared on the right side of the gate."

The green-letter is a spot.
Printed name of the green-letter is "green letter".
Understand "green letter" and "letter" and "green symbol" and "symbol" as green-letter.
Description of the green-letter is "A green symbol has appeared over the arch. You recognize it as the Greek letter [mask-letter]."

Section - Hook

The hook is scenery and a supporter.
Description of hook is "The gate bars form a hooked area here, perfect to hang something on."

Instead of pushing or pulling the hook:
say "Nothing happens."

Hanging it on is an action applying to two things.
Understand "hang [something] on [something]" as hanging it on.

Instead of hanging something on something:
try putting the noun on the second noun.

Before putting a mask on the hook:
	if a mask is on the hook:
		say "There is only room for one mask on the hook." instead.
  
Section - Dial

Dial-letter is a Greek letter that varies.

The dial is scenery.
Description of dial is "It's a tiny dial, like one might find on a combination lock. It currently displays the symbol for the Greek letter [dial-letter]."

Instead of pulling or pushing the dial:
say "It's a dial. Therefore it can be turned, but neither pushed nor pulled."

Setting is an action applying to one thing and Greek letter.
Understand "turn [dial] to [a Greek letter]" as setting.
Understand "set [dial] to [a Greek letter]" as setting.

Spinning is an action applying to one thing.
Understand "spin [dial]" as spinning.

Instead of spinning the dial:
	let N be a random Greek letter;
	say "You spin the dial, and it randomly lands on the symbol for [N].";
	now dial-letter is N.

Instead of turning the dial:
say "You need to turn the dial to a letter."

Instead of setting the dial:
	let N be the Greek letter understood;
	say "You turn [the noun] to [N].";
	now dial-letter is N;

Every turn when the dial is part of the gate and the hook is part of the gate and the gate is closed:
	if dial-letter is mask-letter and the sock-mask is on the hook:
		now the gate is open;
		now the description of the gate is "The gates are open, beckoning you to walk through.";
		say "[The gate] suddenly swings open."
              
Chapter - People

Section - The Player

Instead of examining the player:
say "You've looked better. You could really use a nice warm shower when all this is over."

Instead of searching the player:
say "You've left everything behind."

Section - Peter

Peter is a man in END2.
Understand "husband" and "my husband" as Peter.
Description of Peter is "It's your husband, Peter[if the Peter is locked]! He looks unharmed, but his eyes are dull, and he is unresponsive under your gaze[otherwise]. He looks as handsome as ever.[end if]."
Initial appearance of Peter is "In the center of the lit area is Peter. He kneels on the ground, staring off into nothingness."

Peter can be locked or unlocked. Peter is locked.

Peter-eyes is a privately-named part of Peter.
Printed name of Peter-eyes is "Peter's eyes". 
Understand "Peter's eyes" and "eyes" as Peter-eyes.
Description of peter-eyes is "[if peter is locked][Peter] stares unblinkingly ahead of him, not focusing on anything in particular[otherwise]You gaze deeply into [Peter-eyes]. They stand out against the [room-color] of the world around you[end if]."

Peter-hand is a privately-named part of Peter.
Printed name of Peter-hand is "Peter's hand".
Understand "Peter's hand" and "hand" as peter-hand.
Description of peter-hand is "It's Peter's hand. There's nothing particularly special about it."

Instead of taking peter-hand:
	if the Peter is locked:
		say "You take [peter-hand] in yours. Suddenly he has your hand pinned behind your back. Before you can react, he rips into your throat with his teeth, snarling as he does so.";
		end the story saying "You have died";
	otherwise:
		say "You give [peter-hand] a quick squeeze."

Instead of shaking Peter:
	if Peter is locked:
		say "You shake [Peter]. When you let go, his body continues to shake. His skin splits open, revealing the most beautiful creature you have ever seen. Overcome with happiness, you start to weep, tears of blood running down your cheeks.";
		end the story saying "You have gone utterly mad";
	otherwise:
		say "He's already awake."

Instead of searching Peter:
say "He isn't carrying anything else."
                
Instead of searching Peter for the first time:
say "You find a note in his pocket.";
now the player carries the note.

The note is a thing.

Instead of examining the note:
say "You unfold and read the note. The handwriting is unmistakably your husband's. 'Ialdabaoloth'. It's a single word, but suddenly everything makes sense. You start to laugh uncontrollably.";
end the story saying "You have gone utterly mad"

Instead of giving the note to peter when peter is unlocked:
try showing the note to Peter.

Before showing the note to peter when peter is unlocked:
say "Peter starts to laugh. Then you start to laugh. You barely notice as he plunges his hand into your chest, ripping out your heart. You're too busy laughing.";
end the story saying "You have died"

Instead of entering Peter:
try climbing the peter.

Instead of climbing Peter:
	if the Peter is locked:
		say "You try to climb onto [peter]'s shoulders, but you slip and lose your balance. As you fall, you pull his lifeless body down onto yours. You are pinned underneath him, his face just inches from yours. As you stare into his cold, empty eyes, you realize he is already dead.";
		end the story saying "You have lost everything";
	otherwise:
		say "[Peter] helps you climb onto his shoulders. As you reach for the masks, he stumbles under your weight, causing you to fall against the gate. A particularly sharp bit of decoration pierces your chest, killing you instantly.";
		end the story saying "You have died".
                
Instead of attacking Peter:
say "Have you gone crazy? Well, maybe you have. But nonetheless, that doesn't seem like a good idea."

Instead of touching Peter:
	if the Peter is locked:
		say "You place your fingers on [peter]'s neck, feeling for a pulse. It's weak and irregular, but it's there. Suddenly his hands are caressing your cheeks. He stares intently into your eyes as he twists your head to the side, snapping your neck.";
		end the story saying "You have died";
	otherwise:
		say "You lay your hand on [Peter]'s cheek. He smiles at you.".

Instead of kissing Peter:
	if the Peter is locked:
		say "You kiss [Peter] gently on the lips, hoping to rouse him. For a moment, it seems like he's responding in kind, until you feel the tentacles slide down your throat. The last thing you see are his eyes, glowing with a distant light.";
		end the story saying "You have died";		
	otherwise:
		say "You kiss [Peter]. He kisses you back and holds you tightly for a moment."

Instead of hugging Peter:
	if the Peter is locked:
		say "You wrap your arms around [Peter], trying to warm him up. You're about to give up, when he suddenly hugs you back. He's cold, so cold. You try to pull away, but he only holds you more tightly, squeezing you until you can barely breath. When he finally releases you, you find you are frozen in place. As the world around you goes black, all you can think is that at least your husband is alive.";
		end the story saying "You have been lost";
	otherwise:
		say "You pull [Peter] into an embrace. He hugs you back."

Chapter - Testing

test foo with "laugh / cry / point at masks / search gate / search buskin / search sock".
