"Discover the World" by Adri.

The story creation year is 2014.
The release number is 2.
The story headline is "An introduction to the wonderful world of Ur".
The story genre is "fantasy".
The story description is "'Discover the World' is a lighthearted introduction to the world of Ur. The entire world and everything in it, including yourself, has been imagined by the Eleven Giants."

Release along with cover art and an interpreter.

Understand "start" as restarting the game.

Use MAX_CLASSES of 500.

Volume - Extensions

Include Save and Restore by Helga.
Include Audio by Helga.
Include Tutorial Mode by Helga.
Include Animals by Helga.
Include Food by Helga.
Include Rocks by Helga.
Include Trees by Helga.
Include Crops by Helga.
Include World by Helga.
Include Graphics by Helga.
Include Giants by Helga.

Include Basic Help Menu by Emily Short.
Include Basic Screen Effects by Emily Short.
Include Case Management by Emily Short.
Include Commonly Unimplemented by Aaron Reed.
Include Considerate Holdall by Jon Ingold.
Include Default Messages by David Fisher.
Include Dynamic Objects by Jesse McGrew.
Include Extended Grammar by Aaron Reed.
Include Flexible Windows by Jon Ingold.
[Include Glulx Drawing Commands by Erik Temple.]
Include Glulx Image Centering by Emily Short.
[Include Inline Hyperlinks by Erik Temple.]
Include Multiple Sounds by Massimo Stella.
Include Plurality by Emily Short.
Include Poor Man's Mistype by Aaron Reed.
Include Punctuation Removal by Emily Short.
Include Glulx Status Window Control by Erik Temple.
Include Glulx Input Loops by Erik Temple.

Include Windows by Helga.
Include Actions by Helga.

Volume - Scoring

The maximum score is 100.

The new notify score changes rule is listed instead of the notify score changes rule in the turn sequence rulebook.

This is the new notify score changes rule:
	if the score is not the last notified score:
		let diff be the score minus the last notified score;
		say "[italic type]+[diff] Imagination[roman type][paragraph break]";
		if the last notified score is 0:
			say "[as the parser]You received some imagination! Imagination is your 'score' in this game. Your imagination will be displayed in the status bar, but you can also type IMG at any time to view your progress.[as normal]";
			say "[paragraph break][as the parser]Before we continue, there are some features you should know about. You can turn off the graphics at any time by typing PANELS OFF. You can turn off the sound by typing SOUND OFF. For additional help, simply type HELP.[paragraph break]The game begins with a short tutorial. If you've played interactive fiction before, feel free to skip this by typing IMAGINE again.[as normal][paragraph break]";
		now the last notified score is the score.

Volume - Block Undo

Use undo prevention.

Table of custom library messages (continued)
Message Id	Message Text
LibMsg <undo forbidden>	"'[story title]' is a game of possibilities. You cannot lose. You also cannot undo.[line break]"

When play begins:
choose row with a final response rule of immediately undo rule in the Table of Final Question Options;
delete the final question wording entry.

Volume - Carrying Capacity

Table of custom library messages (continued)
Message Id	Message Text
LibMsg <use holdall to avoid exceeding carrying capacity>	"[run paragraph on]"

The carrying capacity of the player is 4.

The bag is an open, openable and wearable container. The bag is a player's holdall. Understand "sack" as bag.
The description is "An honest, unpretentious burlap sack. You can put things in it."
The bag is not-donatable.

After examining the player for the first time:
now the bag is in the location.

Rule for deciding whether all includes something enclosed by the bag while taking: it does not.

Before dropping something:
	if the noun is enclosed by the bag:
		now the player carries the noun.
                  
Volume - Windows

When play begins:
open up the banner-window;
change current location image to the figure banner;
follow the window-drawing rules for the banner-window;
depict figure blank.

Volume - Title Page

to say choices: say "[bold type][paragraph break]Start from the beginning : S[line break]Continue a story in progress : R[line break]Quit : Q[line break][roman type]";

to say quotation-one: say "[second custom style]For a really long time, eleven Giants walked around. They thought of funny things until their thinking came alive.[paragraph break]And that's what this game is. You're inside their thoughts. Go and make them bigger, and we'll play for a long while.[roman type]";

Last when play begins:
	say "[quotation-one]";
	say "[choices]";
	wait for any key;
	if keystroke is "q" or keystroke is "Q":
		follow the immediately quit rule;
	otherwise if keystroke is "s" or keystroke is "S":
		delete file of save data;
		clear the screen;
		make no decision;
	otherwise: [restore game, regardless of what was actually pressed]
		clear the screen;
		if the file of save data exists:
			read file of save data into memory.


Volume - End Game

When play ends:
shut down the banner-window;
shut down the side-window;
open up the banner-window;
change current location image to the figure star;
follow the window-drawing rules for the banner-window.

Volume - Help Menus

[TODO!]

Understand "credits" as asking for help.
Understand "walkthrough" as asking for help.

When play begins:
choose row 1 in the Table of Basic Help Options;
change title entry to "About '[story title]'";
change description entry to "[story description][paragraph break]The author can be contacted at <adri@genericgeekgirl.com>.";
choose row 2 in the Table of Basic Help Options;
change title entry to "How to Play".
  
Table of Basic Help Options (continued)
title	subtable	description	toggle
"Hints"	--	"[hints]"
"Credits"	--	"[credits]"

To say hints: say "If you need help, you can STUDY an item to find out more about it.[paragraph break]If you're having trouble with disambiguation, try putting 'basic' before the word."

to say credits: say "'Discover a World' is the demo/tutorial version of 'Imagine a World', which is a text-based prequel to Glitch. Glitch was a wonderful browser-based MMO that ran from September 2011 to December 2012. In December 2013, Tiny Speck released the assets from the original game under a CC0 license. Sound effects and graphics were produced by Tiny Speck and modified as needed. Background music is 'Carefree' by Kevin MacLeod. The player's avatar ('Alexandra') belongs to the author."

Volume - Smarter Parser

when play begins:
now corrections enabled is false;
now novice mode enabled is true.

The default noun example is "spice plant".

The default person example is "Gwendolyn".

Table of Smarter Parser Messages (continued)
rule name	message
where can I go rule	"[navigation]."
signs of confusion rule	"[confusion]"
asking who are you rule	"[parser]"
unnecessary movement rule	"[investigate]"
asking who am i rule	"[player]"
usually no clothing rule	"[as the parser]You do not need to refer to articles of clothing.[as normal]"

To say investigate:
say "[as the parser]If you can see an object, you can usually just interact with it directly without worrying about your position[if player is enclosed by something] (although since you're in or on something, you may need to type EXIT first)[end if]. Try a command like EXAMINE [get noun example] for a closer look at something or LOOK to show the description of this location again.[as normal]"

To say player:
say "[as the parser]You are a Glitch named Alexandra. You should phrase your input as commands, not questions.[as normal]"

To say parser:
say "[as the parser]I am the parser. I translate what you type into the actions Alexandra takes in Ur. Use imperative commands like LOOK and EXAMINE [get noun example] to advance the story. To travel to another street, simply type the name of the street. (TIP: The first word of the location will usually be enough.) You may type HELP for more information.[as normal]"

To say confusion:
say "[as the parser]Try typing LOOK for a description of your surroundings. Some of the objects mentioned in the description might be worth a closer look with a command like EXAMINE [get noun example]. You can also TAKE some things. [if side-window is g-present]The list of items you are already carrying is in the panel to the right, and a list of adjacent streets (if any) is in the status line[otherwise] You can type INVENTORY to see the list of items you are already carrying[end if].[as normal]"

The failed communication attempts rule is not listed in the Smarter Parser rulebook.

Volume - Inventory

[What the fuck?]

[

After taking inventory:
	let x be 1;
	let y be 1;
	let timesx be 1;
	let timesy be 1;
	repeat with item running through things enclosed by the player:
		if x is not 1, now timesx is 50;
		if x is not y, now timesy is 50;        
		let picture be the item illustration of item;
		draw the image item illustration of item in the graphics-window at coordinates timesx times x plus 5 by timesy times y plus 5 with dimensions 50 by 50;
		increase x by 1;
		if x is 4:
			now x is 1;
			now timesx is 1;
			increase y by 1.
                        		
]

Before taking inventory for the first time:
say "[as the parser]There are four styles of inventory: tall, wide, curt, and minimal. To switch among these, type INVENTORY, followed by the style. For example: INVENTORY WIDE.[as normal]"

Inventory listing style is a kind of value. The inventory listing styles are tall, wide, curt, and minimal. Current inventory listing style is an inventory listing style that varies.

Understand "inventory [inventory listing style]" as requesting styled inventory. Requesting styled inventory is an action applying to an inventory listing style. It is an action out of world.

Carry out requesting styled inventory:
now current inventory listing style is the inventory listing style understood.

Report requesting styled inventory:
say "Inventory listing is now set to [current inventory listing style].";
try taking inventory.

Instead of taking inventory when current inventory listing style is tall:
if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
say "You are carrying: [line break]";
list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation.

Instead of taking inventory when current inventory listing style is wide:
if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
say "You are carrying ";
list the contents of the player, giving inventory information, as a sentence, including contents;
say "."

Instead of taking inventory when current inventory listing style is curt:
if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
say "You are carrying ";
list the contents of the player, tersely, giving brief inventory information, as a sentence, including contents;
say "."

Instead of taking inventory when current inventory listing style is minimal:
if the number of things enclosed by the player is 0, say "You are empty-handed." instead;
say "You are carrying ";
list the contents of the player, tersely, as a sentence, including contents;
say "."


Volume - Conversation

[TODO]

Understand the commands "ask" and "tell" and "say" and "answer" as something new.

Understand "ask [text]" or "tell [text]" or "answer [text]" or "say [text]" as a mistake ("[talk to instead]").
Instead of asking someone to try doing something: say "[talk to instead][paragraph break]".
Instead of answering someone that something: say "[talk to instead][paragraph break]".

To say talk to instead: say "[as the parser]To communicate with someone, try a command like TALK TO [get person example].[as normal]"

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" and "talk to [something]" as talking to.
Carry out talking to: say "It does not respond. It does not even acknowledge you."

Instead of talking to a tree (called T):
say "[The T] says nothing, but seems to acknowledge you all the same."

Instead of talking to the player:
say "You mumble quietly to yourself."

Volume - Parsing Commands

The blank line replacement is "look around".

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Understand "plugh" or "say plugh" as casting xyzzy.
Understand "plover" or "say plover" as casting xyzzy.

Carry out casting xyzzy:
say "You've won the game! Or not.";
now the player's energy is -10;
pause the game.

To say as the parser: say first custom style;
To say as normal: say roman type.

Understand "* [text]" as a mistake ("Noted.").

Understand the command "q" as something new.
Understand the command "quit" as something new.
Fast quitting is an action out of world.
Understand "q" and "quit" as fast quitting.

Carry out fast quitting:
say "[as the parser]Wait! You were just about to win the game![as normal]";
follow the immediately quit rule.

After reading a command:
let X be indexed text;
let X be the player's command;
replace the text "[']s" in X with "s";
change the text of the player's command to X.

After reading a command:
remove stray punctuation.

Volume - Glulx Text Effects

Table of User Styles (continued)
style name	justification	obliquity	indentation	first-line indentation	boldness	fixed width	relative size	glulx color
special-style-1	left-right-justified	italic-obliquity	0	0	regular-weight	proportional-font	0	g-dark-red
special-style-2	left-right-justified	no-obliquity	0	0	bold-weight	fixed-width-font	0	g-purple

Table of Common Color Values (continued)
glulx color value	assigned number
g-pure-blue	255		[== $0000FF] 
g-pure-green	65280		[== $00FF00]
g-pure-cyan	65535		[== $00FFFF]
g-pure-yellow	16776960		[== $FFFF00]
g-pure-magenta	16711935		[== $FF00FF]
g-pure-red	16711680		[== $FF0000]
g-dark-red	11141120		[== $AA0000]
g-purple	8388736

Volume - More Set Up

The display banner rule is not listed in the startup rulebook.

The room description heading rule is not listed in the carry out looking rules.
[TODO: not all interpreters can handle the double status bar]

To set rules-all mode: (- debug_rules = 2; -).
[when play begins: set rules-all mode.]

Use American dialect, full-length room descriptions, serial comma.

Volume - Status Line

When play begins:
set the background of the status window to colored;
set the background color of the status window to g-white;

Table of Fancy Status
left	central	right
"[status location]"	""	"[score] iMG"
"[exit list]"	""	""

Rule for constructing the status line:
fill status bar with Table of Fancy Status;
rule succeeds.

To say status location: say "[if the location is not in Outside Ur]You are in [end if][location][if the location is not in Outside Ur].[end if]".

When play begins: now right alignment depth is 6.

Volume - Navigation

Book - Listing Exits

A room can be marked for listing.

To say exit list:
	let count be the number of adjacent rooms;
	if count is greater than 0:
		say "You can travel to [run paragraph on]";
		repeat with destination running through adjacent rooms:
			say "[the destination]";
			decrease count by 1;
			if count > 1:
				say ", ";
			otherwise if count is 1:
				say " and ";
		say ".[line break]"

[After looking when the location is not Outside Ur: say "[exit list]"."]

Requesting the exits is an action out of world.
Understand "s" and "streets" and "street" and "exits" as requesting the exits.

Carry out requesting the exits: say "[exit list]"

Check requesting the exits:
if the location is in Naraka, say "You are dead. There is no where to go."

Book - Going

Table of custom library messages (continued)
Message Id	Message Text
LibMsg <block vaguely going>	"To travel to any street, simply type the name of the street.[line break]"

Understand "North" or "South" or "East" or "West" as a mistake ("[navigation].").
Understand "Northeast" or "Southwest" or "Northwest" or "Southeast" as a mistake ("[navigation].").
Understand "N" or "E" or "W" or "NE" or "NW" or "SE" or "SW" as a mistake ("[navigation].").

Understand the command "S" as something new.

Traveling to is an action applying to one thing.

Understand "[any room]" as traveling to.
Understand "[door]" as entering.

Understand "Gentle Island" and "Gentle" and "Island" as a mistake ("You are already in Gentle Island. You will need to be more specific.")

Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error:
    say "I'm sorry. I don't know what you mean by that."

Check traveling to (this is the no traveling from point A to point A rule):
if noun is location, say "You have to leave before you can arrive." instead.

Check traveling to (this is the can only travel to known streets rule):
if noun is not adjacent and the noun is unvisited, say "You can only travel to streets you've already visited or are adjacent to." instead.

Understand "go [any room]" and "go to [any room]" and "travel to [any room]" as traveling to.

Carry out traveling to:
	while the player is not in the noun:
		let heading be the best route from the location to the noun, using even locked doors;
		if heading is not a direction, say "You're not sure how to get there from here." instead;
		let destination be the room heading from the location;
		try going heading;
 		if the player is not in the destination, rule fails.

Volume - Playing

To say quotation-two: say "[second custom style]There are eleven Giants who thought and sang and imagined everything into existence. These Giants are sometimes lucky enough to imagine someone like you.[paragraph break]You have your own imagination, and you can help grow and shape this world.[roman type]";

Playing is an action applying to nothing.
Understand "IMAGINE" as playing.

Before playing for the first time:
record "Giant Imagination" as achieved.

Carry out playing for the first time:
clear the screen;
open all windows.

To pause the/-- game:
say "[paragraph break][italic type]press any key...[roman type]";
wait for any key;
clear the screen.

The player has a room called most recent location.
The most recent location of the player is Next Step.

Instead of playing when tutorial mode is true and location is not in Outside Ur:
if the bag is not enclosed by the player, now the player carries the bag;
say "Ok.";
try looking;
now tutorial mode is false.

Instead of playing when the location is not in Outside Ur:
say "You are already imagining as hard as you can!"

After playing when the location is in Outside Ur:
move the player to the most recent location of the player;
play the room sound for the most recent location of the player.

Volume - Actions

Dancing is an action applying to nothing.
Understand "dance" as dancing.
Carry out dancing: say "You put your [one of]left[or]right[cycling] [one of]leg[or]leg[or]arm[or]arm[cycling] in. You put your [one of]left[or]right[cycling] [one of]leg[or]leg[or]arm[or]arm[cycling] out. You put your [one of]left[or]right[cycling] [one of]leg[or]leg[or]arm[or]arm[cycling] in and you shake it all about."

[
Examining something is acting fast. Looking is acting fast.
The take visual actions out of world rule is listed before the every turn stage rule in the turn sequence rules.
This is the take visual actions out of world rule: if acting fast, rule succeeds
]

Rule for implicitly taking something:
follow the advance time rule;
continue the activity.

Book - Jumping

Instead of jumping: say "You jump in the air. Woo-hoo!!!!".

Book - Using

Using is an action applying to one thing.
Understand "use [something]" as using.
Carry out using: say "I’m sorry. I don’t know what you mean by that."

Using it on is an action applying to two things.
Understand "use [something] on [something]" as using it on.
Carry out using it on: say "I’m sorry. I don’t know what you mean by that."

Volume - Player Character

The description of the player is "Your name is Alexandra. You have purple skin, shaggy black hair and black antennae. You are wearing a black and grey kimono.[paragraph break]Energy: [energy state][line break]Mood: [mood state][first time][paragraph break]A bag appears on the ground at your feet.[only]".

Book - Metabolics

To decide what number is maximum mood: decide on 200.
To decide what number is maximum energy: decide on 200.

Player's energy is a number that varies.
Player's mood is a number that varies.

When play begins:
now player's energy is maximum energy;
now player's mood is maximum mood.

[keep metabolics between 0 and max]
Every turn:
if player's energy < 0, now player's energy is 0;
if player's energy > maximum energy, now player's energy is maximum energy;
if player's mood > maximum mood, now player's mood is maximum mood;
if player's mood < 0, now player's mood is 0.

[decrease metabolics]
Every turn when turn count is even:
decrease player's energy by maximum energy / 100.
[decrease player's mood by mood loss;]

Every turn when the remainder after dividing turn count by 10 is 0 and the location is not in naraka:
	if player's mood <= maximum mood / 5: [20%]
		say "Your mood is getting very low! Try drinking something tasty.";
	otherwise if player's mood <= maximum mood / 2: [50%]
		say "Your mood is getting low. Drink something, or else you'll earn less imagination for your actions.";
	if player's energy <= maximum energy / 10: [10%]
		say "You are extremely low on energy! Find something to eat.".

Every turn:
if player's energy <= 0 and the location is not in Naraka, kill the player.
                                
MoodState is a kind of value. The MoodStates are Crappy, Good, Medium.
EnergyState is a kind of value. The EnergyStates are Sickly, Healthy, Ok.

To decide what number is mood loss:
if mood state is crappy, decide on maximum mood / 100; [1%]
if mood state is good, decide on (maximum mood * 3) / 100; [3%]
decide on (maximum mood * 2) / 100; [2%]

To decide what moodstate is mood state:
if player's mood < maximum mood / 5, decide on crappy; [20%]
if player's mood >= (maximum mood * 7) / 10, decide on good; [70%]
decide on medium.

To decide what energystate is energy state:
if player's energy <= maximum energy / 40, decide on sickly;
if player's energy > maximum energy / 2, decide on healthy;
decide on ok.

Volume - Scoring

Table of Tasks Achieved 
Points	Citation	Turn Stamp
10	"Zombie"	-1
10	"A L'il Animal Kinship"	-1	
10	"Breezy, EZ Cooking"	-1
10	"Talking 'bout Soil Appreciation"	-1
10	"Crops a-Planty"	-1
10	"Lift Your Light Green Thumb"	-1
10	"IF Master"	-1
10	"Giant Imagination"	-1
10	"Glutton for Nourishment"	-1
10	"Carefully scrutinized every spice in existence"	-1

To record (T - text) as achieved: 
	choose row with a citation of T in the Table of Tasks Achieved; 
	if turn stamp entry is less than 0:
		now the turn stamp entry is the turn count;
		increase the score by the points entry.

Requesting the full score is an action out of world. Understand "full" or "full score" as requesting the full score.

Understand "img" and "imagination" as requesting the full score.

Carry out requesting the full score (this is the announce the full score rule):
	say "You have so far scored [score] out of a possible [maximum score], in [turn count] turn[if turn count is greater than 1]s[end if].";
	sort the Table of Tasks Achieved in turn stamp order;
	repeat through the Table of Tasks Achieved:
		if the turn stamp entry is greater than 0:
			say "[line break] [citation entry]: [points entry] point[if points entry is greater than 1]s[end if]";
	say "[line break]".

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see your FULL SCORE"	false	"full" or "score" or "full score"	announce the full score rule	--

Volume - Testing

test beginning with "x me/x bag/take bag/nylon phool".
test kinship with "squeeze chicken/sing/milk butterfly/pet piggy/nibble piggy/ortolana".
test food with "eat crudites/drink grog/inside".
test cooking with "take all/prepare lazy salad/shake milk/compress butter/make cheesy/make sammich/out".
test ending with "namaste/savannah/enter teleporter".
