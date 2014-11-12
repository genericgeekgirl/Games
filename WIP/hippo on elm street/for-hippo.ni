The Table-Top is a room. The printed name is "High above the Living Room". "You are standing on top of the table."

The closet is southeast of the Living Room and northwest of the Hippo Shack. It is a open door and scenery. Understand "living room closet" and "home" as closet. "The closet holds winter coats and assorted outdoor toys. Tonight you will be sleeping in there so you can wait for Santa." 

The Hippo Shack is a room. The printed name is "Inside the Closet". "This is the closet where you will be spending the night. It is full of things that you don't need to think about right now."

Instead of going nowhere from the Hippo Shack:
	say "The only way out is back to the northwest."

Instead of exiting from the Hippo Shack: try going northwest.

Instead of examining up when location is Living Room:
	otherwise:
		say "You peer up at the holiday tree."

Instead of examining down when location is Table-Top:
say "You look down at the floor. It seems very far."

[Instead of looking under...]

Before wearing something:
move the noun to the player.

Before wearing something that is not wearable:
Say "You're not quite sure how to wear that." instead.

Instead of counting the ornaments:
	say "There are 69,105 ornaments on the tree.";
Chapter - Presents

After deciding the scope of the player while the location of the player is Under-the-Table:
place tablecloth in scope;
place table in scope.

Instead of examining the table when the location is Under-the-Table:
say "You gaze up at the bottom of the table, but it doesn't seem very interesting."

Instead of examining the table when the location is Table-Top:
try looking.

Understand "climb [up]" or "climb [down]" as going.

Understand "jump off table" and "jump from table" as flying when the location is Table-Top.

Instead of flying when the mitten is worn by the player:
say "A mitten does not a super hippo make." instead.

Instead of pushing when the location is Table-Top:
	say "You push [the noun] off the table. It falls to the floor below.";
	move the noun to the Living Room.

Knocking over is an action applying to one thing.
Understand "knock over [something]" as knocking over.

Instead of knocking over something when the noun is not the presents:
try pushing the noun.

Carry out knocking over the presents:
	say "You rear up with the intention of pushing over the pile of presents, and then you stop. They're so perfectly stacked, and it would be a shame to mess it up."

The unnecessary movement rule is not listed in the Smarter Parser rulebook. 

Understand "hide under [something]" or "go under [something]" or "walk under [something]" as entering.

Hiding is an action applying to nothing.
Understand "hide" as hiding.

Instead of hiding:
	if the location is:
		-- the living room: try entering the tablecloth;
		-- the under-the-table: say "You are already hiding!";
		-- otherwise: say "You are not in any danger right now. There is no need for you to hide."
                                        

Instead of entering the table:
try entering the tablecloth.

Instead of entering the tree:
try looking under the tree.

Instead of looking under the table:
  try looking under the tablecloth.

Instead of climbing the table:
	try climbing the tablecloth.

Chapter - Cookie

Chapter - Nest

The nest is an enterable supporter in the Hippo Shack. It is fixed in place. The indefinite article is "your". The description is "It is a warm, comfortable mass of dryer lint and bits of string. It's not as nice as your nest in the bedroom closet, but it will do for tonight.[if the mitten is not on the nest or the garland is not on the nest] It's still looking a little sparse, though. Perhaps you could find just one or two more items before you settle in for the night.[end if]"

Instead of taking the nest:
  say "You quite like it where it is."

Chapter - Lights

Instead of touching the lights:
say "Be careful! The lights are very hot."

Chapter - Carrying Capacity

The carrying capacity of the player is 1.

Instead of taking off:
	say "You shake off [the noun]. It falls onto the [if the location is the Table-Top]table[otherwise if the player is on the nest]nest[otherwise]floor[end if].";
	move noun to location;
	stop the action.

Instead of taking off the hat for the first time:
	say "But it looks so cute on you!"
        
Check taking something when the number of things carried by the player is at least the carrying capacity of the player and the player is not carrying the noun:
	say "You can only carry one thing at a time. You will need to drop [the list of things carried by the player] to pick up [the noun]. But some items can be pushed around or worn.";
        stop the action.
        
Procedural rule while eating: ignore the carrying requirements rule.

Part - Actions

Section - Counting
	
Counting is an action applying to one thing.
Understand "count [something]" as counting.

Report counting something:
	If the noun is the player:
		say "You are truly one of a kind.";
	Otherwise if the noun is the cat:
		say "This is thankfully a one-cat household.";
	Otherwise if the noun is not plural-named:
		say "There's just the one.";
	Otherwise:
		say "There is more than one."

Section - Listening

Instead of listening:
	if the cat is in the Living Room:
		say "You hear only the sound of your heart beating.";
	else if the cat is a threat:
		say "You hear a bell jingling somewhere in the house.";
	otherwise:
		say "You hear nothing by the faint ticking of the grandfather clock. Everyone else has already gone to bed."

            
Chapter - Movement

Understand "pull [something] [direction]" as pushing it to.
Understand "pull [something] to [direction]" as pushing it to.
Understand "drag [something] [direction]" as pushing it to.
Understand "drag [something] to [direction]" as pushing it to.

[TODO: how to say drag instead of push?]
After going a direction (called way-pushed) with something (called the thing-pushed):
	say "You [if the thing-pushed is the cookie]roll[otherwise]push[end if] [the thing-pushed] [way-pushed] to [the location]";
	continue the action.

Instead of wearing something worn by the player:
say "You are already wearing that."

Instead of pushing or pulling something held by the player:
say "You already have that."
        
Instead of pushing or pulling something worn by the player:
say "You are wearing [the noun]."
        
Instead of pulling something:
say "You take [the noun] in your teeth and drag it along, carefully walking backwards so you don't run into anything."
        
Instead of pushing something:
	say "You give [the noun] a nudge, [if the noun is the cookie]rolling[otherwise]pushing[end if] it along ahead of you."

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Instead of going up from the Living Room:
	try entering the presents.

Instead of going nowhere:
	say "There's no need to explore the rest of the house."
	
Instead of going nowhere from the Table-Top:
	say "The only way down is well.. DOWN."

Chapter - Interacting with Inanimate Objects

Instead of pushing or pulling or turning scenery:
say "You try with all your might, but it barely moves."

Instead of taking scenery:
  say "There's no way you could lift that."

Understand "gnaw [something]" and "nibble [something]" and "nom [something]" and "chew [something]" as eating.

Understand "lick [something]" as tasting.
Instead of tasting:
say "You give [the noun] a lick. [If noun is edible]Mmm.[else]Bleh! That doesn't appear to be food."

Section - Interacting with Animate Objects

Understand "pet [something]" as touching.

Instead of tasting the cat:
say "You're a vegetarian. Unlike the cat..."

Instead of touching or kissing the cat:
	say "That seems unwise. Maybe you should keep your distance."

Instead of kissing or touching the player:
say "You don't bend that way."

Instead of attacking a person:
if the noun is the player, say "Aww, there's no need for that. You've been a very good hippo this year.";
otherwise, try growling at the noun.

Instead of attacking:
	say "There's no need to be so destructive!"

Copulating is an action applying to one thing.
Report copulating: say "This isn't that sort of game.".

Understand the command "screw" as something new.
Understand "screw [something]" or "fuck [something]" as copulating.

default give-show response for cat:
	say "The cat could not care less about your [noun]."

Chapter - Vocalizations

Section - General

Sighing is an action applying to nothing.
Understand "sigh" as sighing.
Carry out sighing:
	say "You sigh heavily."
	
Section - Offensive

Instead of growling when the cat is in the Living Room: say "You growl menacingly at the cat. The cat hisses at you, arching its back."

After shouting when the cat is in the Living Room:
	say "The cat cringes at the sound."

Understand "hiss" and "hiss back" and "hiss at cat" as hissing.
	
Instead of razzing when the cat is in the Living Room:
	say "You stick your tongue out at the cat. This only serves to make it angrier."
	
Part - Testing

test minimal with "push presents/up/eat cookie/push milk/drink puddle/out/se/take mitten/nw/put mitten on lights/take garland/se/drop garland on nest/nw/take mitten/se/drop mitten on nest/enter nest/sleep"

test full with "push presents/look under tree/wear hat/up/eat cookie/down/push milk/drink puddle/out/se/take mitten/nw/take garland/wear garland/put mitten on lights/take tinsel/se/drop tinsel on nest/drop garland on nest/nw/take mitten/se/drop mitten on nest/enter nest/sleep"

test burned with "push presents/look under tree/wear hat/up/eat cookie/down/push milk/drink puddle/out/se/take mitten/nw/take garland/wear garland/put mitten on lights/take tinsel/se/drop tinsel on nest/drop garland on nest/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/nw/take mitten/se/drop mitten on nest/enter nest/sleep"

Part - Scoring

Table of Tasks Achieved 
Points	Citation	Turn Stamp
1	"being adorable"	-1
1	"decorating your nest"	-1
3	"satisfying your hunger"	-1
3	"satisfying your thirst"	-1
2	"drying the mitten"	-1
1	"...without trying to burn down the house"	-1
1	"adding the mitten to the nest"	-1
1	"adding the garland to the nest"	-1
1	"disposing of the cat"	-1
1	"...without being unnecessarily destructive"	-1

To record (T - text) as achieved: 
	choose row with a citation of T in the Table of Tasks Achieved; 
	if turn stamp entry is less than 0:
		now the turn stamp entry is the turn count;
		increase the score by the points entry.

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