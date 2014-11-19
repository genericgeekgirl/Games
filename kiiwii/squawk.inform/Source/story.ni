"Kii!Wii!" by "Adri".
The story headline is "A tiny friend to brighten your day".

Include Status Line Removal by Emily Short.
Include Basic Screen Effects by Emily Short.

Use no scoring.

The player's name is an indexed text that varies.
The player's noun is an indexed text that varies.
The player's adjective is an indexed text that varies.

When play begins:
	now the command prompt is ">> ";
        say "Hello![paragraph break]What is your name?[run paragraph on][line break]".
                
To decide whether collecting info:
	if the command prompt is ">> ", yes;
	no.

After reading a command when collecting info:
	if the player's name is empty:
		now the player's name is the player's command in title case;
		say "What is a noun that describes you?";
		reject the player's command;
	otherwise if the player's noun is empty:
		now the player's noun is the player's command in lower case;
		say "How about an adjective?";
		reject the player's command;
	otherwise:
		now the player's adjective is the player's command in lower case;
		now the command prompt is "> ";
		clear the screen;
		say "[paragraph break][banner text]";		
		move the player to the location;
		reject the player's command.
	
Instead of looking when collecting info: do nothing.
Rule for constructing the status line when collecting info: do nothing.
Rule for printing the banner text when collecting info: do nothing.

The Park is a room. "You are standing in a field of grass. Nothing but shimmering, green blades of grass as far as the eye can see."

The grass is scenery in the park. The description is "It's grass."

Counting is an action applying to nothing.
Understand "count grass" as counting.

Carry out counting: say "It would take forever to count every blade of grass, but there are at least 69,105."

Instead of doing anything except examining to the grass, say "The grass is quite lovely, but it's not the point of the experience."

The description of the player is "You are [if we have not examined Squawk]the best[otherwise]Squawk's favorite[end if] [player's adjective] [player's noun] named [player's name].";

A kiwi bird is a kind of animal.
Understand "kiwi" and "kiwi bird" and "bird" as a kiwi bird.

A Squawk is a male kiwi bird. The printed name is "odd-looking bird". Understand "odd-looking bird" and "cutie" and "cutie pie" as Squawk.

The description is "His pear-shaped body is covered with shaggy feathers that look like fur. His plumage is mottled grey and white, with bands of darker grey producing the appearance of spots. You can't see any wings, nor does he have a tail. His long, slender beak has nostrils at the tip, and the stiff black feathers around his mouth look and act like whiskers. His pale legs are short, but they look rather strong, and the toes on his large feet are tipped with razor-sharp claws. He stands just under ten inches tall."

After examining Squawk for the first time:
say "The strange little ball of fluff looks up at you with tiny, black eyes and squawks.[paragraph break]'Squawk.' That's a good name for this little guy.";
now the printed name of Squawk is "Squawk";
now Squawk is proper-named;
try looking.

Instead of taking inventory:
say "[if Squawk is not enclosed by the player]You are carrying nothing[otherwise]You are carrying the cutest creature known to man[end if]."

Before going:
if the printed name of Squawk is not "Squawk", say "Are you sure you wouldn't like to EXAMINE that cutie pie over there?" instead.

Instead of going up:
say "You, much like [the Squawk], do not have wings."

Instead of going down:
say "Kiwi birds *are* very good at digging, but there is nothing to be found in that direction."

Instead of going:
say "[if Squawk is not enclosed by the player][The Squawk] runs off after you[otherwise]Squawk makes no effort to squirm out of your arms, so you carry him away with you[end if].";
end the story finally saying "You have made a friend for life."

Squawk is in the Park.

Understand the command "pet" as "touch".

The report touching other people rule is not listed in the report touching rulebook.
The innuendo about squeezing people rule is not listed in any rulebook.

Instead of squeezing Squawk, say "You give [the Squawk] a tight squeeze. He kwehs."

Instead of touching Squawk, say "You stroke [the Squawk]'s back. He floofs his feathers happily at you."

After waiting, say "[The Squawk] squawks."

The block kissing rule is not listed in any rulebook.

Carry out kissing: say "Keep your mind on the game."

Instead of kissing Squawk, say "You kiss [the Squawk] on the head. He coos softly."

Understand  the command "hug" as something new.
Hugging is an action applying to one thing.
Understand "hug [someone]" as hugging.

Carry out hugging: say "Keep your hands to yourself."

Instead of hugging Squawk, say "You give [the Squawk] a snug. He cuddles up warmly."

[Random actions for Squawk to do.]

The can't take other people rule is not listed in any rulebook.

After taking Squawk, say "You scoop up [the Squawk] and cuddle him close to you."

After dropping Squawk, say "You carefully set [the Squawk] on the grass at your feet."

Instead of swearing mildly:
say "[The Squawk] flomps down a short distance from you and pouts."

Understand the command "kick" as "attack".

Instead of attacking Squawk:
end the game saying "Nope."

Instead of swearing obscenely:
end the game saying "Kiwi birds do not approve of such foul language."

Dancing is an action applying to nothing.
Understand "dance" as dancing.

Carry out dancing: say "You do a little jig. [The Squawk] hops around at your feet, flapping his teeny, tiny wings."

Requesting information is an action out of world.
Understand "about" or "help" or "credits" as requesting information.

Carry out requesting information: say "This experience was created in order to impart a bit of happiness and sweetness into your life."

Loving is an action applying to one thing.
Understand "love [Squawk]" as loving.
Carry out loving: say "Awwww. [The Squawk] loves you, too!"

Casting xyzzy is an action out of world.
Understand "xyzzy" as casting xyzzy.

Carry out casting xyzzy: say "All of your worries and concerns melt away."

Instead of singing: say "Your singing is abominable, but [the Squawk] doesn't seem to mind. 'Doo doo kii wii doo.' He sings along, equally out of tune."

A person can be sitting or standing.
The player is standing. Squawk is standing.

Sitting down is an action applying to nothing.
Understand "sit down" or "sit" as sitting down.

Check sitting down:
if the player is sitting, say "You are already sitting." instead.

Carry out sitting down:
	if squawk is enclosed by the player:
		say "You settle down on the grass, cuddling [the Squawk] on your lap.";
	otherwise:
		say "You sit down on the grass. [the Squawk] runs over and jumps into your lap.";
		now the player carries Squawk;
	now the player is sitting.

Understand the command "stand" and "stand up" as something new.

Standing up is an action applying to nothing.
Understand "stand up" and "stand" as standing up.

Check standing up:
if the player is standing, say "You are already standing." instead.

Carry out standing up:
say "You stand up again.";
now the player is standing.

Carry out standing up:
	if squawk is enclosed by the player:
		say "You set [the Squawk] down on the grass and stand up. He hops onto your foot and looks up at you sweetly.";
		move Squawk to the location;
	otherwise:
		say "You stand up again.";
	now the player is standing.

[TODO: lying down on the grass]
        
Understand the command "throw" as something new.
Throwing is an action applying to one thing.
Understand "throw [something]" as throwing.

Carry out throwing something: try dropping the noun.

Instead of throwing Squawk:
say "[The Squawk] sails through the air. 'Kii! Wheeeeee!' He lands with a soft bounce and runs back over to you.";
move Squawk to the location.

Before eating Squawk, say "[The Squawk] nips at your fingers. He is friend, not food." instead.

