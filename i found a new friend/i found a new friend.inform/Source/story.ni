"Fingertips: I Found a New Friend" by "Adri"

Book - Basic Setup

The story creation year is 2012.
The release number is 3.
The story headline is "A heart-warming story of friendship".
The story genre is "fantasy".
The story description is "A short piece of interactive fiction inspired by They Might Be Giants' 'Apollo 18' album".

[Release along with an interpreter.]

Include Room Description Control by Emily Short.
Include Fingertips by Adri.

When play begins: say "[ITALIC TYPE]I found a new friend underneath my pillow.[ROMAN TYPE][LINE BREAK]";

Book - Credits

Carry out asking for credits: say "[credits]".

to say credits: say "'[story title]' was written for the Apollo 18+20 tribute album. Thanks so much to Kevin Jackson-Mead for organizing the compilation and inspiring me to finally write my first (and second!) game. Thank you to everyone in PR-IF and on ifMUD for just generally being encouraging and helpful. Special thanks to Johnny Rivera who was super helpful when I accidentally deleted my source code. Thank you to everyone who provided feedback on the game, especially cyberskunk, Lorenzo Batallones, Felix Plesoianu and jpt. And last, but not least, thanks to They Might Be Giants for making awesome music."

Book - Environment

Chapter - Bedroom

The Bedroom is a room.
The description is "You've had a long day. All you want to do is climb into bed. But why is your pillow quivering like that?".

Chapter - Bed

The bed is an enterable supporter and scenery in the bedroom.
The description is "It's a bed with a pillow and a quilt."

Instead of taking or pushing or pulling the bed: say "The bed is too heavy for you to move."

Instead of searching the bed: say "You fold back the corner of the quilt. You don't find anything of interest."

Instead of looking under the bed: say "A family of dust bunnies peeks out at you."

Making the bed is an action applying to one thing.
Understand "make [bed]" as making the bed.

Report making the bed: say "You made the bed this morning when you got up."

Instead of standing on the bed: say "Be careful. You might fall."

Instead of jumping on the bed:
say "You jump around on the bed like a monkey. Then you fall off and hit your head.";
try failing;

Section - Bedding

The bedding is part of the bed.
Understand "sheets" or "blanket" or "quilt" as bedding.
The description is "Your aunt made you this quilt as a Christmas present. It's an abstract pattern of brightly colored shapes. It balances out your boring white sheets."

Instead of doing anything except examining or taking or folding to the bedding: now the noun is the bed.

Instead of taking or folding the bedding: say "You should leave that on the bed."

Chapter - Wall

The wall is scenery in the bedroom.
The description is "You pause to admire the wallpaper. Delightful."
Understand "wallpaper" as wall.

Understand the command "admire" as "examine".

Chapter - Nightlight

The nightlight is a switched on device and scenery in the bedroom.
Understand "night light" or "canary" or "blue canary" or "light switch" or "light" or "outlet" as nightlight.
The description is "There is a blue canary in the outlet by the light switch. It watches over you."

Understand "turn out [nightlight]" as switching off.

Instead of switching off or taking the nightlight:
say "The light goes out. Without the blue canary to watch over you, you are immediately eaten by a grue.";
try failing.

Book - Characters

Chapter - Player

The description of the player is "You are wearing your favorite pajamas."

Instead of counting the player: say "You are a unique and special snowflake."

Instead of throwing something at the player: say "Don't be ridiculous."
Instead of throwing something at the pajamas: try throwing the noun at the player.
        
Instead of throwing the player at something (called S):
	if S is the pillow:
		try attacking the pillow;
	otherwise if S is the bed:
		say "You hurl yourself at the bed. The pillow jumps about an inch in the air, but you don't get a good glimpse at what is underneath.";
	otherwise if S is the wall:
		say "You hurl yourself at the wall. Ouch. You limp quietly back to the bed, grateful that no one was around to see that.";
	otherwise:                
		say "You're not quite certain how to do that."

Instead of dropping or attacking the player: try throwing the player at the wall.

Instead of hugging the player: say "You give yourself a hug. You feel better."

Instead of touching the player: say "You give yourself a soothing pat on the back."

Instead of poking the player: say "You give yourself a quick jab. Ouch."

Section - Pajamas

Instead of taking inventory: say "Your pajamas don't have any pockets."

The pajamas are a plural-named thing worn by the player.
The description is "The dinosaurs are a little childish, but nobody is here to see them. You wanted to be a paleontologist when you grew up. This is probably the closest you're going to get."
Understand "pyjamas" or "pjs" or "clothes" or "clothing" as pajamas.

Instead of undressing: try taking off the pajamas.
Instead of taking off or dropping or folding the pajamas: say "But it's time for bed."

Section - Dinosaurs

The dinosaurs are part of the pajamas.
The description of the dinosaurs is "You see a T-rex and a Triceratops and a Carnotaur and a Pachycephalosaurus."
Understand "dinosaur" and "t-rex" and "trex" and "triceratops" and "carnotaur" and "pachycephalosaurus" as dinosaurs.

Instead of counting the dinosaurs: say "There are too many to count."

Instead of doing anything except examining or counting to the dinosaurs: say "The dinosaurs aren't real."

Chapter - Figments

A figment is a kind of animal and scenery.

To say imaginary: say "You can't see any such thing"

Instead of doing anything except counting, examining, attacking, touching, hugging or cleaning to a figment: say "[imaginary]."

Chapter - Dust Bunnies

The dust bunnies are a plural-named figment in the bedroom.
Understand "bunny" or "family" as dust bunnies.

The description is "A particularly cheeky bunny winks at you. You wonder momentarily whether this violates the 'no pets' clause in your lease."

Instead of hugging the dust bunnies: say "They're very cute, but you would probably crush them."

Instead of touching the dust bunnies: say "You reach under the bed and pat a bunny gently on the head. It twitches its nose at you."

Instead of counting the dust bunnies: say "There are 69,105 dust bunnies here."

Instead of cleaning under the bed: try cleaning the dust bunnies.

Instead of cleaning or attacking the dust bunnies:
	say "You feel a pang of regret as you vacuum up the dust bunnies. You decide to go drown your sorrows in a pint of ice cream.";
	try failing.

Chapter - Sheep
        
The sheep is a figment in the bedroom.

Instead of cleaning or touching or hugging the sheep: say "[imaginary]."

Instead of attacking the sheep: say "You think you hear a disapproving 'Baaa.' in the distance."

Section - Examining Sheep

Look count is a number that varies. Look count is usually 0.
	
Instead of examining the sheep:
	increase the look count by 1;
	if look count is 1:
		say "That only exists in your head.";
	otherwise if look count is 2:
		say "Didn't I already tell you that only exists in your head?";
	otherwise if look count is 3: 
		say "Stop it!";
	otherwise if look count is 4:
		say "Okay, okay, if I give you a sheep, will you get back to finding a friend?";
	otherwise if look count is 5:
		say "All right, you win.[LINE BREAK][fixed letter spacing]               /\[LINE BREAK]    @@@@@@@@@@@  O  \[LINE BREAK] @@@@@@@@@@@@@@@____/[LINE BREAK]@@@@@@@@@@@@@@@@[LINE BREAK]@ @@@@@@@@@@@@[LINE BREAK]   ||      ||[LINE BREAK]   ~~      ~~[variable letter spacing]";
	otherwise if look count is 6:
		say "Sorry, that's all you get.";
	otherwise if look count is 8:
		say "You spend the rest of the evening looking at photos of sheep on the internet. You look under the pillow in the morning, but find nothing.";
		try failing;
	otherwise:
		say "[imaginary]."

Section - Counting Sheep
                
Sheep count is a number that varies. Sheep count is usually 0.

Does the player mean counting sheep: it is very likely.

Instead of counting sheep:
	increase the sheep count by 1;
	let V be an indexed text; 
	let V be "[sheep count in words]";
	replace the regular expression "\b(\w)(\w*)" in V with "\u1\l2";		
	If sheep count is one:
		say "You close your eyes and envision a fluffy white sheep jumping over a fence. [V].";			
	otherwise if sheep count is three:
		say "This sheep seems to struggle a bit, but finally makes it over the fence. [V].";
	otherwise if sheep count is five:
		say "The next sheep chooses to walk around the fence. [V].";
	otherwise if sheep count is seven:
		say "The next thing you know, the sun is shining. You must have fallen asleep. You look under your pillow, but find nothing there.";
		try failing;
	otherwise: 
		say "Another sheep jumps over the fence. [V]."

Chapter - Pillow

The pillow is an animal. It is on the bed. It is fixed in place. The description is "There seems to be something underneath your pillow."

Instead of singing: say "You hum a lullaby your mother used to sing to you. Your pillow seems relaxed by it."

Instead of listening: say "There's some rustling sounds coming from under your pillow."

Before giving something to the pillow: say "That's an extremely odd thing to do." instead.
Before showing something to the pillow: say "That's an extremely odd thing to do." instead.

Before entering the pillow: try attacking the pillow instead.
Instead of sitting on or standing on the pillow: try attacking the pillow.
Instead of pushing the pillow: try attacking the pillow.

Instead of attacking the pillow:
	say "You press down on the pillow. You hear a muffled scream, and the pillow stops moving.";
	try failing.

Does the player mean doing anything with the pillow: it is likely.

Instead of throwing the pillow at something:
	if the second noun is not the pillow:
		say "You pick up the pillow and throw it at [the second noun]. Underneath it is a creature unlike anything you've ever seen before. It seems more afraid of you than you are of it, but you're so freaked out that you squash it.";
		try failing;
	otherwise:
		say "That's an awkward thing to do."

Instead of dropping the pillow: try throwing the pillow at the wall.

Before eating the pillow: say "You nibble on your pillow. It tastes like marshmallow." instead.
	
Instead of pulling or turning or taking the pillow: try looking under the pillow.
Instead of looking under the pillow: try finding a friend.

Instead of poking the pillow:
	say "You give the pillow a quick jab. You hear an 'eep' and the pillow stops moving for a moment. Then a strange creature walks out from behind it and shakes its head disapprovingly at you.";
	try failing;

Instead of hugging the pillow:
	say "You pick up the pillow and give it a gentle squeeze.  When you go to put it back, you see a small creature standing there with its arms raised. It doesn't look like anything you've ever seen before, but it seems friendly enough. You scoop it up and give it a hug.";
	try winning

Instead of touching the pillow:
	say "You rub the pillow in a soothing manner. You hear a soft purring sound, and a tiny creature crawls out from underneath the pillow. It's unlike anything you've ever seen before, but it seems friendly enough. You reach out and stroke its head.";
	try winning;

Chapter - Friend

A friend is scenery on the bed.
Understand "new friend" as friend.

Instead of doing anything except finding or not finding to a friend: say "[imaginary]."

Carry out finding a friend: 
	say "You pick up the pillow. Underneath it is a creature unlike anything you've ever seen before, but it seems to be friendly. It smiles and waves at you.";
	try winning.

Section - Not Finding a Friend

Not finding is an action applying to one thing.

Understand "don't make [friend]" or "don't find [friend]" or "dont make [friend]" or "dont find [friend]" or "do not make [friend]" or "do not find [friend]" as not finding.

Report not finding: try running.	

Section - Finding a Friend

Finding is an action applying to one thing.
Understand "make [friend]" or "find [friend]" as finding.

Book - Actions

Chapter - Waiting

Wait count is a number that varies. Wait count is usually 0.

Instead of waiting:
	increase wait count by 1;
	if wait count is less than 4:
		let L be { "tired", "very tired", "exhausted"};	
		say "You pause to assess the situation. You're [entry wait count of L], and there seems to be something underneath your pillow.";
	otherwise:
		say "You spend so much time thinking about what to do that whatever was under your pillow decides to find a new friend elsewhere. You eventually look under the pillow, but find nothing.";
		try failing.

Chapter - Cleaning

Cleaning is an action applying to one thing.
Understand "clean [something]" and "dust [something]" and "vacuum [something]" as cleaning.

Cleaning under is an action applying to one thing.
Understand "vacuum under [something]" or "clean under [something]" or "dust under [something]" as cleaning under.

Report cleaning: say "You don't have time to clean that right now."
Report cleaning under: say "You don't have time to clean that right now."

Section - Throwing (and Dropping)

Procedural rule while throwing something at something: ignore the carrying requirements rule.
Procedural rule while dropping: ignore the carrying requirements rule.

The futile to throw things at inanimate objects rule is not listed in the check throwing it at rules.

Instead of throwing something at something: try taking the noun.

Chapter - Vocalizations

Instead of casting xyzzy: say "A tired voice says, 'Zzzzy'.".

Instead of shouting: try swearing obscenely.

Instead of shouting at something: try swearing obscenely.

Instead of swearing obscenely: say "Your pillow seems to cower in fear.".
	
Instead of talking: say "The pillow stops rustling for a moment and seems to listen to you.".

Report crying: say "You burst into tears. Your pillow hums tunelessly. It seems to be trying to cheer you up.".

Chapter - Lying Down (Entering)

Understand the command "lie" as something new.
Understand the command "climb" as something new.
Understand "lie down on [something]" or "lie in [something]" or "lie on [something]" or "climb into [something]" as entering.

Does the player mean entering the bed: it is very likely.

Chapter - Sleeping

Understand "go to bed" or "go to sleep" as sleeping.

Before entering the bed: try sleeping instead.

Instead of sleeping:
	say "You're too tired to deal with this right now. You turn out the light, curl up in bed and fall fast asleep. You look under the pillow in the morning, but find nothing.";
	try failing.

Chapter - Other Actions

Folding is an action applying to one thing.
Understand "fold [something]" as folding.
Carry out folding: say "That doesn't need to be folded."

Instead of exiting:
        say "You decide to sleep on the sofa tonight. You look under the pillow in the morning, but find nothing.";
	try failing.

Jumping on is an action applying to one thing.
Understand "jump on [something]" as jumping on.
Carry out jumping on: say "Be careful! You might get hurt."

Instead of crawling under the bed:
	say "You crawl underneath the bed. The dust bunnies immediately swarm over you, and you're never heard from again.";
	try failing.

Quivering is an action applying to nothing.
Understand "quiver" as quivering.
Carry out quivering: say "I see you quiver with antici---pation."

Report dancing: say "You dance around the bed. You feel silly.".

Before eating something: say "That is clearly not edible." instead.

Chapter - Sitting
	
Instead of sitting: try sitting on the bed.

A person can be sitting down.

Instead of sitting on the bed:
	If the player is not sitting down:
		say "You sit on the edge of the bed.";
		now the player is sitting down;
	Otherwise:
		say "You are already sitting on the bed."
       
Chapter - Standing
         
Report standing:
	If the player is sitting down:
		say "You stand up again.";
		now the player is not sitting down;
	otherwise:
		say "You are already standing.".

Standing on head is an action applying to nothing.
Understand "stand on head" as standing on head.
Report standing on head: say "Nah. You've never been very good at that."
                		
Chapter - Running Away 

Understand the command "run" as something new.
Running is an action applying to nothing.
Understand "run" and "run away" and "run away screaming" as running.

Instead of running:
        say "You run away screaming, never to return.";
	try failing.

Chapter - Physical Interactions

Section - Animate

Report poking something: say "You give [the noun] a quick jab. Nothing happens."
	
Understand the command "pet" as "touch".

Report touching something: say "You pat [the noun]. You feel silly."

Section - Inanimate

Understand "push down on [something]" as pushing.

Understand "turn [something] over" as turning.

Understand "look behind [something]" as looking under.

Section - Attacking

Understand the command "crush" as something new.
Understand the command "crush" and "smother" as "attack".
Understand "press down on [something]" as attacking.

Book - End Game

Chapter - Resetting the Game

Carry out failing:
	say "[LINE BREAK][BOLD TYPE]*** You did not find a new friend. ***[ROMAN TYPE]";
	end the story.
	
When play ends when the story has not ended finally:
	now the player is not sitting down;
	now sheep count is 0;
	now look count is 0;
	now wait count is 0.

Chapter - Winning

Carry out winning: end the story finally saying "You found a new friend.".
	
Rule for amusing a victorious player:
say "[LINE BREAK]Have you tried...	[LINE BREAK]- counting sheep?[LINE BREAK]- looking at the sheep?[LINE BREAK]- looking under the bed?[LINE BREAK]- interacting with the dust bunnies?[LINE BREAK]- examining your surroundings?[LINE BREAK]- vocalizing?[LINE BREAK]- throwing yourself?[LINE BREAK]- finding all sixteen endings?".

Rule for displaying endings:
	say "[LINE BREAK]- Finding a new friend[LINE BREAK]- Hugging the pillow[LINE BREAK]- Petting the pillow[LINE BREAK]- Cleaning under the bed[LINE BREAK]- Going to bed[LINE BREAK]- Waiting four times[LINE BREAK]- Counting sheep seven times[LINE BREAK]- Examining sheep eight times[LINE BREAK]- Throwing the pillow at something[LINE BREAK]- Crawling under the bed[LINE BREAK]- Running away[LINE BREAK]- Leaving the room[LINE BREAK]- Jumping on the bed[LINE BREAK]- Poking the pillow[LINE BREAK]- Attacking the pillow[LINE BREAK]- Turning off the light[LINE BREAK]".
