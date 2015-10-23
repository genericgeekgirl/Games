"Hippo on Elm Street" by "Erin Gigglecreek".

The story creation year is 2015.
The release number is 1.
The story headline is "a not-so-scary story".
The story genre is "fantasy".
The story description is "Story description goes here. TODO.".

Part - Basic Setup
 
Chapter - Extensions

Include Case Management by Emily Short.
Include Punctuation Removal by Emily Short.
Include Reversed Persuasion Correction by Juhana Leinonen.
Include Basic Help Menu by Emily Short.

Chapter - Help Menu

Understand "menu" as asking for help.
Understand "credits" as asking for help.

When play begins:
choose row 1 in the Table of Basic Help Options;
change title entry to "About '[story title]'";
change description entry to "[author][line break][credits]";
choose row 2 in the Table of Basic Help Options;
change title entry to "New to text adventures?".

To say author: say "The author can be contacted at <gigglecreek@gmail.com>."
To say credits: say "The house hippo was created by the Concerned Children's Advertisers, and appears here without permission. [italic type]Felis terribulus[as normal] is a joke based on worstcats.tumblr.com, which is adorable and funny and worth checking out. Musical references are to 'The Monster Mash' and 'This is Halloween' (from [italic type]The Nightmare Before Christmas[as normal]). Beta testers include  Naomi Hinchen, Zachary Barryte, Michael Andryauskas, Marius Müller, Tuukka Turto, Scott Snyder and a few unnamed people from Boston Indies and Women in Games Boston."

Chapter - Parsing Commands

After reading a command: remove stray punctuation.

To say as the parser: say bold type.
To say as normal: say roman type.

Understand "* [text]" as a mistake ("Noted.").

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

To decide what action-name is the action-to-be: (- action_to_be -).
Rule for printing a parser error when the latest parser error is the can't use multiple objects error:
	if the action-to-be is the examining action:    
		say "There is just so much to look at, you can't take it all in at once!" instead;
	otherwise:    
		say "One at a time! You are only a tiny hippo."

Chapter - Other Setup

Use American dialect, full-length room descriptions, and the serial comma.

The maximum score is 45.

When play begins:
say "Baby, it's cold outside. All you want to do is snuggle up in a warm sock and take a nap. But you're distracted by loud, scary sounds. Also the scent of something delicious. You're not quite sure what's going on, but you're determined to find out. And maybe find a snack in the process."

Part - Environment

Instead of going up from the floor:
try examining up;
say "You'll have to be more specific."

Instead of going nowhere: say "There is nothing for you in that direction."

Instead of examining a direction (called the direction looked):
	let the destination be the room-or-door the direction looked from the location;
	if the destination is a room:
		say "[destination] lies in that direction.";
	otherwise if the destination is a door:
		say "The [other side of the destination] lies in that direction.";
	otherwise:
		say "You don't see anything in that direction."


Chapter - Front Door

The cat-sized flap is an open, unopenable door and scenery. It is outside of the Floor and inside of the Porch.  The description is "There is a cat-sized flap in the bottom of the front door."
Understand "cat door" and "front door" and "door" as cat-sized flap. Understand "house" as cat-sized flap when the location is porch.

Instead of pushing the cat-sized flap:
try entering the cat-sized flap.

Instead of entering the cat-sized flap when the location is Floor: try going outside.
Instead of entering the cat-sized flap when the location is Porch: try going inside.

Before going outside when the location is Floor:
	if the porch has been visited:
		say "You peek your head out through the flap and immediately begin to shiver. You decide to stay inside." instead;
	if the number of things carried by the player is not 0:
		say "As you wriggle through the flap, you drop [the random thing carried by the player] inside the house.[paragraph break]";
		try silently dropping a random thing carried by the player;
	otherwise:
		say "You push your way through the flap onto the porch.[paragraph break]";
	say "It's really cold out here, and you begin to shiver uncontrollably. You turn around to re-enter the warmth of the house to discover that [if the location of the spider cat is floor]the spider[otherwise if the location of the spider cat is the porch]a giant spider[end if] has followed you outside. It arches its back and hisses at you.";
	move the spider cat to the porch.

Instead of going inside when the location is the porch and the location of the cat is porch:
	say "The spider is blocking your way.".

Before going inside when the location is Porch and the cat is not in the location:
	if the number of things carried by the player is not 0:
		say "As you wriggle through the flap, you drop [the random thing carried by the player] outside the house.[paragraph break]";
		try silently dropping a random thing carried by the player;

Chapter - Porch

The Porch is a room. "[if the location is porch]You are standing on the porch in front of the house. A flap in the front door leads back inside. [end if]There [if the location of the jack o lantern is the porch or the basket of apples is spilled]are[otherwise]is[end if][if the basket of apples is spilled] apples all over the porch[otherwise] a basket of apples[end if][if the location of the jack o lantern is the porch] and a jack o['] lantern[end if] [if the location is porch]here[otherwise]out there[end if]."

Chapter - Jack O Lantern

The jack o lantern is scenery. Understand "pumpkin" as jack o lantern. The printed name is "jack o['] lantern". The description is "This pumpkin has a face carved into it, with a wide, grinning mouth and triangular eyes[if the location of the player is the porch]. It is glowing with a pleasant warmth[end if]."

Before eating the jack o lantern:
	if the location of the player is the porch:
		say "You try to bite through the shell, but it's too hard. Your teeth scrape against the surface." instead;
	otherwise:
		say "You take a mouthful of raw pumpkin. You can't figure out whether it tastes good or not." instead.

Inside-the-pumpkin is a room. "You are inside the jack o['] lantern. There is a plastic flame here, flickering with an orange glow. The porch is outside."

After deciding the scope of the player while the location of the player is inside-the-pumpkin:
place jack o lantern in scope.

The mouth is part of the jack o lantern. The description is "The pumpkin has a wide, grinning mouth."
The eyes are part of the jack o lantern. The description is "The pumpkin has two triangular eyes."

Instead of entering the jack o lantern when the location is porch: try entering the mouth.

Before entering the jack o lantern when the location is inside-the-pumpkin: say "You are already inside the pumpkin." instead.

Before entering the mouth:
	if the location is porch:
		say "You climb into the pumpkin through the mouth.";
		move the player to inside-the-pumpkin instead;
	otherwise:
		say "You climb back out of the pumpkin.";
		try going outside instead.

Pumpkin-mouth is a scenery and an open, unopenable door. It is outside from inside-the-pumpkin. Through it is the porch.

Instead of pushing the jack o lantern:
say "You manage to nudge the pumpkin off the porch. Luckily the candle inside wasn't real.";
remove the jack o lantern from play;
record "pushed pumpkin off porch" as achieved.

Blowing out is an action applying to one thing.
Understand "blow out [something]" as blowing out.
Carry out blowing out: say "You're not quite sure how to do that."

Instead of blowing out the jack o lantern:
say "You huff and you puff, but the flame barely wavers."

Chapter - Basket of Apples

The basket of apples is scenery in the Porch. The description is "[if the basket of apples is full]This basket is full of red apples. There is a small hole in the side of the basket, about the size of a mouse. Or a house hippo.[otherwise]This basket was, moments ago, filled with apples. Now it lies empty, surrounded by apples.[end if]"

The basket of apples can be spilled or full. The basket of apples is full.

The hole is a backdrop. It is in porch and bottom-of-basket. The description is "A mouse-sized hole in the side of the basket."

Hiding is an action applying to nothing.
Understand "hide" as hiding.

Carry out hiding:
	if the location is the porch:
		say "Maybe you could hide in the basket of apples.";
	otherwise if the location is the floor:
		say "You could hide under either the table or the sofa.";
	otherwise:
		say "There is nowhere to hide here."

Instead of entering the basket of apples: try entering the hole.

Instead of entering the hole:
	if the location is porch:
		move the player to bottom-of-basket;
	otherwise if the location is bottom-of-basket:
		try going outside.

Hole-in-basket is a scenery and an open, unopenable door. It is outside from bottom-of-basket. Through it is the porc.h

Instead of examining hole-in-basket:
try examining the hole.

The basket of apples can be spilled. The basket of apples is not spilled.

Bottom-of-basket is a room. "You are at the bottom of the basket, surrounded by apples. There is a small hole leading outside. You could probably climb to the top of the basket if you're careful." The printed name is "Basket of Apples".

Top-of-Basket is a room. "You are at the top of the basket, standing on a pile of apples[if an apple is not enclosed by the player and the shiny red apple is not enclosed by the player]. There is one particularly shiny red apple here[end if].[paragraph break]From here, you can see the giant spider." The printed name is "Basket of Apples".

The pile of apples is an open, unopenable door and scenery. It is above bottom-of-basket and below Top-of-Basket.

Instead of climbing the pile of apples when the location is bottom-of-basket:
try going up.

Before going up from bottom-of-basket:
	if the player does not enclose the shiny red apple:
		move the shiny red apple to Top-of-Basket.

Instead of climbing the pile of apples when the location is top-of-basket:
try going down.

Before going down from top-of-basket:
	if the player does not enclose the shiny red apple:
		move the shiny red apple to bottom-of-basket.

Instead of taking the pile of apples:
	try taking the shiny red apple.

Understand the command "grab" as "take".
        
An apple is a kind of thing. An apple is undescribed.
An apple can be nibbled. An apple is usually not nibbled.
The description of an apple is "One shiny red apple[if the apple has been nibbled], with tiny bites taken out of it[end if]."

Before eating an apple (called A):
now A is nibbled;
say "You take a tiny bite out of the apple." instead.

The shiny red apple is an apple in bottom-of-basket.

Does the player mean taking the shiny red apple: it is very likely.

After eating an apple:
now the noun is nibbled.

Check going outside from Bottom-of-Basket:
	if the player encloses an apple:
		say "Try as you might, the apple does not fit through the hole.";
		stop the action.

After deciding the scope of the player while the location of the player is Top-of-Basket:
place spider cat in scope;
place basket of apples in scope.

After deciding the scope of the player while the location of the player is Bottom-of-Basket:
place basket of apples in scope.

Before climbing the basket of apples: try climbing the pile of apples instead.

Instead of dropping the shiny red apple when the location is top-of-basket:
try throwing the shiny red apple at the spider cat.

Instead of pushing the shiny red apple when the location is top-of-basket:
try throwing the shiny red apple at the spider cat.

Instead of throwing the shiny red apple at the spider cat:
say "You toss the apple at the giant spider, hitting it squarely in the head. The spider screeches and pounces on the basket, knocking apples--and you--all over the porch.";
the human arrives in two turns from now;
move the shiny red apple to the porch;
now the spider cat is angry;
now the basket of apples is spilled;
move the player to the porch.

At the time when the human arrives:
say "A black cat walking on two legs opens the front door. She sets down the pumpkin she's carrying, scoops the apples back into the basket and picks up the spider, clutching it to her chest. The spider yowls angrily as the large cat carries it away. You almost feel sorry for it. Almost.";
remove the spider cat from play;
if the shiny red apple is not carried by the player, move the shiny red apple to bottom-of-basket;
move the jack o lantern to the porch;
now the basket of apples is not spilled;
record "got rid of the spider" as achieved.

Chapter - Non-Existent Rooms

Staging is a room. It is up from the Floor.
Staging2 is a room. It is down from On-the-Window-Ledge.
Staging3 is a room. It is down from On-the-Table.

Chapter - Living Room

The Living Room is a region.

Instead of smelling when the location is the porch: say "You inhale deeply, savoring the scent of the leaves and the crisp, cold air."

Instead of smelling: say "Something, somewhere, smells amazing. Your mouth waters at the thought."

Instead of smelling when the location is on-the-table: say "Mmmm.. Everything smells absolutely delicious."

living-room is a backdrop. It is in the floor. Understand "living room" as living-room.
Instead of examining the living-room: try looking.

Chapter - On the Floor

The floor is a room in the Living Room. The printed name is "Living Room". "There is a table here, the top of which is somewhere high above your head. A length of black shiny fabric covers the table, reaching nearly to the floor. The sofa is behind you. A thick white spiderweb leads from the floor up to the window ledge above you[if the spider cat has been in the floor or the porch has been visited]. A flap in the front door leads outside to the porch[end if]."

The carpet is scenery in the floor. The description is "The floor is covered with a soft, shaggy red carpet." Understand "floor" as carpet.

Wiping feet on is an action applying to one thing.
Understand "wipe feet on [something]" as wiping feet on.

Check wiping feet on:
	if the player is not sticky:
		say "Polite house hippos do not go around wiping their feet on things.";
	otherwise if the noun is not the carpet and the noun is not the shiny black fabric and the noun is not the napkin and the noun is not the sofa:
		say "Polite house hippos do not go around wiping their feet on things.";
	otherwise:
		say "You wipe your feet clean on [the noun].";
		now the player is not sticky.

Instead of examining up when location is the Floor: say "Looking up, you can see a window ledge and a table."

Chapter - On-the-Window-Ledge

On-the-Window-Ledge is a room in the Living Room. The printed name is "On the Window Ledge". "You are standing on the window ledge. Outside the window is the porch. From here, you can see the top of the table. You can climb back down the spiderweb to the floor."

The wad of cotton is a wearable thing. The description is "It's a tiny wad of cotton."

Understand "plug ears with [something]" as wearing.

After wearing the wad of cotton:
say "You plug your ears with the cotton. Now you can't hear anything.";
record "plugged ears with cotton" as achieved.

After taking off the wad of cotton:
say "You remove the cotton from your ears."

Instead of pulling the spiderweb:
try taking the spiderweb.

Instead of taking the spiderweb:
say "You tug on the web with your teeth. You end up with a mouthful of cotton. Bleh.";
now the player carries the wad of cotton.

The window ledge is scenery in On-the-Window-Ledge. The description is "From here, you can see the window ledge high above your head. A spiderweb reaches from the floor to the ledge." Understand "ledge" as window ledge.

Instead of examining the window ledge when the location is on-the-window-ledge:
try looking.

After deciding the scope of the player while the location of the player is floor:
place the window ledge in scope.

After deciding the scope of the player while the location of the player is on-the-window-ledge:
place the porch in scope;
place the table in scope;
if the location of the spider cat is the floor, place the spider cat in scope.

Instead of going down from on-the-window-ledge:
try climbing the spiderweb.

The picture window is scenery in On-the-Window-Ledge. The description is "From here, you can look out onto the porch. [description of porch]"

Instead of opening the picture window: say "You couldn't possibly manage that on your own. Besides, it's very, very cold outside."

Does the player mean doing anything to window ledge: it is unlikely.

Understand "look out of [something]" and "look out [something]" as searching.
Instead of searching the picture window: try examining the picture window.

The spiderweb is a backdrop in the Living Room. Understand "web" as spiderweb. The description is "A thick white web stretches across the window ledge above your head and drapes down to the floor."

Before climbing the spiderweb when the location of the cat is the floor:
say "The spider takes notice of you. As it approaches, you quickly [if the location is on-the-window-ledge]run down the web and [end if]scamper back under the sofa.";
move the player to under-the-sofa instead.

Instead of climbing the spiderweb when the location is floor:
say "You climb the spiderweb up to the window ledge. It's surprisingly non-sticky for a web of its size. In fact, it feels rather soft on your feet.";
move the player to On-the-Window-Ledge.

Instead of climbing the spiderweb when the location is on-the-window-ledge:
say "You slowly make your way back down the spiderweb.";
move the player to floor.


Chapter - Under-the-Sofa

The player is in under-the-sofa.

Going by name is an action applying to one thing.
Understand "go [any room]" and "go to [any room]" and "hide [any room]" as going by name.

Carry out going by name:
let aim be the best route from the location to the noun, using doors;
try going aim.

The sofa is a backdrop. It is in the Living Room and under-the-sofa. The description is "[if the location is the floor]One wall of the room is taken up with a large grey sofa[otherwise]You look up at the underside of the sofa. It's not very interesting[end if]." Understand "couch" as sofa.

The nest is scenery in under-the-sofa. The description is "A nest made of socks, purloined from the laundry basket. It's very soft and warm and smells strongly of flowers." Understand "socks" and "sock" as nest.

Before eating the nest: say "Bleh. Socks don't taste very good." instead.

Before entering the nest: try sleeping instead.

Instead of taking the nest: say "This is the best place for your nest."

Instead of touching the nest: say "It's warm and soft."

Instead of smelling the nest: say "The socks smell like flowers."

Understand the command "sit" as something new.
Understand the command "stand" as something new.

Instead of entering the sofa when the location is floor: try entering sofa-door.

Instead of entering the sofa when the location is under-the-sofa: say "You are already under the sofa."

Instead of climbing the sofa when the player is in under-the-sofa: say "You can't climb the sofa from underneath it."

Instead of climbing the sofa when the player is not sticky: say "Perhaps if you had claws, you could easily scale the sofa. But alas, you do not."

Instead of climbing the sofa when the player is sticky:
say "You attempt the scale the side of the sofa, but succeed only in cleaning the candy off your feet.";
now the player is not sticky.

Does the player mean entering the spider cat: it is unlikely.

Foobarbaz is a direction. The opposite of foobarbaz is zabraboof.
Zabraboof is a direction. The opposite of zabraboof is foobarbaz.

Under-the-Sofa is a room in the Living Room. The printed name is "Underneath the Sofa". "You are underneath the sofa. Your nest of stolen socks is here.  Beyond the sofa is the living room." Understand "under the sofa" and "under sofa" as under-the-sofa.

Sofa-door is an open, unopenable door and scenery. It is outside from Under-the-Sofa and foobarbaz from the Floor.

Instead of looking under the sofa: move the player to Under-the-Sofa.

Chapter - Under the Table

Instead of looking under the shiny black fabric: move the player to Under-the-Table.

Under-the-Table is a room in the Living Room. The printed name is "Underneath the Table". "You are hiding underneath the table." Understand "under the table" and "under table" and "under tablecloth" and "under fabric" as under-the-table.

After deciding the scope of the player while the location of the player is Under-the-Table:
place table in scope.

Chapter - Tablecloth and Table

The table is scenery in the Floor. The description is "[if the location is the Floor]You can only imagine what wonders the table holds. All you can see from here is a curtain of black fabric. There is just enough clearance for a hippo of your size[otherwise if the location is under-the-table]You gaze up at the bottom of the table. It's very high[otherwise]The table is covered with treats of all sorts[end if]."

The table-cloth is an open unopenable door and scenery. It is outside of Under-the-Table and zabraboof from the floor.

Instead of examining the table-cloth:
try examining the shiny black fabric.

The shiny black fabric is a backdrop in the living room. The description is "The [shiny black fabric] is made from some sort of shiny black material." Understand "tablecloth" and "cloth" as shiny black fabric. The printed name is "tablecloth".

Check climbing the shiny black fabric when the player is not sticky: say "The fabric is much too slippery for that." instead.

Instead of climbing the shiny black fabric when the player is sticky and the location is floor: say "You walk right up the side of the tablecloth, unsticking and resticking your feet the whole way up.";
move the player to on-the-table;
record "made it to the table 2" as achieved.

After deciding the scope of the player while the location of the player is on-the-table:
if the location of the spider cat is the floor, place the spider cat in scope;
place the shiny black fabric in scope.

Before going while the player is sticky:
say "You stick and unstick to the floor with every step."

Before climbing the table:
try climbing the shiny black fabric instead.

Before climbing the shiny black fabric when the location is under-the-table:
say "There's no reason to climb the table while you are underneath it." instead.

Understand the command "tug on" and "pull on" as "take".

Instead of pulling the shiny black fabric:
try taking the shiny black fabric.

Instead of taking the shiny black fabric:
say "You tug on the [shiny black fabric] with your teeth, but whatever is on the table is so heavy that it doesn't budge."

Instead of looking under the table: try looking under the shiny black fabric.

Chapter - mp3 player

The box of scary sounds is a device in on-the-table. It is switched on. It is undescribed. Understand "device" and "ipod" and "iphone" as box of scary sounds.
The description is "It's a flat white box with a mini television screen and a small circle at one end[if the box of scary sounds is switched on]. The scary sounds seem to be coming out of it[end if][if the player is wearing the wad of cotton]. You're so close to the source that you can hear the sounds despite the cotton blocking your ears[end if]."

Before eating the box of scary sounds:
say "You chomp down on metal. Ouch." instead.

Instead of taking the box of scary sounds: say "It's bigger than you are. You can't take that."

The circle button is part of the box of scary sounds. The description is "It's a circle about the size of your foot."

The mini television screen is part of the box of scary sounds. The description is "The screen shows some funny symbols that you don't understand."

Instead of examining the box of scary sounds:
say "[description of box of scary sounds][line break]"

Understand "step on [something]" as touching.

After switching off the box of scary sounds:
say "You step on the button. The sounds stop immediately.";
record "turned off device" as achieved;
the human comes into the living room in three turns from now.

The vampire is a person. A person can be seen. The vampire is not seen.
Switch count is a number that varies. Switch count is 0.

At the time when the human comes into the living room:	
	if the box of scary sounds is switched off:
		increase switch count by 1;
		now the box of scary sounds is switched on;
		if switch count is 3:
			say "The vampire walks angrily into the room. He picks up the box, glares at it, and walks off with it.";
			now the box of scary sounds is switched off;
			remove the box of scary sounds from play;
			record "got rid of the device" as achieved;                                        
		otherwise:
			if the location is not the porch and the location is not under-the-sofa and the location is not under-the-table:
				say "[vampire-box]";
				now the vampire is seen;                        
			otherwise if the wad of cotton is not worn by the player:
				say "The scary sounds start up again."

to say vampire-box:
	say "[if the vampire is not seen]A vampire strolls into the living room![run paragraph on][otherwise]The vampire comes back into the living room.[run paragraph on][end if]";
	say "[if the location is on-the-table] You dodge behind [one of]a pile of cookies[or]a plate of cupcakes[or]a bowl of candy[cycling] as he approaches the table.[run paragraph on][end if]";
	say " He picks up the box, stares at it for a moment and presses the button[if the wad of cotton is not worn by the player or the location is on-the-table], turning the sounds back on.[run paragraph on][end if]";
	say "[if the location is on-the-table] Then he walks away, thankfully without noticing you[end if]."
                                
After switching on the box of scary sounds:
say "You step on the button. The sounds start again."

Instead of pushing the circle button:
try touching the circle button.

Instead of touching the circle button:
	if the box of scary sounds is switched on:
		try switching off the box of scary sounds;
	otherwise:
		try switching on the box of scary sounds.

Chapter - Sweets
                
A sweet is a kind of thing. Sweets are undescribed. Sweets are edible.

The other-sweets is a plural-named sweet in on-the-table. It is undescribed. Understand "sweets" and "other sweets" as other-sweets. The description is "There's a plate of cupcakes and a pan of brownies."

Before eating the other-sweets:
say "You'll need to be more specific." instead.

The cupcake is a sweet in on-the-table. Understand "cupcakes" as cupcake.

The brownie is sweet in on-the-table. Understand "brownies" as brownie.

Instead of examining the cupcake:
try examining the other-sweets.

Instead of examining the brownie:
try examining the other-sweets.

The cookie is a sweet in on-the-table. Understand "cookies" as cookie. The description is "There's a plate full of chocolate chip cookies."

The candy is a sweet in on-the-table. Understand "candies" as candy. The printed name is "piece of candy". The description is "There are bowls full of assorted candies in brightly colored wrappers."

Before eating a sweet:
say "You nibble on [a noun]. It is delicious!";
now the player is not hungry;
record "had a snack" as achieved instead.

After going to under-the-sofa when the player carries a sweet:
record "brought a snack home" as achieved.

Chapter - Top of Table

On-the-table is a room in the Living Room. The printed name is "On the Table". "You are on top of the table. It is covered with a shiny black tablecloth. There are candies and cookies and other sweets as far as your little eyes can see[if the box of scary sounds is in the location]. There is also a flat rectangular box, about the same size as you[end if]."

Every turn when the location is on-the-table and the box of scary sounds is switched on and the player does not wear the wad of cotton:
try listening.

The tabletop is scenery in on-the-table. Understand "table" as tabletop.

Instead of climbing the shiny black fabric when the location is on-the-table:
try going down.

Before going down from On-the-Table when the player is not sticky:
say "You lose your footing and slide down the tablecloth to the floor, landing with a bounce. You stand up and shake yourself out. Oof.";
move the player to the Floor instead.

Before going down from On-the-Table when the player is sticky:
say "You carefully walk down the tablecloth. About halfway through, the stickiness from the candy wears off, and you slide right down the tablecloth to the floor, landing with a bounce. You stand up and shake yourself out. Oof.";
now the player is not sticky;
move the player to the Floor instead.

Chapter - Napkin

Folding is an action applying to one thing.
Understand "fold [something]" as folding.
Carry out folding: say "You try to fold [the noun], but it refuses to bend."

Instead of folding the napkin:
say "You try to make a hippo out of the napkin, but it looks more like a duck. An origami master you are not.";
now the napkin is not smoothed;
Record "made origami" as achieved.

Instead of folding the shiny black fabric:
say "The slippery fabric refuses to stay in place."

The napkin is a wearable thing in On-the-Window-Ledge. The initial appearance is "There is a crumpled paper napkin here." A thing can be soiled. The description is "[if the napkin is worn by the player]The napkin has been fashioned into a house hippo-sized cape[otherwise if the napkin is not soiled and the napkin is not smoothed]Despite being crumpled up, it looks and smells clean[otherwise if the napkin is not soiled and the napkin is smoothed]It's a slightly wrinkled, but otherwise clean, napkin[otherwise if the napkin is soiled]It is a disgusting used napkin[end if]."

Understand "cape" as napkin when the napkin is worn by the player.

Uncrumpling is an action applying to one thing.
Understand "uncrumple [something]" and "smooth out [something]" and "smooth [something]" as uncrumpling.
Understand "unfold [something]" and "flatten [something]" as uncrumpling.
Carry out uncrumpling: say "You're not quite sure how to do that."

The napkin can be smoothed. The napkin is not smoothed.

Instead of dropping the napkin when the napkin is smoothed and the location is on-the-window-ledge:
say "You drop the napkin off the edge. It coasts slowly down to the floor.";
move the napkin to the floor;
if the location of the spider cat is the floor, say "[line break]The spider cat runs after the napkin, but quickly loses interest."

Instead of dropping the napkin when the napkin is not smoothed and the location is on-the-window-ledge:
say "You drop the napkin off the edge. It drops to the floor below.";
move the napkin to the floor;
if the location of the spider cat is the floor, say "[line break]The spider cat runs after the napkin, but quickly loses interest."


Instead of uncrumpling the napkin:
say "You smooth out the napkin the best you can, but it's still wrinkled in places.";
now the napkin is smoothed.

After taking something:
say "You pick up [the noun] in your mouth."

After wearing the napkin: say "You drape the napkin over your back like a tiny cape. Super Hippo!"

Before wearing the napkin for the first time:
record "super hippo!" as achieved.

Instead of taking the soiled napkin:
say "Ew, gross."

Making a parachute is an action applying to nothing.
Understand "make a parachute" and "use napkin as parachute" as making a parachute.
Carry out making a parachute: say "How do you expect to do that?"

Instead of making a parachute when the player carries the napkin:
say "You try to take the corners of the napkin in your mouth, but as you reach for the fourth, you accidentally release two.";
record "tried to make a parachute" as achieved.

Chapter - Candy

The lollipop is an edible thing. The printed name is "partially-eaten lollipop." The description is "It's sticky, but looks awfully tasty. It's purple, which is your favorite color." Understand "candy" as lollipop.

Instead of taking the lollipop:
say "It seems to be stuck to the floor. And now you are sticking to the floor.";
now the player is sticky.

Before eating the lollipop:
say "Crunch crunch crunch. Yummy!" instead.

Before tasting the lollipop:
say "You lick the lollipop. It tastes like grapes!" instead.
 
Part - Player

A person can be sticky. The player is not sticky.

The description of the player is "You are a very fine specimen of [italic type][if the napkin is worn by the player]Hippopotamus heroica[otherwise]Felis terribulus[end if][as normal]."

Instead of tasting the player: say "Nope, you're still not able to lick your own ear."

Licking ear is an action applying to nothing.
Understand "lick ear" as licking ear.
Carry out licking ear: say "Almost. But not quite."

Chapter - Carrying Capacity

The carrying capacity of the player is 1.

Understand "take all" and "take everything" as a mistake ("You can only carry one thing at a time.")

Part - NPCs

Chapter - Child

The dragon is a woman in Under-the-Table. The initial appearance is "There is [a dragon] sitting under the table!" The description is "You've never seen [a dragon] this small before! Well, technically, you've never seen [a dragon] before. But you've heard stories and always envisoned them as being quite large. It's larger than [italic type]you[as normal], of course. But still. This one is about the size of a small human with orange wings and a long blue tail[first time]. It's sobbing quietly[only]." Understand "child" as dragon.

The wings are part of the dragon. The description is "The dragon has small orange wings on its back."

The tail is part of the dragon. The description is "The dragon has a long blue tail."

Saying hello to is an action applying to one thing.
understand "talk to [something]" as saying hello to.
Carry out saying hello to: say "You can only do that to something animate."

Instead of saying hello to the dragon: say "You murmur quietly at [the dragon]. It blinks at you in response, choking back a sob."

Instead of tasting the dragon: say "You give [the dragon] a tiny lick. It giggles."

Instead of climbing the dragon: say "You climb into the dragon's lap. It strokes your back softly."

Instead of kissing the dragon: say "You nudge the dragon with your head. It looks down at you in surprise."

Understand the command "console" and "comfort" as "hug".

Instead of showing or giving the napkin to the dragon:
say "You offer the napkin to the dragon. The dragon accepts the napkin, dabs its eyes, blows its nose and gives you a grateful smile. Then it crawls out from under the table, leaving behind the soiled napkin and the sticky remains of a lollipop.";
move the napkin to the location;
move the lollipop to the location;
now the napkin is soiled;
remove the dragon from play;
record "cheered up a dragon" as achieved.

Chapter - Cat

The spider cat is an animal in the porch. The description is "It smells curiously like the cat who owns the house, but it appears to be some sort of fluffy orange and black spider." The printed name is "[if the spider cat is angry]very angry [end if]spider". 

The spider cat can be angry. The spider cat is not angry.

Every turn when the spider cat is in the Floor and the location of the player is not under-the-sofa and the location of the player is not under-the-table:
if the remainder after dividing the turn count by 11 is 0, say "The spider slinks around looking vaguely embarrassed."

When play begins: 
the cat wanders into the living room in five turns from now.

Instead of smelling the spider cat:
say "You sniff in the general direction of the spider. It smells strongly of cat."

At the time when the cat wanders into the living room:
	if the location is in the living room:
		if the location is under-the-sofa or the location is under-the-table:
			say "You hear the swish of the flap on the front door.";
		otherwise:
			say "A giant spider wriggles through a flap on the front door and enters the living room.";
		move the cat to the floor.

Before doing anything except examining or smelling or saying hello to the cat: say "You take note of its fangs and sharp claws and decide to keep your distance." instead.

Instead of saying hello to the spider cat:
say "The strange-looking spider hisses at you[if the wad of cotton is worn by the player], but you can't hear it[otherwise][first time]. It [italic type]sounds[as normal] like the cat, too[only][end if]."

Part - Assorted Actions

Chapter - Flying

Flying is an action applying to nothing.
Understand "fly" as flying.
Report flying: say "House hippos, like house pigs, cannot fly."

Instead of flying when the napkin is worn by the player:
say "You look quite dashing in your cape, but it has not, unfortunately, given you the ability to fly."

Chapter - Climbing

Climbing up is an action applying to nothing.
Understand "climb up" as climbing up.
Instead of climbing up: try going up.

Climbing down is an action applying to nothing.
Understand "climb down" as climbing down.
Instead of climbing down: try going down.

Does the player mean climbing the napkin: it is unlikely.

Scaling up is an action applying to one thing.
Understand "climb up [something]" as scaling up.
Instead of scaling up something: try climbing the noun.

Scaling down is an action applying to one thing.
Understand "climb down [something]" as scaling down.
Instead of scaling down something: try climbing the noun.

Chapter - Jumping

Instead of jumping:
say "You jump in the air."

Instead of jumping when the napkin is worn by the player:
say "You jump in the air; the napkin slows down your fall."

Chapter - Coasting

Jumping to is an action applying to one thing.
Understand "jump to [something]" and "jump on [something]" as jumping to.
Carry out jumping to: say "You can't reach that from here."

Jumping off is an action applying to one thing.
Understand "jump off [something]" and "leap off [something]" as jumping off.
Carry out jumping off: say "That's not something you can jump off."

Check jumping off the window ledge:
if the player is not wearing the napkin, say "That would be most dangerous." instead.

Before jumping to the table:
try jumping off the window ledge instead.

Check jumping off the tabletop:
say "The table is a bit too high for that." instead.

Instead of jumping off the window ledge when the player is wearing the napkin:
say "You coast slowly down to the top of the table.";
move the player to on-the-table;
record "made it to the table 1" as achieved.

Instead of jumping off the basket of apples when the location is top-of-basket:
say "You jump down from the top of the basket.";
move the player to the porch.

Does the player mean jumping off the ledge: it is likely.
Does the player mean jumping off the table: it is likely.

Chapter - Other

Dancing is an action applying to nothing.
Understand "dance" as dancing.
Carry out dancing: say "You do the Mash. You do the Monster Mash. It's a graveyard smash."

Mashing is an action applying to nothing.
Understand "do the mash" and "do the monster mash" as mashing.
Carry out mashing: say "It caught on in a flash!"

Instead of wearing something worn by the player: say "You are already wearing that."

Instead of listening when the wad of cotton is worn by the player:
say "You can't hear anything with the cotton in your ears."

Instead of listening when the box of scary sounds is switched on: say "You hear [one of]gleeful laughter[or]a loud shriek[or]a creaking door[or]a moaning ghost[or]a slamming door[or]a low growl[or]a howling wolf[at random]."

Instead of listening when the box of scary sounds is switched off and the dragon is in under-the-table: say "You hear someone crying. It is coming from underneath the table."

Instead of eating something that is not edible: try tasting the noun.

Chapter - Sleeping

Every turn:
	if the player is wearing the wad of cotton or the box of scary sounds is switched off:
		now the player is not spooked.

Every turn:
	if the player is not wearing the wad of cotton and the box of scary sounds is switched on:
		now the player is spooked.

A person can be spooked. The player is spooked.
A person can be hungry. The player is hungry.

Instead of sleeping:
	if the player is spooked:
		say "You couldn't possibly fall asleep with so much excitement going on!";
	otherwise if the player is hungry:
		say "Your tummy rumbles. You were hoping to get a small snack before bedtime.";
	otherwise if the location is not under-the-sofa:
		say "You ought to return to your nest before you go to sleep.";
	otherwise:
		say "You snuggle up in your nest of socks and fall fast asleep.";
		end the story finally saying "Pleasant dreams!"

Chapter - Magic Words

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Carry out casting xyzzy: say "A hollow voice says 'BOO!'".

Casting plugh is an action applying to nothing.
Understand "plugh" or "say plugh" as casting plugh.
Understand "plover" or "say plover" as casting plugh.
Carry out casting plugh: say "Gesundheit!"
	
Chapter - Interacting with Inanimate Objects

Instead of pushing or pulling or turning scenery: say "You try with all your might, but it barely moves."

Instead of taking scenery: say "There's no way you could lift that."

Understand "gnaw [something]" and "nibble [something]" and "nom [something]" and "chew [something]" as eating.

Understand "lick [something]" as tasting.
Instead of tasting: say "You give [the noun] a lick. [If noun is edible]Mmm.[else]Bleh! That doesn't appear to be food."

Section - Interacting with Animate Objects

Jumping on is an action applying to one thing.
Understand "jump on [something]" or "pounce [something]" as jumping on.

Check jumping on:
	if the noun is the table or the noun is the window ledge or the noun is the basket of apples:
		say "You can't jump that high.";
	otherwise:
		say "You pounce on [the noun]."

Before jumping on the window ledge:
say "You can't jump that high." instead.
                
Instead of jumping on the spider cat:
try attacking the spider cat.

Instead of jumping on the dragon:
try climbing the dragon.

Understand "pet [something]" as touching.

Understand "bite [something]" as attacking.

Instead of attacking the dragon:
say "That wouldn't be very nice!"

Instead of attacking: say "There's no need to be so destructive!"

Before attacking the spider cat when the location is top-of-basket:
say "Maybe you could throw something at the spider to scare it away." instead.

Copulating is an action applying to one thing.
Understand the command "screw" as something new.
Understand "screw [something]" or "fuck [something]" as copulating.
Report copulating: say "This isn't that sort of game.".

Part - Vocalizations

Chapter - General

Laughing is an action applying to nothing.
Understand "laugh" as laughing.
Carry out laughing: say "You giggle quietly to yourself, 'Hih hih hih.'"
        
Instead of singing: say "You bellow, 'This is Halloween, everybody scream.'"
	
Instead of swearing mildly: try swearing obscenely.
Instead of swearing obscenely: say "House hippos do not use such language."

Understand the command "shout" as something new.
Shouting is an action applying to nothing.
Understand "shout" and "yell" and "scream" and "bellow" and "roar" as shouting.
Carry out shouting: say "You roar loudly."
	
Growling is an action applying to nothing.
Understand "growl" as growling.
Carry out growling: say "You growl menacingly. You feel a little silly."

Hissing is an action applying to nothing.
Understand "hiss at cat" and "hiss at spider" and "hiss" and "hiss back" as hissing.
Carry out hissing: say "You are a house hippo. House hippos do not hiss."

Meowing is an action applying to nothing.
Understand "meow" and "mew" as meowing.
Carry out meowing: say "MEOW MEOW."

Razzing is an action applying to nothing.
Understand "stick out tongue" and "stick tongue out" as razzing.
Carry out razzing: say "You stick your tongue out at [the random visible thing]. The insult goes unnoticed."
	
Mumbling is an action applying to nothing.
Understand "hippo" and "mumble" and "murmur" as mumbling.
Carry out mumbling: say "Hippo. Hippo. Hippo."

Chapter - Conversation

Instead of saying hello to yourself: say "You mumble incoherently to yourself. It sounds suspiciously like 'hippo hippo hippo.'"

After saying hello to something that is not a person (this is the new can't greet inanimate objects rule):
say "[The noun] do[if the noun is not plural-named and the noun is not the player]es[end if] not respond. Because [if the noun is not plural-named]it is [a noun][otherwise]they are [noun][end if]."

Part - Scoring

Table of Tasks Achieved 
Points	Citation	Turn Stamp
5	"got rid of the spider"	-1
5	"super hippo!"	-1
5	"made it to the table 1"	-1
5	"made it to the table 2"	-1
5	"cheered up a dragon"	-1
5	"plugged ears with cotton"	-1
5	"got rid of the device"	-1
5	"had a snack"	-1
1	"brought a snack home"	-1
1	"tried to make a parachute"	-1
1	"made origami"	-1
1	"turned off device"	-1
1	"pushed pumpkin off porch"	-1

To record (T - text) as achieved: 
	choose row with a citation of T in the Table of Tasks Achieved; 
	if turn stamp entry is less than 0:
		now the turn stamp entry is the turn count;
		increase the score by the points entry.


[
Requesting the full score is an action out of world. Understand "full" or "full score" as requesting the full score.

Carry out requesting the full score (this is the announce the full score rule):
	say "You have so far scored [score] out of a possible [maximum score], in [turn count] turn[if turn count is greater than 1]s[end if].";
	sort the Table of Tasks Achieved in turn stamp order;
	repeat through the Table of Tasks Achieved:
		if the turn stamp entry is greater than 0:
			say "[line break] [citation entry]: [points entry] point[if points entry is greater than 1]s[end if]";
	say "[line break]".

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see the FULL score for that game"	false	"full" or "score" or "full score"	announce the full score rule	--
]


Part - Testing

test table with "abstract lollipop to me/drop lollipop/take lollipop/climb table/turn device off".
test cotton with "abstract cotton to me/wear cotton".
test cat with "out/enter hole/up/throw apple".