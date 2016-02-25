"Eggstraordinary Adventure" by "Anonymous"

The story creation year is 2016.
The release number is 1.
The story headline is "A simple two-player game".
The story genre is "slice of life".
The story description is "[story title] was created for the [italic type]Ryan Veeder Exposition for Good Interactive Fiction[roman type]. Author and beta testers are currently anonymous, per the rules of the exposition."

Volume - Basic Setup

Include Hiding Under by Eric Eve.
Include Hiding Behind by Adri.
Include Basic Screen Effects by Emily Short.
Include plurality by Emily Short.

Use American dialect, full-length room descriptions, and the serial comma.

Understand "* [text]" as a mistake ("Noted.").

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

Requesting story information is an action out of world.
Understand "about" and "credits" as requesting story information.
Carry out requesting story information: say "[story description][line break]".

Book - Scoring

The maximum score is 9.

The new notify score changes rule is listed instead of the notify score changes rule in the turn sequence rulebook.

This is the new notify score changes rule:
do nothing.

To say score request:
say "You have [if hiding eggs is happening]hidden[otherwise]found[end if] [score] eggs out of [maximum score]."

Carry out requesting the score:
say "[if the story has ended][otherwise][score request][end if]" instead.

Volume - Scenes

Book - Hiding Eggs

Hiding eggs is a scene.
Hiding eggs begins when play begins.
Hiding eggs ends when the player is done.

A person can be done. The player is not done.

Before going through the cat flap when the player is the bilby and the score is maximum score and the location is the living room:
now the player is done.

When play begins:
say "Once a year, the Easter bilby brings handpainted eggs to all the good children."

After printing the banner text:
say "[paragraph break][bold type]This game has two parts. Player One will hide the eggs, and Player Two will hunt for them.[roman type]";
say "[line break][italic type](Press any key.)[roman type]";
wait for any key;
clear the screen;
say "[bold type]Player One: It is time to hide the Easter eggs! When you're done, return to the front stoop.[roman type][paragraph break]";

When hiding eggs begins:
now the right hand status line is "[score] eggs hidden";
now the score is 0.

Every turn during Hiding Eggs:
now the score is maximum score minus the number of eggs enclosed by the player.

When hiding eggs ends:
say "[bold type]Great! Now give the game to Player Two.[roman type]";
say "[line break][italic type](Press any key.)[roman type]";
wait for any key;
clear the screen;
say "[bold type]Player Two: It is time to hunt for the Easter eggs! Try looking in, on, under and behind things.[roman type][paragraph break]".

Book - Finding Eggs

Finding eggs is a scene.
Finding eggs begins when hiding eggs ends.

When finding eggs begins:
	now the player is not done;
	now the right hand status line is "[score] eggs found";
	now the score is 0;
	now the turn count is 0;
	now the player is the girl;
	remove the bilby from play;
	move the girl to the bedroom;
	now the description of the girl is "You are a four-year-old girl named Julie. You are wearing your new Easter dress.";
	move the basket to the living room;
	repeat with item running through everything on the cat tree:
		now item is hidden under the tabby;
		remove item from play;
	move the tabby to the cat tree;
	move the spider to the bathroom;
	now the bathroom door is unlocked;
	now the bathroom door is open;
	now everything hidden behind the girl is on the bed;
	now everything hidden under the girl is on the bed.

Every turn during Finding Eggs:
now the score is the number of eggs enclosed by the player.

Finding Eggs ends when score is maximum score.

When Finding Eggs ends:
say "Congratulations! You have found all the eggs!";
end the story finally saying "Happy Easter!"

Volume - Environment

The house is a region.

A thing can be behindable. A thing is usually not behindable.
A thing can be underneathable. A thing is usually not underneathable.

Book - Doors

Instead of opening a door when the player is the bilby and the door is not the cat flap:
say "You're unable to reach the doorknob."

Check knocking on something:
	if the noun is not a door or the noun is not the front door:
		say "You can only do that to a door." instead.

Check knocking on a closed door:
say "There is no response." instead.

Check knocking on an open door:
say "The door is already open. There is no need to knock." instead.

Book - Front Stoop

The Front Stoop is a room. "You are standing outside. You can enter the house through the cat flap to the east."

The front door is a backdrop. It is in the Front Stoop and the Living Room.

The cat flap is an open unopenable door and scenery. It is west of the Living Room and east of the Front Stoop.

Instead of opening the front door when the player is the bilby:
say "You can't reach the doorknob. You'll need to use the cat flap."

Instead of knocking on the front door:
say "There is no response. Which is good, because no one is supposed to see you!"

Instead of knocking on the cat flap:
say "There is no response. Perhaps the cat of the house is out tonight."

Before going through the cat flap when the player is the bilby and the score is not maximum score and the location is the living room:
say "You need to finish hiding all the eggs!" instead.

Instead of going through the cat flap when the player is the girl:
say "You should stay inside the house."

Book - Living Room

The Living Room is a room in house. "You are standing in the living room. The front door is west, the kitchen is to the east, and the hallway leads south.[paragraph break]You can see a sofa, a bookcase, a fireplace with a mantel, a side table, a cat tree, and a tall plant here."

The cat tree is a supporter and scenery in the Living Room. It is behindable. "A cardboard and carpet cat tree."

The sofa is a supporter and scenery in the Living Room. It is behindable and underneathable. The description is "A grey sofa, with a single throw pillow."
The throw pillow is a closed openable container and scenery on the sofa. It is underneathable. The description is "A pink and grey throw pillow."

After opening the throw pillow:
say "You unzip the pillow."

After closing the throw pillow:
say "You zip the pillow closed again."

Instead of dropping the pillow:
say "That's not what that means!"

The bookcase is a supporter and scenery in the Living Room. It is behindable and underneathable. The description is "A tall wooden bookcase, full of books."
The books are a plural-named thing and scenery on the bookcase. It is behindable. The description is "Rows and rows of colorfully-bound books."

The fireplace is scenery in the Living Room. It is fixed in place. "It's one of those fake electric fireplaces. It is turned off."

Instead of switching on the fireplace:
say "There's no reason to do that."

The mantel is a supporter and scenery in the Living Room. The description is "A shelf above the fireplace, containing [a list of things on the mantel]."

The decorative_egg is a closed openable container and scenery on the mantel. The description is "A beautiful jeweled egg with a hinge[if the decorative_egg is open]. It is open[end if]."
The printed name is "decorative egg". Understand "decorative" and "egg" and "decorative egg" as decorative_egg.

Does the player mean opening the decorative_egg: it is likely.

The side table is a supporter and scenery in the Living Room. It is underneathable. The description is "A wooden table, on which are [a list of things on the side table]."

The lamp is an open unopenable container and scenery on the side table. It is fixed in place. "A table lamp with a blue lampshade." Understand "lampshade" as lamp.
The lightbulb is a thing in the lamp. "A simple lightbulb."

The lamp can be on or off. The lamp is off.

Instead of switching on the lamp when the lamp contains an egg:
say "That's funny. It doesn't seem to work."

Instead of switching on the lamp:
	if the lamp is off:
		say "Click. You switch the lamp on.";
		now the lamp is on;
	otherwise:
		say "Click. You switch the lamp off.";
		now the lamp is off.

Instead of switching off the lamp:
try switching on the lamp.

Before inserting something into the lamp when the lightbulb is in the lamp:
say "You unscrew the lightbulb first.";
try silently taking the lightbulb.

The tissue box is a container and scenery on the side table. The description is "A tissue box full of tissues."
The tissues are a plural-named thing in the tissue box. The description is "A collection of tissues."

The plant is a container and scenery in the Living Room. It is fixed in place. It is behindable. The description is "A tall leafy green plant stands in the corner."
Understand "planter" as plant.

Book - Kitchen

The Kitchen is a room in the house. It is east of the Living Room. "You are standing in the kitchen. The living room is to the west.[paragraph break]You can see a refrigerator, a counter, an oven, a recycling bin, and a trash can here."

The refrigerator is a closed openable container and scenery in the Kitchen. It is fixed in place. The description is "A standard double door refrigerator." Understand "fridge" as refrigerator.
The freezer is a closed openable container. It is part of the refrigerator. The description is "Half of the refrigerator consists of the freezer area."
The carton is a closed openable container in the refrigerator. The printed name is "egg carton". Understand "egg carton" as carton. The description is "An egg carton with space for twelve eggs."

The counter is a supporter and scenery in the Kitchen. The description is "A marble counter top, on which are [a list of things on the counter]."

The bowl is a container and scenery on the counter. The printed name is "fruit bowl". Understand "fruit bowl" as bowl. The description is "A bowl of fruit."
The fruit is a plural-named thing in the bowl. "A pile of assorted fruit."

Instead of eating the fruit:
say "You eat an [one of]apple[or]banana[or]orange[cycling], swallowing it [one of]core[or]peel[or]peel and seeds[cycling] and all."

The teapot is a closed openable container and scenery on the counter. The description is "A glass teapot with a lid." 

The breadbox is a closed openable container and scenery on the counter. It is behindable. The description is "A metal breadbox."

The drawer is part of the counter. The drawer is a closed openable container. The description is "A drawer[if the drawer is open]. It is open[end if]."

The range is a supporter and scenery in the Kitchen. The description is "Gas range with four burners. There is a lidded pot on the front right burner."
The oven is part of the range. The oven is a closed openable container. The description is "A range and oven combo."
The pot is a closed openable container and scenery on the range. "A silver pot with a lid[if the pot is open]. It is open[end if]."

The recycling bin is a container and scenery in the kitchen. It is fixed in place. It is behindable. The description is "A blue recycling bin with a white logo on the side. It is overflowing with paper goods."
The trash can is a container and scenery in the kitchen. It is fixed in place. It is behindable. The description is "A black trash can. The trash has been taken out recently."

Book - Hallway

The Northern Hallway is a room in the house. It is south of the Living Room. The printed name is "Hallway". "The hallway continues to the south.[if the player is the girl] The bathroom is east, and the closet is west.[otherwise] To the east is a closed door. To the west is a closet.[end if]"

The Southern Hallway is a room in the house. It is south of the Northern Hallway. The printed name is "Hallway". "The hallway continues to the north.[if the player is the girl] Your bedroom is east, and your parents['] bedroom is west.[otherwise] To the east is a bedroom. To the west is a closed door.[end if]"

Book - Bathroom

The Bathroom is a room in the house. "You are standing in the bathroom. The hallway is to the west.[paragraph break]You can see a toilet, a sink, and a tub here."
The bathroom door is a locked door and scenery. It is east of the Northern Hallway and west of the Bathroom. 

Bathroom_count is a number that varies. Bathroom_count is 0.

Before going to the bathroom when the bathroom door is unlocked:
	increase bathroom_count by 1;

After going to the bathroom:
	if bathroom_count is 1:
		say "Oh! There is a giant spider here[if the number of eggs enclosed by the spider is not 0]. It seems to be sitting on a clutch of brightly colored eggs[end if]. You quickly back out of the bathroom and shut the door behind you.";
		move the player to the northern hallway;
		now the bathroom door is closed;                
	otherwise if bathroom_count is 2:
		say "The spider is still there. It waves a leg or three at you. Nope nope nope. Back into the hallway you go, closing the door tightly behind you.";
		move the player to the northern hallway;
		now the bathroom door is closed;                
	otherwise:
		now everything carried by the spider is in the location;
		remove the spider from play;
		say "The spider seems to have wandered off.";
		try looking.

The sink is scenery in the bathroom. The description is "A white porcelain sink."
The toilet is a closed openable container and scenery in the bathroom. The description is "A white porcelain toilet." It is behindable.
The tub is a container and scenery in the bathroom. The description is "A white porcelain tub." 
The mirror is scenery in the bathroom. The description is "A small mirror above the sink."                

Book - Closet

The Closet is a room in the house. "You are standing in the closet. The hallway is to the east."

The Closet Door is an open door and scenery. It is west of the Northern Hallway and east of the Closet. 

Instead of closing the closet door when the location is the closet and the player is the bilby:
say "Be careful, you don't want to get stuck in here!"

The shoes are a plural-named container in the closet. The description is "A pair of white sneakers."

The coat is a thing in the closet. The description is "A long black coat with two pockets."
The left pocket is part of the coat. It is a container. The description is "The left pocket of the coat."
The right pocket is part of the coat. It is a container. The description is "The right pocket of the coat."

The plastic box is a closed openable container in the closet. The description is "A box containing holiday decorations."
The ornaments are a plural-named thing in the plastic box. The description is "A jumble of ornaments." Understand "decorations" as ornaments.

Book - Bedroom

The Bedroom is a room in the house. "You are standing in the bedroom. The hallway is to the west.[paragraph break]You can see a bed (next to which is a lone slipper), a dresser and a clothes hamper here. A single window looks out onto the back yard."

The bedroom door is an open door and scenery. It is east of the Southern Hallway and west of the Bedroom.

Instead of closing the bedroom door when the location is the bedroom and the player is the bilby:
say "Be careful, you don't want to get stuck in here!"

The bed is a supporter and scenery in the Bedroom. It is underneathable. The description is "A cozy-looking bed[if the girl is on the bed], in which lies a young girl[otherwise if something is on the bed], on which [is-are] [a list of things on the bed][end if]."
The sleep pillow is a closed openable container and scenery on the bed. It is underneathable. The printed name is "pillow". The description is "A fluffy white pillow."

The slipper is a container and scenery in the bedroom. The description is "A single slipper in the shape of a fuzzy blue monster."

The clothes hamper is a closed openable container and scenery in the Bedroom. It is behindable. The description is "A wicker clothes hamper[if the clothes hamper is open]. It is open[otherwise]. It is closed[end if]."

The window is scenery in the Bedroom. It is fixed in place. The description is "A four-paned window with a gauzy pink curtain."
The curtain is part of the window. The description is "A gauzy pink curtain."
The window sill is part of the window. It is a supporter. The description is "A white window sill."

Instead of putting something on the window sill:
hide the noun behind the curtain.

The dresser is a closed container and scenery in the bedroom. It is fixed in place. The description is "A green dresser."

Book - Other Bedroom (Inaccessible)

The Other Bedroom is a room in the house.
The other bedroom door is a locked door and scenery. It is west of the Southern Hallway and east of the Other Bedroom.

Knocking on is an action applying to one thing.
Understand "knock on [something]" as knocking on.

Check knocking on the other bedroom door when the player is the girl:
say "There is no response. Your parents must still be asleep." instead.

Volume - Player Characters

The bilby is a female animal in the Front Stoop. The description is "You are the Easter bilby, a marsupial with a long muzzle, a long tail, and very long ears. You're about the size of a rabbit."
The player is the bilby.

The girl is a woman on the bed. The description is "A little girl lies fast asleep, visions of jelly beans dancing in her head." Understand "Julie" as the girl. The girl is underneathable.

Volume - NPCs

The tabby cat is a male animal. The description is "An orange tabby cat."

Does the player mean doing something to the tabby cat: it is likely.

The spider is a female animal in the closet. The description is "This spider is about half as large as you are![if the number of eggs enclosed by the spider is not 0] It's sitting on a collection of brightly colored eggs.[end if]"

Volume - Inventory

Book - Pouch

The carrying capacity of the bilby is 1.

The pouch is an open unopenable container. The pouch is part of the bilby. The pouch is the player's holdall.

Instead of taking inventory when the player is the bilby:
	say "Your pouch contains:[line break]";
	list the contents of the pouch, with newlines, indented, with extra indentation;
	if the number of things carried by the player is not 0:
		say "You are also carrying:[line break]";
		list the contents of the player, with newlines, indented, with extra indentation.

Rule for deciding whether all includes something enclosed by the pouch while taking: it does not.

Before doing anything with a noun:
	if the noun is enclosed by the pouch:
		now the player carries the noun.

Check taking anything when the player is the bilby:
	if the noun is not an egg and the noun is not the lightbulb:
		say "You don't need that!" instead.

Book - Basket
                
The carrying capacity of the girl is 4.
                
The basket is an open unopenable container. The printed name is "Easter basket". The basket is the player's holdall. The description is "A pink and orange woven plastic basket, filled with green grass[if the number of eggs contained by the basket is not 0] and a collection of colorful eggs[end if]. [if the plush bilby is in the basket]A plush toy sits in the basket.[end if]"

The plush bilby is a thing in the basket. The description is "A tiny stuffed bilby. He wears a blue bowtie." Understand "plush toy" and "toy" as plush bilby.

[TODO: hugging the plush toy]

Instead of taking the plush bilby:
say "You pick up the stuffed bilby.";
now the player carries the plush bilby.

The green grass is a thing in the basket. The description is "Plastic green grass fills the bottom of the basket."

Instead of taking the green grass:
say "You should leave that where it is."

Instead of taking inventory when the player is the girl:
	now all things carried by the player are marked for listing; 
	if the basket is carried by the player:
		now the basket is unmarked for listing;
		say "Your basket contains:[line break]";
		list the contents of the basket, with newlines, indented, with extra indentation;
	if the number of things carried by the player is not 0:
		if the basket is not carried by the player:
			say "You are carrying:[line break]";
		otherwise:
			say "You are also carrying:[line break]";
		list the contents of the player, with newlines, indented, with extra indentation, listing marked items only.

Rule for deciding whether all includes something enclosed by the basket while taking: it does not.
                
Before doing anything with a noun:
	if the noun is enclosed by the basket:
		now the player carries the noun.
                
Check taking anything when the player is the girl:
	if the noun is not an egg and the noun is not the basket and the noun is not the plush bilby:
		say "You don't need that right now. You should focus on finding the eggs." instead.

                                
Volume - Eggs

An egg is a kind of thing. The description of an egg is "A colorful, handpainted egg."

The dinosaur egg is an egg in the pouch.
The rainbow egg is an egg in the pouch.
The floral egg is an egg in the pouch.
The princess egg is an egg in the pouch.
The ladybug egg is an egg in the pouch.
The abstract egg is an egg in the pouch.
The golden egg is an egg in the pouch.
The newsprint egg is an egg in the pouch.
The camouflage egg is an egg in the pouch.

Book - Assorted Actions

Understand the command "crack" as something new.
Cracking is an action applying to one thing.
Understand "crack [something]" as cracking.

Check cracking something:
if the noun is not an egg, try attacking the noun instead.

Instead of opening an egg (called E):
try cracking E.

Instead of cracking an egg (called E):
say "You crack the egg open.";
now E is edible.
[TODO]

Instead of cracking an egg when the player is the bilby:
say "No, you need to hide the eggs, not eat them."

Instead of giving an egg (called E) to the spider:
now the spider carries E;
say "You offer [the E] to the spider. It reaches out with two giant legs and gently takes the egg from you."

Instead of taking an egg that is carried by the spider:
say "Nope."

Instead of giving an egg (called E) to the tabby cat:
say "You try to offer [the E] to the cat, but it doesn't seem interested.";
[try the tabby cat eating E.]

Book - Hiding Eggs

Instead of placing something behind a behindable thing:
hide the noun behind the second noun;
say "You put [the noun] behind [the second noun]."

Instead of placing something under an underneathable thing:
hide the noun under the second noun;
say "You put [the noun] under [the second noun]."

Instead of placing an egg (called E) behind the spider:
try giving E to the spider.

Instead of placing an egg (called E) under the spider:
try giving E to the spider.

Instead of dropping an egg when the location is Front Stoop:
say "Wait until you're inside the house!"

Understand "hide [things preferably held] in [something]" as inserting it into.

Understand "hide [things preferably held] on [something]" as putting it on.

Rule for printing room description details of a container: omit contents in listing.
Rule for printing room description details of a supporter: omit contents in listing.

Carry out examining a container when something is in the noun:
        say "[description of the noun][paragraph break]";
        rule succeeds.

Carry out examining a supporter when something is on the noun:
        say "[description of the noun][paragraph break]";
        rule succeeds.

Volume - Other Actions

Instead of attacking an animal:
say "That would be cruel!"

Instead of attacking the girl:
say "That is unnecessary."

Dancing is an action applying to nothing.
Understand "dance" as dancing.

Carry out dancing when the player is the bilby:
say "You do the bilby hop. Hop hop hop."

Carry out dancing when the player is the girl:
say "You twirl around."

Understand the command "pet" as "touch".

Instead of touching the tabby cat:
say "You pet the cat. It purrs softly."

Instead of taking the tabby cat:
say "You try to pick up the cat, but it wriggles out of your arms."