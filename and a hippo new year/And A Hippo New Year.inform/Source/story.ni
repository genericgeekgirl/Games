"And A Hippo New Year" by "Adri ('Erin Gigglecreek')"

The story creation year is 2012.
The release number is 2.
The story headline is "an interactive holiday tale".
The story genre is "fantasy".
The story description is "'[story title]' was created for Yuletide 2012, an annual fanfiction exchange. It is based in the world of the House Hippo, a PSA by the Concerned Children's Advertisers.".

Part - Basic Setup
 
Release along with cover art, an interpreter and a "Genericgeekgirl" website.

Chapter - Extensions

Include Hidden Items by Krister Fundin.
Include Conversational Defaults by Eric Eve.
Include Conversation Responses by Eric Eve.
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
Understand "walkthrough" as asking for help.

When play begins:
choose row 1 in the Table of Basic Help Options;
change title entry to "About '[story title]'";
change description entry to "[story description][paragraph break]The author can be contacted at <genericgeekgirl@gmail.com>.";
choose row 2 in the Table of Basic Help Options;
change title entry to "How to Play".

Table of Basic Help Options (continued)
title	subtable	description	toggle
"Hints"	--	"There will be hints in the next release. For now, try taking a peek at the WALKTHROUGH."
"Walkthrough"	--	"[walkthrough]"
"Credits"	--	"[credits]"

to say credits: say "Thanks so much to my beta testers, who were happy to provide feedback on incredibly short notice: Jacqueline A. Lott, Matthew Miller, Ryan Spicer, Scott McCasland and Zach Samuels. Thanks also to my additional testers for the second release: Andrew Dolce, Maxim Mendelson and Z Goddard.[paragraph break]The house hippo was created by the Concerned Children's Advertisers, and appears here without permission."

to say walkthrough: say "This walkthrough will allow you to complete the game, but it will not result in a perfect score.[paragraph break]push presents[line break]up[line break]eat cookie[line break]push milk[line break]drink puddle[line break]out[line break]se[line break]take mitten[line break]nw[line break]put mitten on lights[line break]take garland[line break]se[line break]drop garland on nest[line break]nw[line break]take mitten[line break]se[line break]drop mitten on nest[line break]enter nest[line break]sleep"

Chapter - Hints

Understand the command "hint" as something new.
Understand "hint" or "hints" and "now what" and "what now" as asking for a hint. Asking for a hint is an action out of world.
Carry out asking for a hint: try asking for help.

After waiting for the sixth time:
	say "[as the parser]There is a HINT command available, if you need it.[as normal]"

Table of Stuckness Advice (continued)
title	subtable	description	toggle
"Try hints"	--	"If you're still stuck after your best efforts, you can ask for a HINT. There is also a WALKTHROUGH available."

Chapter - Parsing Commands

When play begins:
now corrections enabled is false.

To say as the parser: say bold type.
To say as normal: say roman type.

Understand "* [text]" as a mistake ("Noted.").

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

After reading a command:
remove stray punctuation.

Understand "take all" and "take everything" as a mistake ("You can only carry one thing at a time.")

To decide what action-name is the action-to-be: (- action_to_be -).
Rule for printing a parser error when the latest parser error is the can't use multiple objects error:
	if the action-to-be is the examining action:    
		say "There is just so much to look at, you can't take it all in at once!" instead;
	otherwise:    
		say "One at a time! You are only a tiny hippo."

Chapter - Other Setup

Maximum score is 15.
Use American dialect, full-length room descriptions, and the serial comma.

When play begins:
say "[italic type][']Twas the night before Christmas when all through the house, the only creature stirring was a hippo the size of a mouse.[roman type][paragraph break]This year you're going to stay awake long enough to see Santa Claws. You have set up a temporary nest in the living room closet, and it just needs a few final touches. You intend to venture out to have a snack and look at the tree one more time, and then you will go hide in the closet and wait."

Part - Environment

The Living Room is a room. "[tree description]. [table description]. The closet is to the southeast."

To say tree description:
say "There is a tree here, decorated with ornaments and surrounded by piles of presents"

To say table description:
say "There is also a table[if presents seen is 0] off to one side[otherwise if the presents are open], next to which is a neat stack of presents, forming a staircase to the top[otherwise], about the same height as the stack of presents under the tree[end if]".

The Table-Top is a room. The printed name is "High above the Living Room". "You are standing on top of the table."

The closet is southeast of the Living Room and northwest of the Hippo Shack. It is a open door and scenery. Understand "living room closet" and "home" as closet. "The closet holds winter coats and assorted outdoor toys. Tonight you will be sleeping in there so you can wait for Santa." 

The Hippo Shack is a room. The printed name is "Inside the Closet". "This is the closet where you will be spending the night. It is full of things that you don't need to think about right now."

Instead of going nowhere from the Hippo Shack:
	say "The only way out is back to the northwest."

Instead of exiting from the Hippo Shack:
try going northwest.

Instead of examining up when location is Living Room:
	if the presents are open:
		say "The table is up there. You can reach it by climbing the stack of presents.";
	otherwise:
		say "You peer up at the holiday tree."

Instead of examining down when location is Table-Top:
say "You look down at the floor. It seems very far."

Instead of examining a direction (called the direction looked):
	let the destination be the room-or-door the direction looked from the location;
	if the destination is a room:
		say "[destination] lies in that direction.";
	otherwise if the destination is a door:
		say "The [other side of the destination] lies in that direction.";
	otherwise:
		say "You don't see anything in that direction."

Instead of looking under the tablecloth:
say "You peek under the tablecloth and find the remains of a melted icicle underneath the table.";
move the player to Under-the-Table.
                
Under-the-Table is a room. The printed name is "Underneath the Table". "You are hiding underneath the table. There is a puddle of water here."

[block finding this room through random chance]
instead of going northeast from the Living Room:
try going down.

Instead of exiting from Under-the-Table:
try going southwest.
 
Part - Objects

A thing can be possible food or not possible food. A thing is usually possible food. A door is usually not possible food.

Chapter - Hat

The hat is a wearable hidden thing in the Living Room. The description is "It's the tiniest santa hat. It looks like it would fit you." Understand "santa hat" as hat. The printed name is "santa hat".

Instead of looking under the tree when the presents are closed:
say "You don't see much with all the presents in the way."

Instead of looking under tree when the presents are open and the hat is hidden:
say "You find a tiny santa hat. It must have fallen off one of the ornaments.";
reveal the hat.

Before wearing something:
move the noun to the player.

Report wearing the hat:
	say "You slip the hat on over your ears. You look adorable!" instead.

Before wearing the hat for the first time:
record "being adorable" as achieved.

Before wearing something that is not wearable:
Say "You're not quite sure how to wear that." instead.

Chapter - Tree

The Christmas tree is scenery in the Living Room. The description is "It's a rather lovely Christmas tree, covered with rainbow lights, a silver garland and colorful, shiny ornaments. There is a collection of presents underneath the tree." Understand "tree" as Christmas tree.

Instead of smelling the tree:
  say "The tree smells strongly of plastic, sprayed with something vaguely pine-scented."

Instead of climbing the tree:
	say "You briefly eye the tree, wondering how long it would take to climb it. Maybe you'll try it tomorrow."

Instead of taking the tree:
	if the hat is worn by the player:
		say "You may be wearing a Santa hat, but the Grinch you are not.";
	otherwise:
		say "What on earth are you going to do with that?"

Chapter - Ornaments and Garland

The ornaments are scenery in the Living Room. They are plural-named. Understand "ornament" as ornaments. The description is "The tree is adorned with colorful, mismatched ornaments, many of which have been made by the small humans of the house."

Instead of taking ornaments the first time:
	say "You tug on a dangling bit of garland with your teeth. A piece breaks off, about as long as you are.";
	reveal the garland;
	try silently taking the garland.
	
Instead of taking ornaments:
	say "There are no more ornaments within reach."

Instead of counting the ornaments:
	say "There are 69,105 ornaments on the tree.";

The garland-strand is scenery in the Living Room. Understand "garland" as garland-strand when garland is not in the location. The description is "The tree has been wrapped in a long strand of puffy blue garland. It looks very soft." The printed name is "garland".

Instead of climbing the garland-strand:
say "You catch a bit of garland in your mouth and dangle in the air for a moment. You're not sure how to proceed, so you let go, dropping gently back down to the floor."

Instead of touching the garland-strand:
say "The garland is extremely soft to the touch."

Instead of touching the garland:
say "The garland is extremely soft to the touch."

Instead of taking garland-strand:
try taking ornaments.

The garland is hidden in the Living Room. It is wearable. The description is "It's a short length of blue garland, very soft to the touch.". The garland is pushable between rooms. The printed name is "piece of garland".

Report wearing the garland:
say "You wrap the length of garland around your neck."
        
The tinsel-strand is scenery in the Living Room. Understand "tinsel" as tinsel-strand when tinsel is not in the location. The description is "The tree has been decorated with strands of silver tinsel." The printed name is "tinsel".

Instead of taking the tinsel-strand the first time:
say "You pull a clump of tinsel off the tree. It will make a very festive addition to your nest.";
reveal the tinsel;
try silently taking the tinsel.

Instead of taking the tinsel-strand:
say "You have enough tinsel for your needs."

The tinsel is hidden in the Living Room. It is wearable. The description is "It's a clump of silver tinsel. It's not very soft, but the way it shimmers in the light is rather lovely." The printed name is "clump of tinsel".

Instead of wearing the tinsel:
say "You try to drape a couple strands of tinsel across your body, but they fall to the ground as you walk.";
try silently dropping the tinsel.

Chapter - Presents

presents seen is a number that varies. presents seen is usually 0.

After examining the presents for the first time:
now presents seen is 1.

Before doing anything except examining or entering the presents when presents seen is 0:
now presents seen is 1.

A staircase is a kind of door. It is scenery. A staircase is usually open. A staircase is seldom openable.

Instead of climbing the presents:
 now presents seen is 1;
	try entering the presents.

The presents are a staircase. It is above the Living Room and below the Table-Top. The presents are closed. The printed name is "pile of presents". Understand "package" and "packages" and "present" and "pile" and "stack" and "gift" and "gifts" and "tall pile" and "tall stack" and "pile of presents" and "tall pile of presents" as presents. The description is "[if presents seen is 0]There are piles of presents surrounding the tree. There is one rather tall pile of presents in a neat stack.[otherwise if the presents are closed]A pile of presents stacked neatly under the tree, with the largest package on the bottom and the smallest at the top.[otherwise]A pile of presents in a neat stack, forming a staircase to the top of the table."

To say color: say "[one of]blue[or]red[or]green[or]yellow[in random order]"

The largest present is scenery in the Living Room. Understand "smallest present" and "smallest" and "prettiest present" and "prettiest" and "biggest" and "biggest present" and "largest package" and "smallest package" and "prettiest package" as largest present. The description is "This present is wrapped in shiny [color] paper, tied with a big [color] bow."

Instead of pulling the presents:
say "You grip the lowest package in your teeth and give it a tug. The entire stack wobbles. Maybe you would have more luck if you pushed from the other side."

Instead of pushing the presents when the presents are closed:
say "You push the bottom package with your head, being careful to prevent the pile from falling over. It's hard work, but eventually you move the entire stack over to the table.";
Now the presents are open;
now the player is hungry.

Understand "push [presents] to table" as pushing when the presents are closed.

Understand "push [presents] to tree" or "push [presents] back" as pushing when the presents are open.

Instead of pushing the presents when the presents are open:
say "You decide to leave the presents where they are."

Before going up from the Living Room when presents seen is 0:
	try climbing the tree instead.

plate seen is a number that varies. plate seen is usually 0.

Instead of entering the presents when the presents are closed:
	say "You climb to the top of the presents. You seem to be about level with the table, on which stands a glass of milk and a plate of cookies. The pile starts to wobble, and you quickly make your way back down to the...";	
	now plate seen is 1;
	try looking.
	
Before entering the presents when the presents are open:
	say "You scramble up the pile of presents onto the table top.".

Before going down from the Table-Top:
	if the cat is a threat:
		if the location of the cat is not the Living Room:
			move the cat to the Living Room;
			say "As you start back down the stack of presents, the cat of the house pads into the room, the bell on its collar jingling softly. It immediately takes notice of you. You freeze in fear." instead;
		otherwise:
			say "You will need to find a way to distract the cat if you want to get down safely." instead;
	otherwise:
		say "You carefully climb back down the stack of presents."

After deciding the scope of the player while the location of the player is Under-the-Table:
place tablecloth in scope;
place table in scope.

Instead of examining the table when the location is Under-the-Table:
say "You gaze up at the bottom of the table, but it doesn't seem very interesting."

Instead of examining the table when the location is Table-Top:
try looking.

Understand "climb [up]" or "climb [down]" as going.

After deciding the scope of the player while the cat is in the Living Room:
	place cat in scope.
	
After deciding the scope of the player while the location of the player is the Table-Top:
	place tree in scope;
	place presents in scope;
        place tablecloth in scope;
        place table in scope.

Flying is an action applying to nothing.
Understand "fly" as flying.
Report flying: say "House hippos, like pigs, cannot fly."

test flying with "se/get mitten/out/put mitten on wire/z/z/z/z/z/z/z/z/wear mitten/fly"

Understand "jump off table" and "jump from table" as flying when the location is Table-Top.

Instead of flying when the mitten is worn by the player:
say "A mitten does not a super hippo make." instead.

Instead of pushing when the location is Table-Top:
	say "You push [the noun] off the table. It falls to the floor below.";
	move the noun to the Living Room.

Instead of pushing the cookie when the location is Table-Top:
	say "You push the cookie off the table. It falls to the floor below. It bounces twice, but does not shatter.";
	move the noun to the Living Room.
	
Instead of opening the presents:
try unwrapping.

The ribbon is scenery in the Living Room. Understand "bow" as ribbon. The description is "It's a length of shiny [color] ribbon, tied into a fancy bow."

Instead of taking the ribbon:
try unwrapping the presents.

Unwrapping is an action applying to one thing.
Understand "unwrap [presents]" as unwrapping.
Carry out unwrapping the presents:
say "You pick out the prettiest present in the pile and tug on the ribbon with your teeth. The ribbon slips ever so slightly, and you feel a sudden burst of shame."

Knocking over is an action applying to one thing.
Understand "knock over [something]" as knocking over.

Instead of knocking over something when the noun is not the presents:
try pushing the noun.

Carry out knocking over the presents:
	say "You rear up with the intention of pushing over the pile of presents, and then you stop. They're so perfectly stacked, and it would be a shame to mess it up."

Stacking is an action applying to one thing.
Understand "stack [presents]" as stacking.

Carry out stacking the presents:
say "The presents are already in a neat stack."
        
Instead of taking the presents:
say "[one of]Those don't appear to be for you. Maybe Santa will bring you something nice if you're good.[or]Stop it. What would Santa think?[or]Naughty hippos don't receive presents.[or]Just leave the presents alone, ok? Maybe you can PUSH or PULL them instead.[stopping]"

Chapter - Tablecloth and Table

The tablecloth is an open unopenable door and scenery in the Living Room. It is northeast of the Living Room and southwest of Under-the-Table. The description is "The tablecloth is a lovely shade of blue, and it reaches down nearly to the floor." Understand "table cloth" and "cloth" as tablecloth.

Instead of climbing the tablecloth:
say "You attempt to scale the tablecloth, gripping tightly with your teeth and feet, but it's not an easy task. After just a few inches, you let go and drop back down to the floor. Ouch!"

Instead of taking the tablecloth:
say "You tug on the tablecloth with your teeth, but you can't quite pull it off the table."

The table is scenery in the Living Room. The printed name is "table". The description is "There is a table off to one side, draped in a bright blue tablecloth.[if presents seen is 1] [table-top description].[end if]".

To say table-top description:
say "[if presents are open]There is a stack of presents leading up to the top[otherwise]It appears to be about the same height as the stack of presents under the tree[end if][if plate seen is 1], and you recall seeing cookies and milk at the top[end if]"

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

An edible thing is not possible food.

The plate is a supporter in the Table-Top. The printed name is "plate of cookies". Understand "plate of cookies" and "cookies" as the plate. Rule for printing the name of the plate: say "plate of cookies"; omit contents in listing. The plate is not possible food. The description is "It's a plate of chocolate chip cookies. They are probably not homemade. Oh well."

Instead of pushing the plate:
say "You give the plate a little nudge and it slides across the tablecloth."

Understand "cookie" as plate when the location is the Table-Top and the location of the cookie is not the Table-Top.

Instead of taking the plate:
	say "Don't be greedy! You should save the rest of the cookies for Santa."

Instead of eating the plate:
try taking the plate.
        
The cookie is an edible thing on the plate. The description is "It's a chocolate chip cookie, almost twice your size.". It is pushable between rooms. The printed name is "[if the player is hungry]cookie[otherwise]partially-eaten cookie[end if]"

Instead of taking the cookie:
	say "That cookie is larger than you are. Maybe you can roll it."
	
Understand "roll [cookie]" as pushing.

Instead of eating the cookie:
	if the player is hungry:
		say "You nibble hungrily at the cookie.";
		now the description of the cookie is "This cookie that has been nibbled around the edges. Most of the chocolate chips are missing.";
		now the player is not hungry;
		record "satisfying your hunger" as achieved;
	otherwise:	
		say "You're no longer hungry."

Chapter - Milk

The milk is in the Table-Top. The printed name is "glass of milk". The description is "It's a glass of milk, presumably set out for Santa Claus.". It is edible. Understand "glass" and "glass of milk" and "cup" as milk.

Instead of eating or drinking the milk:
	say "Little known fact: house hippos are lactose intolerant."

Instead of taking the milk:
	say "The glass is too big. You couldn't possibly take it without knocking it over."

Instead of pushing the milk when the location is Table-Top:
	say "The glass of milk goes crashing to the floor. A light goes on in the hallway, and you quickly dash back down the pile of presents and hide behind a table leg.[paragraph break]";
	say "One of the big humans of the house wanders sleepily into the room[if the location of the cat is the living room]. The cat looks up guiltily and slinks off towards the bedroom[end if]. She cleans up the milk and broken glass, [if the location of the cat is not the living room]mutters something about[otherwise]scolds[end if] the cat and goes back to bed.";
	record "disposing of the cat" as achieved;
	if the location of the cat is the living room:
		record "...without being unnecessarily destructive" as achieved;
	now the cat is not a threat;
	remove the cat from play;
	remove the milk from play;
	move the player to the Under-the-Table.

Chapter - Nest

The nest is an enterable supporter in the Hippo Shack. It is fixed in place. The indefinite article is "your". The description is "It is a warm, comfortable mass of dryer lint and bits of string. It's not as nice as your nest in the bedroom closet, but it will do for tonight.[if the mitten is not on the nest or the garland is not on the nest] It's still looking a little sparse, though. Perhaps you could find just one or two more items before you settle in for the night.[end if]"

Instead of taking the nest:
  say "You quite like it where it is."

Before dropping something when the location is the Hippo Shack for the first time:
say "[as the parser]If you meant to drop that ON the nest, you need to say so.[as normal]"

Instead of inserting something into the nest:
	try putting the noun on the nest.

Instead of putting the cookie on the nest:
say "You put [the cookie] onto the nest.";
  move the cookie to the nest.
        
Understand "place [something] on [nest]"  and "drop [something] in [nest]" and "drop [something] on [nest]" as putting it on.

Before putting the tinsel on the nest for the first time:
record "decorating your nest" as achieved.

Before putting the mitten on the nest when the mitten is dry for the first time:
record "adding the mitten to the nest" as achieved.

Instead of putting the mitten on the nest when the mitten is wet:
say "It's all wet! Maybe you can find a way to dry it first."

Before putting the garland on the nest for the first time:
record "adding the garland to the nest" as achieved.
	
Chapter - Mitten

The mitten is in the Hippo Shack. The mitten is wearable. The mitten can be wet or dry. The mitten is wet. The description is "It's a small mitten. [if the mitten is dry]It looks very warm and soft.[otherwise if the mitten is part of the lights]It is still slightly damp.[otherwise]It is sopping wet, and the mate is nowhere to be seen." It is pushable between rooms.

Instead of putting the mitten on the lights when the mitten is wet:
	say "You lay the mitten across the string of lights where it nearly touches the floor.";
	now the mitten is part of the lights;
	the mitten burns in three turns from now.

Instead of drinking the mitten when the mitten is wet:
say "Surely you can find a more sanitary source of water."

Understand "suck [mitten]" and "wring [mitten]" and "squeeze [mitten]" as drinking.

Instead of touching the mitten:
say "The mitten is very soft."

Instead of touching the mitten when the mitten is wet:
say "The mitten is wet and cold."

At the time when the mitten burns: 
	say "The mitten starts to smoke. You'd better go get it before you burn down the house.";
	now the mitten is dry;
        the house burns in three turns from now.

Instead of putting something on the lights:
say "You try to lay [the noun] across the wire, but it slides right off.";
try silently dropping the noun.
        
At the time when the house burns:
	if the mitten is part of the lights:
		say "If you burn down the house, you will be forever on Santa's naughty list.";
		if the location of the player is the Living Room:
			try taking the mitten;
		otherwise:
			badness happens in 10 turns from now.
                
At the time when badness happens:
	if the mitten is part of the lights:
		say "Shortly before the mitten can burst into flames--and ruin Christmas FOREVER--it miraculously slips off the wire onto the floor.";
		record "drying the mitten" as achieved;
		move the mitten to the living room;
                        
Instead of taking the mitten when the mitten is part of the lights:
	if the mitten is dry:
		say "You quickly retrieve the mitten. It is now dry, and warm to the touch.";
		move the mitten to the location;
		record "drying the mitten" as achieved;
		record "...without trying to burn down the house" as achieved;
		try silently taking the mitten;
	otherwise:
		say "The mitten isn't dry yet."
	
After taking the mitten when the mitten is wet:
	say "You pick up the wet mitten. Ick. Soggy mittens don't make good bedding material."

Instead of wearing the mitten when the mitten is wet:
say "It's cold and wet. You might freeze to death."

Report wearing the mitten:
say "You drape the mitten around your back like a cape." instead.

Chapter - Lights

The lights are scenery in the Living Room. It is plural-named. The printed name is "Christmas lights". The description is "The tree is covered with tiny rainbow lights. The string of lights trails down from the lower branches to the power outlet. The wire is emitting quite a bit of heat.[if the mitten is part of the lights] There is a mitten draped over the lights." Understand "wire" and "string of lights" as lights.

The outlet is scenery in the Living Room. The description is "It's a typical power outlet. The Christmas lights are plugged into it."

Instead of tasting the outlet:
say "House hippos are pretty hardy, but you would never survive the electrical shock."

Instead of touching the lights:
say "Be careful! The lights are very hot."

Understand "unplug [lights]" as taking.

Instead of taking the lights:
say "If you do that, the pretty lights will go out!"

Instead of climbing the lights:
say "Those lights are rather hot. You might get hurt."

Chapter - Puddle

The puddle is scenery in Under-the-Table. The description is "One of the small humans must have brought in an icicle and left it under the table. It has melted into a puddle of cold water." The printed name is "puddle of water." Understand "icicle" and "water" as puddle.

Instead of drinking the puddle for the first time:
	say "You lap at the cold water and feel instantly refreshed.";
	now the player is not thirsty;
	record "satisfying your thirst" as achieved.

Instead of drinking the puddle:
  say "You lap at the puddle of cold water."
        
Instead of taking the puddle:
	say "You try to scoop up a handful of water. It doesn't work very well."
	
Swimming is an action applying to nothing.
Understand "swim" and "go swimming" and "swim in puddle" as swimming.
Carry out swimming: say "There is nothing to swim in."

Instead of swimming when the location is Under-the-Table:
	say "The puddle is not deep enough to swim in, but you splash around for a bit."

Splashing is an action applying to nothing.
Understand "splash" and "splash in puddle" and "bathe" and "bathe in puddle" as splashing.
Carry out splashing: say "There is nothing to splash in."

Instead of splashing when the location is Under-the-Table:
say "You splash around in the puddle. What fun!"

Part - Player

The description of the player is "You are a very fine specimen of [italic type]Hippopotamus domestica[roman type].[if the hat is worn by the player] You are wearing a tiny red santa hat."

A person can be hungry or not hungry. A person is usually not hungry.
A person can be thirsty or not thirsty. A person is usually thirsty.

A person is not possible food.

Instead of tasting the player:
say "House hippos are friends, not food."

Chapter - Hunger

To decide whether (N - a number) is divisible by (D - a number):
	if the remainder after dividing N by D is 0:
		yes;
	no.

Every turn when the player is hungry and the turn count is divisible by 3:
		choose a random row in the Table of Hunger Complaints; 
    		say "[hunger entry][paragraph break]".

Table of Hunger Complaints 
hunger 
"Your tummy makes a rumbling sound." 
"You are a hungry, hungry hippo." 
"You would give anything right now for a pile of potato chip crumbs."
"Visions of raisins dance in your head."
"You find yourself staring at [the random visible thing that is not not possible food] and wondering how [if the noun is plural-named]they[otherwise]it[end if] would taste."

Instead of eating something that is not edible:
try tasting the noun.

Chapter - Thirst

Every turn when the player is thirsty and the turn count is divisible by 11:
say "You are feeling very thirsty."

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

Part - Cat

The cat is an animal. The description is "It's an orange tabby cat. It is wearing a thin nylon collar with a small gold bell that jingles when it walks." An animal is either a threat or not a threat. An animal is usually a threat.

Instead of taking something when noun is carried by cat:
	say "That doesn't seem like a very good idea."

Every turn when the location of the cat is the Living Room:
choose a random row in the Table of Cat Threats;
say "[response entry][paragraph break]".

Table of Cat Threats
response
"The cat hisses at you."

Part - Actions

Chapter - General

Dancing is an action applying to nothing.
Understand "dance" as dancing.
Carry out dancing:
	say "You don a pink tutu and the tiniest pair of ballet slippers and pirouette around the room."

Section - Sleeping

Instead of sleeping:
	say "You can't go to sleep yet! [run paragraph on]";
	if the player is hungry:
		say "Besides, you're too hungry to sleep.";
	else if the player is thirsty:
		say "Besides, you're too thirsty to sleep.";
	else if the player is not on the nest:
		say "In any case, you shouldn't sleep out in the open like that. Your nest isn't far away.";
	else if the mitten is not on the nest or the garland is not on the nest:
		say "Anyway, you haven't finished making your nest.";
		
Instead of sleeping when the player is exhausted:
		say "You close your eyes, just for a moment... When you awaken, it is daytime and there is a tiny wrapped present next to your nest. Oh well. Maybe next year!";
		end the story finally saying "Happy Holidays!"
		
Understand "close eyes" or "take nap" as sleeping.

Staying awake is an action applying to nothing.
Understand "stay awake" and "do not sleep" and "keep eyes open" and "stop yawning" as staying awake.

Carry out staying awake: say "Easier said than done!"

Instead of staying awake when the player is exhausted: say "But it's so late, and you've been a very busy hippo tonight."

Section - Silliness

Being nice is an action applying to nothing.
Understand "be nice" and "be good" as being nice.
Carry out being nice: say "You were a very good hippo this year! You have nothing to worry about."

Being naughty is an action applying to nothing.
Understand "be naughty" and "be bad" as being naughty.
Carry out being naughty: say "You've been very good this year. Don't ruin it now!"

Section - Magic Words

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Carry out casting xyzzy:
say "[italic type]I want a hippopotamus for Christmas.[line break]Only a hippopotamus will do[roman type]."

Casting plugh is an action applying to nothing.
Understand "plugh" or "say plugh" as casting plugh.
Understand "plover" or "say plover" as casting plugh.
Carry out casting plugh: say "Gesundheit!"
	
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

Instead of tasting puddle:
try drinking the puddle.

Section - Interacting with Animate Objects

Understand "pet [something]" as touching.

Instead of tasting the cat:
say "You're a vegetarian. Unlike the cat..."

Instead of touching or kissing the cat:
	say "That seems unwise. Maybe you should keep your distance."

Instead of kissing or touching the player:
say "You don't bend that way."

Instead of attacking a person:
	if the noun is the player:
		say "Aww, there's no need for that. You've been a very good hippo this year.";
	otherwise:
		try growling at the noun.

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
	
Yawning is an action applying to nothing.
Understand "yawn" as yawning.
Carry out yawning:
	say "You yawn loudly."

Instead of singing:
	say "You bellow out 'mini cheddars!' a few times."
	
Instead of swearing mildly:
        try swearing obscenely.

Instead of swearing obscenely:
	say "Real hippos do not use such language."

Section - Offensive

Understand the command "shout" as something new.
Shouting is an action applying to nothing.
Understand "shout" and "scream" and "bellow" and "roar" as shouting.
Carry out shouting:
	say "You let out a loud roar. HIPPO!"
	
Growling at is an action applying to one thing.
Understand "growl at [something]" as growling at.
Carry out growling at:
say "You growl menacingly at [the noun].".

Before growling at the cat:
try growling instead.

Instead of growling when the cat is in the Living Room:
say "You growl menacingly at the cat. The cat hisses at you, arching its back."

After shouting when the cat is in the Living Room:
	say "The cat cringes at the sound."

Growling is an action applying to nothing.
Understand "growl" as growling.
Carry out growling:
	say "You growl menacingly at nothing in particular. You feel a little silly."

Hissing is an action applying to nothing.
Understand "hiss" and "hiss back" and "hiss at cat" as hissing.
Carry out hissing:
	say "You are a house hippo. House hippos do not hiss."
	
Razzing is an action applying to nothing.
Understand "stick out tongue" and "stick tongue out" as razzing.
Carry out razzing:
	say "You stick your tongue out at [the random visible thing]. The insult goes unnoticed."
	
Instead of razzing when the cat is in the Living Room:
	say "You stick your tongue out at the cat. This only serves to make it angrier."
	
Chapter - Conversation

default response for cat:
	say "If the cat can understand you, it does not deign to respond."

default response for player:
	say "You mumble incoherently to yourself. It sounds suspiciously like 'hippo hippo hippo.'"

Does the player mean saying hello to the player:
it is likely.

Mumbling is an action applying to nothing.
Understand "hippo" and "mumble" as mumbling.
Carry out mumbling:
say "Hippo. Hippo. Hippo."

Before saying hello to someone when the greeting type is explicit:
	try quizzing the noun about the noun instead.

Before saying goodbye to someone when the greeting type is explicit:
	try quizzing the noun about the noun instead.

After saying hello to something that is not a person (this is the new can't greet inanimate objects rule):
say "[The noun] do[if the noun is not plural-named and the noun is not the player]es[end if] not respond. Because [if the noun is not plural-named]it is [a noun][otherwise]they are [noun][end if]."

Part - End Game

A person can be tired or exhausted. A person is usually tired.

Every turn when the player is tired:
	if the player is not hungry and the player is not thirsty and the mitten is dry and the mitten is on the nest and the garland is on the nest:
		now the player is exhausted;
		the player sleeps in six turns from now.
			
At the time when the player sleeps: 
	try sleeping.

Every turn when the player is exhausted:
		choose a random row in the Table of Sleepiness; 
    		say "[sleep entry][paragraph break]".

Table of Sleepiness 
sleep
"You are struggling to keep your eyes open."
"You yawn loudly. It is getting late."
"You are feeling very tired. Maybe you could just take a quick nap."

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