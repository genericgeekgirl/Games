"A Hippo on Elm Street" by "Erin Gigglecreek".

The story creation year is 2015.
The release number is 1.
The story headline is "a not-so-scary story".
The story genre is "fantasy".
The story description is "'[story title]' was started for Ectocomp 2014, but failed to write itself in under three hours." [TODO]

Part - Basic Setup
 
Chapter - Extensions

Include Conversation Framework for Sand-dancer by Aaron Reed.
Include Case Management by Emily Short.
Include Punctuation Removal by Emily Short.
Include Reversed Persuasion Correction by Juhana Leinonen.
Include Smarter Parser by Aaron Reed.
Include Basic Help Menu by Emily Short.
Include Poor Man's Mistype by Aaron Reed.

Chapter - Help Menu

After printing the banner text:
say "[line break][as the parser]If you are unfamiliar with Interactive Fiction, type HELP for a quick introduction on how to play. [as normal][line break]"

Understand "menu" as asking for help.
Understand "credits" as asking for help.

When play begins:
choose row 1 in the Table of Basic Help Options;
change title entry to "About '[story title]'";
change description entry to "[story description] [author][line break][credits].";
choose row 2 in the Table of Basic Help Options;
change title entry to "How to Play".

To say author: say "The author can be contacted at <gigglecreek@gmail.com>."
To say credits: say "The house hippo was created by the Concerned Children's Advertisers, and appears here without permission."

Chapter - Parsing Commands

When play begins: now corrections enabled is false.

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
Use no scoring.

When play begins:
say "The humans of the household seem to be holding some sort of party. You're not quite sure what's going on, but you're determined to find out. TODO"

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

The cat-sized flap is an open, unopenable door and scenery. It is north of the Floor and south of the Porch. The description is "There is a cat-sized flap in the bottom of the front door."
Understand "cat door" and "front door" and "door" as cat-sized flap.

Instead of entering the cat-sized flap when the location is Floor: try going north.
Instead of entering the cat-sized flap when the location is Porch: try going south.

Before going north when the location is Floor:
	if the porch has been visited:
		say "You peek your head out through the flap and immediately begin to shiver. You decide to stay inside." instead;
	if the number of things carried by the player is not 0:
		say "As you wriggle through the flap, you drop [the random thing carried by the player] inside the house.[paragraph break]";
		try silently dropping a random thing carried by the player;
	otherwise:
		say "You push your way through the flap onto the porch.[paragraph break]";                
	say "It's really cold out here, and you begin to shiver uncontrollably. You turn around to re-enter the warmth of the house to discover that [if the location of the spider cat is floor]the spider[otherwise if the location of the spider cat is the porch]a giant spider[end if] has followed you outside. It arches its back and hisses at you.";
	move the spider cat to the porch.

Instead of going south when the location is the porch and the location of the cat is porch:
say "The spider is blocking your way."

Before going south when the location is Porch and the cat is not in the location:
say "You squeeze back into the house. Mmmmm. The warmth hits you immediately."

Chapter - Porch

The Porch is a room. "Jack o Lantern?, basket of apples. TODO" 

The basket of apples is scenery in the Porch. The description is "[if the basket of apples is full]This basket is full of red apples. There is a small hole in the side of the basket, about the size of a mouse. Or a house hippo.[otherwise]This basket was, moments ago, filled with apples. Now it lies empty, surrounded by apples.[end if]"

The basket of apples can be spilled or full. The basket of apples is full.

The hole is an open, unopenable door and scenery. It is inside from the porch and outside from bottom-of-Basket. The description is "A mouse-sized hole in the side of the basket."

Chapter - Basket of Apples

Instead of entering the basket of apples: try entering the hole.

Bottom-of-basket is a room. "You are at the bottom of the basket, surrounded by apples. There is a small hole leading outside." The printed name is "Basket of Apples".

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

Instead of dropping the shiny red apple when the location is top-of-basket:
try throwing the shiny red apple at the spider cat.

Instead of throwing the shiny red apple at the spider cat:
say "You toss the apple at the giant spider, hitting it squarely in the head. The spider screeches and pounces on the basket, knocking apples--and you--all over the porch.";
the human arrives in one turn from now;
move the player to the porch;
move the shiny red apple to the porch.

At the time when the human arrives:
say "A black cat walking on two legs opens the front door. She scoops the apples back into the basket and picks up the spider, clutching it to her chest. The spider yowls angrily as the large cat carries it away. You almost feel sorry for it. Almost.";
remove the spider cat from play.

Chapter - Non-Existent Rooms

Staging is a room. It is up from the Floor.
Staging2 is a room. It is down from On-the-Window-Ledge.
Staging3 is a room. It is down from On-the-Table.

Chapter - Living Room

The Living Room is a region.

Chapter - On the Floor

The floor is a room in the Living Room. The printed name is "Living Room". "There is a table here, the top of which is somewhere high above your head. A length of black shiny fabric covers the table, reaching nearly to the floor. There is just enough clearance for a hippo of your size. The sofa is behind you. A thick white spider web leads from the floor up to the window ledge above you."

Instead of examining up when location is the Floor: say "Looking up, you can see a window ledge and a table."

Chapter - On-the-Window-Ledge

On-the-Window-Ledge is a room in the Living Room. The printed name is "On-the-Window-Ledge". "You are standing On-the-Window-Ledge. Outside the window is the porch. From here, you can see the top of the table. You can climb back down the spider web to the floor."

The window ledge is scenery in On-the-Window-Ledge.

After deciding the scope of the player while the location of the player is on-the-window-ledge:
place the porch in scope;
place the table in scope.

Instead of going down from on-the-window-ledge:
say "You slowly make your way back down the spider web.";
move the player to the Floor.

The picture window is scenery in On-the-Window-Ledge.

Instead of opening the picture window: say "You couldn't possibly manage that on your own. Besides, it's very, very cold outside."

Understand "look out of [something]" and "look out [something]" as searching.
Instead of searching the picture window: say "[description of the porch]".

The spider web is a backdrop in the Living Room.

Instead of climbing the spider web:
say "You climb the spider web up to the window ledge.";
move the player to On-the-Window-Ledge.

Chapter - Under-the-Sofa

Going by name is an action applying to one thing.
Understand "go [any room]" as going by name.

Carry out going by name:
let aim be the best route from the location to the noun, using doors;
try going aim.

The sofa is a backdrop in the Living Room.

Under-the-Sofa is a room in the Living Room. It is south of the Floor. The printed name is "Underneath the Sofa". "You are underneath the sofa. You are safe and warm here." Understand "under the sofa" and "under sofa" as under-the-sofa.

Instead of looking under the sofa: move the player to Under-the-Sofa.

Instead of exiting when the location is Under-the-Sofa: try going north.

Chapter - Under the Table

Instead of looking under the shiny black fabric: move the player to Under-the-Table.

Under-the-Table is a room in the Living Room. The printed name is "Underneath the Table". "You are hiding underneath the table." Understand "under the table" and "under table" as under-the-table.

After deciding the scope of the player while the location of the player is Under-the-Table:
place shiny black fabric in scope;
place big table in scope.

Instead of examining the table when the location is Under-the-Table:
say "You gaze up at the bottom of the table, but it doesn't seem very interesting."

Chapter - Tablecloth and Table

The big table is scenery in the Floor. The description is "[if the location is the Floor]You can only imagine what wonders the table holds. All you can see from here is a curtain of black fabric[otherwise]The table is covered with treats of all sorts[end if]."

The shiny black fabric is an open unopenable door and scenery. It is inside of the Floor and outside of Under-the-Table. The description is "The [shiny black fabric] is made from some sort of shiny black material." Understand "tablecloth" as shiny black fabric. The printed name is "tablecloth".

Instead of climbing the table: try climbing the shiny black fabric.
Instead of climbing the shiny black fabric: say "The fabric is much too slippery for that."

Instead of taking the shiny black fabric:
say "You tug on the [shiny black fabric] with your teeth, but whatever is on the table is so heavy that it doesn't budge."

Instead of entering the table: try entering the shiny black fabric.

Instead of looking under the table: try looking under the shiny black fabric.

Chapter - Top of Table

On-the-table is a room in the Living Room. The printed name is "On the Table". "You are on top of the table. TODO."

Instead of going down from On-the-Table:
say "You lose your footing and slide down the tablecloth to the floor, landing with a bounce. You stand up and shake yourself out. Oof."

Chapter - Napkin

The napkin is a wearable thing in On-the-Window-Ledge. The initial appearance is "There is a crumpled paper napkin here." A thing can be soiled. The napkin is not soiled. The description is "[if the napkin is not soiled]Despite being crumpled up, it looks and smells clean[otherwise if the napkin is worn by the player]It has been fashioned into a house hippo-sized cape[otherwise]It is a disgusting used napkin[end if]."

After wearing the napkin: say "You drape the napkin over your back like a tiny cape. Super Hippo!"
Report taking the napkin: say "You pick up the napkin in your mouth."

Chapter - Candy

The candy is an edible thing. The printed name is "partially-eaten lollipop." The description is "It's sticky, but looks awfully tasty. It's blue, which is your favorite color." Understand "lollipop" as candy.

Instead of taking the candy: say "It seems to be stuck to the floor."

Instead of eating the candy:
say "Crunch crunch crunch. Yummy!"

Instead of tasting the candy:
say "You lick the lollipop. Yummy!"
          
Part - Player

The description of the player is "You are a very fine specimen of [italic type][if the napkin is worn by the player]Hippopotamus heroica[otherwise]Felis terribulus[end if][roman type]."

Instead of tasting the player: say "Nope, you're still not able to lick your own ear."

Licking ear is an action applying to nothing.
Understand "lick ear" as licking ear.
Carry out licking ear: say "Almost. But not quite."

Chapter - Carrying Capacity

The carrying capacity of the player is 1.

Understand "take all" and "take everything" as a mistake ("You can only carry one thing at a time.")

Part - NPCs

Chapter - Child

The dragon is a woman in Under-the-Table. The initial appearance is "There is [a dragon] sitting under the table!" The description is "You've never seen [a dragon] this small before! Well, technically, you've never seen [a dragon] before. But you've heard stories and always envisoned them as being quite large. It's larger than [italic type]you[as normal], of course. But still. This one is about the size of a small human with orange wings and a long blue tail." Understand "child" as dragon.

Instead of saying hello to the dragon: say "You murmur quietly at [the dragon]."

Instead of tasting the dragon: say "You give [the dragon] a tiny lick. It giggles."

Instead of showing or giving the napkin to the dragon:
say "You offer the napkin to the dragon. The dragon accepts the napkin, dabs its eyes, blows its nose and gives you a grateful smile. Then it crawls out from under the table, leaving behind the soiled napkin and the sticky remains of a lollipop.";
move the napkin to the location;
move the candy to the location;
now the napkin is soiled;
remove the dragon from play.

Chapter - Cat

The spider cat is an animal in the porch. The description is "It smells curiously like the cat who owns the house, but it appears to be some sort of fluffy orange and black spider." The printed name is "spider".

When play begins: 
the cat wanders into the living room in five turns from now.

Instead of smelling the spider cat:
say "You sniff at the spider. It smells strongly of cat."

At the time when the cat wanders into the living room:
	if the location is the floor:
		say "A giant spider wriggles through a flap on the front door and enters the room.";
		move the cat to the floor.

Instead of doing anything except examining or smelling to the cat: say "You take note of its fangs and sharp claws and decide to keep your distance."

Instead of saying hello to the spider cat:
say "The strange-looking spider hisses at you[first time]. It [italic type]sounds[as normal] like the cat, too[only].";

Part - Assorted Actions

Chapter - Flying

Flying is an action applying to nothing.
Understand "fly" as flying.
Report flying: say "House hippos, like house pigs, cannot fly."

Instead of flying when the napkin is worn by the player:
say "You look quite dashing in your cape, but it has not, unfortunately, given you the ability to fly."

Chapter - Jumping

Instead of jumping:
say "You jump in the air."

Instead of jumping when the napkin is worn by the player:
say "You jump in the air; the napkin slows down your fall."

Chapter - Coasting

Jumping off is an action applying to one thing.
Understand "jump off [something]" as jumping off.
Carry out jumping off: say "That's not something you can jump off."

Check jumping off the window ledge:
if the player is not wearing the napkin, say "That would be most dangerous." instead.

Check jumping off the big table:
say "The table is a bit too high for that." instead.

Instead of jumping off the window ledge when the player is wearing the napkin:
say "You coast slowly down to the top of the table.";
move the player to on-the-table.

Instead of jumping off the basket of apples when the location is top-of-basket:
say "You jump down from the top of the basket.";
move the player to the porch.

Chapter - Other

Dancing is an action applying to nothing.
Understand "dance" as dancing.
Carry out dancing: say "You do the Mash. You do the Monster Mash. It's a graveyard smash."

Mashing is an action applying to nothing.
Understand "do the mash" and "do the monster mash" as mashing.
Carry out mashing: say "It caught on in a flash!"

Instead of sleeping: say "You couldn't possibly fall asleep with so much excitement going on."

Instead of wearing something worn by the player: say "You are already wearing that."

Instead of listening: say "You hear [one of]gleeful laughter[or]a loud shriek[or]a creaking door[or]a moaning ghost[or]a slamming door[or]a low growl[or]a howling wolf[at random]."

Instead of eating something that is not edible: try tasting the noun.

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

Understand "pet [something]" as touching.

Instead of attacking a person: try growling.

Instead of attacking: say "There's no need to be so destructive!"

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
Understand "shout" and "scream" and "bellow" and "roar" as shouting.
Carry out shouting: say "You roar loudly."
	
Growling is an action applying to nothing.
Understand "growl" as growling.
Carry out growling: say "You growl menacingly at nothing in particular. You feel a little silly."

Hissing is an action applying to nothing.
Understand "hiss" and "hiss back" as hissing.
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

Does the player mean saying hello to the player: it is likely.

Before saying hello to someone when the greeting type is explicit: try quizzing the noun about the noun instead.

Before saying goodbye to someone when the greeting type is explicit: try quizzing the noun about the noun instead.

After saying hello to something that is not a person (this is the new can't greet inanimate objects rule):
say "[The noun] do[if the noun is not plural-named and the noun is not the player]es[end if] not respond. Because [if the noun is not plural-named]it is [a noun][otherwise]they are [noun][end if]."
