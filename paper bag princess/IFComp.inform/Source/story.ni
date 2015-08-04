"The Paper Bag Princess" by "Adri".

The release number is 4.
The story creation year is 2013.
The story headline is "An interactive fairy tale".
The story genre is "fairy tale".

The story description is "Princess Elizabeth is about to marry the love of her life when a dragon attacks the castle and kidnaps her betrothed."

[Release along with cover art and an interpreter.]

Volume - Basic Setup

Use no scoring.
Use American dialect, full-length room descriptions, and the serial comma.

Book - Extensions

Include Basic Screen Effects by Emily Short.
Include Conversational Defaults by Eric Eve.
Include Conversation Responses by Eric Eve.
Include Reversed Persuasion Correction by Juhana Leinonen.
Include Basic Help Menu by Emily Short.
Include Punctuation Removal by Emily Short.

Book - Help Menu

Understand "menu" as asking for help.
Understand "about" and "credits" as asking for help.
Understand "walkthrough" and "walkthru" as asking for help.

Understand "start" as restarting the game.

When play begins:
choose row 1 in the Table of Basic Help Options;
change title entry to "About '[story title]'";
change description entry to "[story description][paragraph break][credits][paragraph break][author]";
choose row 2 in the Table of Basic Help Options;
change title entry to "How to Play".

Table of Basic Help Options (continued)
title	subtable	description	toggle
"Walkthrough"	--	"[walkthrough]"

To say author: say "The author can be contacted at <genericgeekgirl@gmail.com>."

to say credits: say "[story title] is loosely based upon the book of the same name by Robert Munsch. Permission to write the game was requested from and granted by Mister Munsch himself.[paragraph break]Thank you so much to my beta testers: Brendan Desilets, Dan Shiovitz, Dan Kelly, David Sturgis, Doug Orleans, Emily Boegheim, Jason McIntosh, Johnny Rivera, Kevin Jackson-Mead, Matthew Miller, Scott Snyder and Z Goddard. Post-release feedback from Adam Myers, Andrew Schultz, E Joyce, Felix Plesoianu and Victor Gijsbers was also particularly helpful to me."

To say walkthrough: say "This walkthrough results in the 'traditional' ending. [paragraph break]wait[line break]wait[line break]wait[line break]wait[line break]wait[line break]yes[line break]press space[line break]search rubble[line break]take bag[line break]make dress[line break]north[line break]x trail[line break]take branch[line break]x tree[line break]plugh[line break]make torch[line break]open vial[line break]pour oil on torch[line break]south[line break]light torch[line break]north[line break]northeast[line break]east[line break]south[line break]south[line break]west[line break]north[line break]knock on door[line break]again[line break]shout[line break]ask dragon about fire[line break]y[line break]y[line break]ask dragon about flight[line break]y[line break]in[line break]shout at roland[paragraph break]Most puzzles have alternate solutions. Have fun exploring!".

Book - Blocking superbrief/brief modes

Use full-length room descriptions.

Check preferring sometimes abbreviated room descriptions (this is the brief mode disabled rule):
	say "[Story title] is now in its 'brief' printing mode, which gives long descriptions of places never before visited and short descriptions otherwise.";
	stop the action.

Check preferring abbreviated room descriptions (this is the superbrief mode disabled rule):
	say "[Story title] is now in its 'superbrief' mode, which always gives short descriptions of locations (even if you haven't been there before).";
	stop the action.

The brief mode disabled rule is listed first in the check preferring abbreviated room descriptions rules.

The superbrief mode disabled rule is listed first in the check preferring abbreviated room descriptions rules.

Book - Parsing Commands

Understand "* [text]" as a mistake ("Noted.").

After reading a command:
remove stray punctuation;
remove apostrophes.	

After reading a command when Decision Making is happening:
	if the player's command matches the regular expression "i don't":
		try saying no instead.
  
Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

Volume - Setting

Book - Castle Area

The Castle Garden is a room. The printed name is "Castle Garden".
The Castle Ruins is a room.
The Castle Area is a region.
The Garden and Castle Ruins are in the Castle Area.

Chapter - Garden

The description of the Garden is "You are standing in the garden behind your family's castle. On this lovely fall evening, it is doing double duty as a wedding chapel." 

The rose bushes are scenery in the Garden. Understand "roses" and "garden" and "bush" as rose bushes. The description is "Your grandmother planted these rose bushes. They bloom in every color you could imagine, plus some you don't even have names for."

Grandmother is part of the rose bushes. The description is "Your grandmother is, sadly, no longer with us."

Instead of smelling the rose bushes:
say "The garden always smells so lovely."

The castle building is scenery in the Garden. Understand "castle" and "stones" as castle building. The description is "It's a modestly-sized building fashioned out of grey stones. You have lived here your entire life."

Father Alfred is a proper-named man in the Garden.
The description is "Father Alfred has been your family's minister for as long as you can remember."	
Understand "minister" and "priest" and "officiant" as father alfred. 

Some guests are scenery in the Garden. The description is "You are surrounded by your family and friends."

The parents are scenery in the Garden.  The description is "Your parents, Queen Katherine and King Theodore are here, as well as [Roland]'s mother, Queen Anne." Understand "family" as parents.

The friends are scenery in the Garden. The description is "Your friends have traveled far and wide in order to celebrate your big day."

rule for printing a locale paragraph about a person (called P):
	if P is not Roland:
		now P is mentioned;
	otherwise:
		say "Your betrothed, [Roland], stands before you."

Instead of doing anything except examining to the parents:
    say "Please refer to the parents (Katherine, Theodore, Anne) individually."
    
King Theodore is a man in the Garden. The description is "Your father beams at you proudly." Understand "father" as King Theodore.
Queen Katherine is a woman in the Garden. The description is "Your future mother-in-law gazes dotingly upon her [if Roland is female]daughter[otherwise]son[end if]."
Queen Anne is a woman in the Garden. The description is "Your mother smiles at you as she wipes tears from her eyes with an embroidered handkerchief." Understand "mother" as Queen Anne.
    
Chapter - Bouquet

The bouquet is a thing carried by the player. The description is "Your bouquet contains a collection of purple and orange flowers, tied up with a white ribbon. You don't even know what most of these flowers are called." Understand "flowers" as bouquet.

Instead of smelling the bouquet:
say "You hold the bouquet up to your face and breathe in deeply."

The ribbon is part of the bouquet. The description is "It is a length of white satin ribbon, wrapped around the stems of the flowers to hold them together."

Instead of taking the ribbon:
say "The bow is tied much too tightly. Besides, if you removed the ribbon, the flowers would fall everywhere."

Instead of dropping the bouquet:
say "It is not time to throw the bouquet yet."

Instead of eating the bouquet:
say "You're pretty certain some of those flowers are poisonous."
    
[TODO: what happens to the bouquet after the fire?]
    
Book - Castle Ruins

The description of the Castle Ruins is "This used to be your home. Now it is nothing more than a smoking [pile of rubble]. The [smoke] obscures your view of the [stars], and the primary source of light is the burning remains of your furniture.[paragraph break]The only [road] away from the castle now ends abruptly at the river bank. The forest surrounds you thickly on all sides, except for an area to the north where the trees have been broken and scorched."

Instead of examining north when the location is Castle Ruins:
say "The trees in this direction have been broken and scorched, creating a path into the woods."

Chapter - Scenery
    
The forest is scenery in the Castle Ruins. Understand "trees" and "tree" as forest. The description is "The forest surrounds you thickly on all sides, except for an area to the north where the trees have been broken and scorched."

Instead of climbing the tree:
    say "You climb about mid-way up the tree. To the south lie the remains of your castle. In the other directions, there is nothing to see except miles and miles of ruined trees. You climb back down the tree."
    
Instead of climbing something:
say "You have always been a great climber, but there is no time for that."

Instead of climbing someone:
say "I don't think much is to be achieved by that."

The road is scenery in the Castle Ruins. The description is "This well-traveled road used to connect the castle to the rest of the kingdom. Unfortunately, the bridge across the river has been rendered impassable." Understand "bridge" as road.

The river is scenery in the Castle Ruins. Understand "river bank" and "riverbank" and "water" as river. The description is "The water is very deep here, and it moves quickly. Your father used to scare you with stories of sharks, although you have never actually seen one."

The furniture is scenery in the Castle Ruins. The description is "You think you can make out the leg of a chair somewhere in that mess. It's mostly just a blaze of fire." Understand "wood" and "leg" and "chair" as furniture.

Instead of taking furniture:
say "None of the furniture is worth saving."

The smoke is scenery in the Castle Ruins. The description is "You can barely see anything through the smoke."
Instead of smelling the smoke: say "Smoke fills your lungs, making you cough."

The sharks are scenery in the Castle Ruins. They are plural-named. The description is "You're pretty certain he was joking about the sharks. But you would rather not take the chance."

The stars are scenery in the Castle Ruins. They are plural-named. The description is "The sky is usually full of them this time of year, but you cannot see them through the thick smoke."

Understand "bathe" as swimming when the river is in the location.
    
Instead of swimming when the river is in the location:
say "You are a powerful swimmer, but you would freeze to death before you could reach the other side."

Giving up is an action applying to nothing.
Understand "give up" as giving up.
Carry out giving up:
try quitting the game.

Chapter - Rubble
    
The pile of rubble is scenery in the Castle Ruins.
The description is "These piles of stones and wood used to be your home[if the paper bag is part of the pile of rubble]. You catch a glimpse of something colorful hidden in one of the piles[end if]."
Understand "castle" and "stones" and "stone" as pile of rubble when the location is Castle Ruins.
Understand "ruins" and "piles" and "home" and "brick" and "debris" and "remains" and "smoking pile" as pile of rubble.
Understand "burning remains" as pile of rubble.

Instead of taking the pile of rubble:
say "You don't need that." [TODO: maybe you can pick up a rock, or multiple rocks, and do something with it.]

Kicking is an action applying to one thing.
Understand "kick [something]" as kicking.
Carry out kicking:
    say "You kick at [the noun]."
        
Instead of kicking the pile of rubble:
say "You kick at the rubble. Rocks fly off in various directions." 

Check entering the embers:
say "Suicide is not the solution." instead.

Check entering the pile of rubble:
try climbing the pile of rubble instead.

Instead of climbing the pile of rubble:
say "You scramble to the top of the pile. Your foot slips and you fall back to the ground. Ouch!".
[TODO: How do I block "that's not something you can sit/stand on" response?]

A glimpse of something colorful is scenery in the Castle Ruins. The description is "You can't quite make it out from here. Why don't you try digging through the rubble?"
Understand "colourful" as glimpse of something colorful.

Instead of taking the glimpse of something colorful:
try searching the pile of rubble.

Understand "dig [pile of rubble]" as searching.
Understand "dig in/through [pile of rubble]" as searching.

Instead of searching the pile of rubble, say "You dig through the rubble, but you don't find anything else."

Instead of going northeast from Burnt Forest when the player is indecent, say "You might get hurt if you walk naked through the forest."

Instead of going nowhere from Castle Ruins:
	say "The only possible path appears to be through the forest to the north."
	
Part - Paper Bag

The paper bag is a wearable thing. The paper bag is part of the pile of rubble. Understand "paperbag" and "gift bag" as paper bag. The description is "It's a gift bag made out of paper. It looks like it used to have polka dots on it, but now it's just scorched.[if the paper bag has been worn] It has been fashioned into a crude dress.[end if]". Understand "dress" as paper bag when the paper bag has been worn.

The printed name of the paper bag is "[if the player wears the paper bag]gift bag that has been fashioned into a rather fashionable dress[otherwise]paper bag[end if]"

Instead of searching the pile of rubble when the paper bag is part of the pile of rubble:
    move the paper bag to the location; 
	remove the glimpse of something colorful from play;
	say "You dig through the rubble until you find a [paper bag]."

Making a dress is an action applying to nothing.
Understand "make a dress" or "make dress" as making a dress.

Instead of making a dress when the wedding ceremony is happening:
say "You already have a very fine wedding gown."

Instead of making a dress when the paper bag has been worn:
say "You have already done that."

After taking something:
say "You take [the noun]."

After dropping something:
say "You drop [the noun]."

Instead of making a dress when the paper bag is not part of the pile of rubble and the paper bag has not been worn:
try wearing the paper bag.

Before wearing the paper bag for the first time:
	if the paper bag is not carried by the player, try taking the paper bag;
	say "You quickly fashion a dress out of the gift bag. It's not as fancy as you're used to, but it'll get the job done.";
	if the handful of rags are worn by the player, try taking off the handful of rags.

After taking off the handful of rags:
	say "You strip off the remains of your wedding gown";
	now the player carries the handful of rags;
	now the handful of rags are not wearable;
	if the player encloses the necklace:
		say " and discard them in a [pile of rubble]";
		remove the handful of rags from play;
	say "."

After taking off the paper bag, say "You remove the gift bag, folding it carefully."
	
After wearing the paper bag, say "You slip the makeshift dress over your head and pull it down past your hips."
	
Instead of dropping the paper bag, say "You may wish to hold on to that."

Volume - Fire Handling (Embers, Torch)

The embers are a plural-named undescribed thing in the Castle Ruins. It is fixed in place. The embers are lit. Understand "burning" and "fire" and "flames" and "flame" as embers when wandering is happening. The printed name is "flames". The description is "The flames burn brightly." Understand "light" as embers when the location is Castle Ruins.

Instead of blowing out the embers:
say "You succeed in dampening the flames closest to you, but they reappear almost immediately. You'll never put out this fire all by yourself."

Instead of taking the embers:
try touching the embers.

Instead of touching the embers:
try burning the player.

Instead of inserting anything into the embers:
try burning the noun.

Instead of putting anything on the embers:
try burning the noun.

Instead of burning the handful of rags when the player is wearing the handful of rags:
try burning the player.

Instead of burning the handful of rags:
    say "That seems dangerous. Maybe if you wrapped the rags around something first."
    
Instead of burning the oil:
    say "Be careful! That liquid is highly flammable."

Instead of burning the branch:
    say "The branch catches on fire, and then quickly fizzles out. Hmm. Maybe there's something you can add to make the fire last longer."
            
Instead of burning the torch:
	if the torch is lit:
		say "That is already on fire.";
	otherwise if the awake dragon is in the location:
		say "You could probably ask the dragon to light it for you. But that seems like an altogether bad idea.";
	otherwise if the embers are not in the location:
		say "There is no source of fire here.";
	otherwise if the oil is not part of the torch:
		say "The torch catches fire, but then fizzles out almost immediately. Maybe you can add something else to the torch to make it more flammable?";
	otherwise:
		now the noun is lit; 
		say "You light [the torch] with [the embers].".
		
Burning it with is an action applying to two things.
Understand "burn [something] with [something]" as burning it with.
Understand "light [something] with [something]" as burning it with.

Understand "set [something] on fire" as burning.

Check burning something:
	if the Wedding Ceremony is happening:
		say "Brightly burning though it may be, you cannot set things on fire with love alone." instead;
	otherwise if the embers are not in the location and the player does not enclose the lit torch:
		say "How do you expect to do that without a flame?" instead.

[TODO: responses instead of "This dangerous act would achieve little." when you try to set things on fire.]

Instead of attacking the player:
	say "No."
                
Instead of burning someone when the player encloses the lit torch:
	try attacking the noun.

Instead of burning someone when the player does not enclose the lit torch:
	say "How do you expect to do that without a flame?"

Instead of burning someone with a lit thing:
  try attacking the noun.
  
Instead of burning something with a lit thing:
  try burning the noun.

Instead of burning something with a not lit thing:
	say "Whatever you expected to happen has not happened."
	
Instead of burning something with the lit necklace:
	say "The necklace is imbued with a magical light. It is cold to the touch."
        	
Blowing out is an action applying to one thing.
Understand "blow out [something]" or "extinguish [something]" or "put out [something]" as blowing out. Understand the command "snuff" as "extinguish".

Instead of dropping the lit torch:
say "You drop the torch on the ground and the flame goes out.";
now the torch is unlit;
move the torch to the location.

Carry out blowing out something:
	if the noun is lit:
	    	now the noun is unlit; 
	    	say "You put out [the noun].";
	otherwise:
		say "That was not on fire!" instead.


Chapter - The Forest

Section - The Burnt Forest

The Burnt Forest is north of Castle Ruins. "There's a trail of burned trees and what appear to be teeth leading to the northeast. One tree in particular catches your eye. The remains of your castle are back to the south."

The tree is scenery in the burnt forest. The description is "You examine the tree more closely. Someone has carved 'PLUGH' into the trunk." Understand "trunk" and "carving" as tree.

The teeth are plural-named scenery in the Burnt Forest. The description is "[first time]Yes, those are definitely teeth. [only]They come in a variety of shapes and sizes, most of which do not appear to be human. You wonder briefly where the rest of the bones are."

Instead of taking the teeth:
say "You have absolutely no need for those. What are you going to do, make a necklace?"

The bones are plural-named scenery in the Burnt Forest.

Instead of doing anything with the bones:
    say "You don't know where they are, nor do you wish to know."
    
Before saying yes when Decision Making has ended:
say "That was a rhetorical question." instead.

Before saying no when Decision Making has ended:
say "That was a rhetorical question." instead.

The trail is scenery in the burnt forest. Understand "burned trees" and "trees" as trail. The description is "The trail disappears into the woods."

After examining the tree when the branch is part of the tree:
move the branch to the location;
say "There is a large branch propped up against the base of the tree."

After examining the trail when the branch is part of the tree:
move the branch to the location;
say "You notice a large branch lying on the trail."

Instead of going nowhere from the Burnt Forest:
say "The trees are impassable in that direction. The trail seems to be leading northeast."

Check going northeast from Burnt Forest while the player does not enclose a lit thing:
say "The woods seem pretty dark. Maybe you should find a light source." instead.

Forest1 is northeast of Burnt Forest.

Section - Making a Torch

Making a torch is an action applying to nothing.
Understand "make torch" or "make a torch" as making a torch.

Check making a torch:
	if the handful of rags are not held or the branch is not held:
		say "How do you plan to do that?" instead.

Carry out making a torch:
	say "You fashion a torch from [the branch] and the remains of your wedding gown.";
	now the handful of rags are part of the branch;
	remove the branch from play;
	if the oil is part of the handful of rags:
		now the oil is part of the torch;
	now the player carries the torch.
		
The torch is a thing. The description is "It is a torch crafted from a branch and the remains of your wedding gown.[if the torch is lit] It is on fire.[otherwise if the oil is part of the torch] The rags have been doused in an oily black liquid.[end if]". Understand "branch" and "rags" and "handful of rags" as torch.

[TODO: Show in inventory whether torch is on fire or not.]

Understand "combine [something] with [something]" as combining it with.
Combining it with is an action applying to two carried things. 
Understand the command "connect" as "combine".

Understand "add [something] to [something]" as combining it with.

Understand the command "attach" as something new. 
Understand "attach [something] to [something]" as combining it with.

Instead of putting something on something:
try combining the noun with the second noun.

Carry out combining something with something:
say "You're not quite certain how to put those two things together."

Understand "wrap [something] with [handful of rags]" as combining it with.
Understand "wrap [handful of rags] on [something]" as combining it with.
Understand "wrap [handful of rags] around [something]" as combining it with.
Understand "tie [handful of rags] to [something]" as combining it with.
Understand "tie [handful of rags] on [something]" as combining it with.

Instead of combining the handful of rags with the branch:
try making a torch.

Instead of combining the branch with the handful of rags:
try combining the handful of rags with the branch.

The branch is part of the tree. The description is "It's a large branch. It looks pretty sturdy." Understand "stick" as branch.

Understand "dip [something] in [vial]" as inserting it into.
Understand "dip [something] in [oil]" as inserting it into.

Instead of inserting the branch into the oil:
try inserting the branch into the vial.

Section - Forest Maze

Instead of dropping something when in darkness:
say "That's a great way to lose something."

Rule for printing a refusal to act in the dark: if we are examining something, say "You can't see that in the dark." instead.

Rule for printing the description of a dark room: 
say "It is so dark that you can barely see the trees that you know surround you."

Rule for printing the announcement of darkness:
say "You are now alone in the dark. You remember the stories your father used to tell you about Grues, but you're reasonably certain they did not live in forests."

Finding is an action applying to one thing. 
Understand "find [anything]" as finding.

After deciding the scope of the player when in darkness:
	place the location in scope.
	
After taking something when in darkness:
say "You drop to your hands and knees and desperately feel around for [the noun]. You eventually find it, although you break a nail in the process."

Rule for printing the name of a dark room: 
    say "Dark Forest" instead.

After dropping the necklace in a dark room:
say "You drop the necklace. The light immediately winks out.";
now the necklace is not lit.

Instead of going when in darkness:
	if the player encloses the necklace:
		say "You stumble and cannot find your way. The necklace vibrates gently against your skin, but remains unlit.";
	otherwise:
		say "You stumble and cannot find your way."

A Forest Room is a kind of Room. The printed name of a Forest Room is usually "Dimly Lit Forest". A Forest Room is usually dark. 
A numerical forest room is a kind of Forest Room.
An alphabetical forest room is a kind of Forest Room.

The dark trees are scenery and a backdrop. They are plural-named. Instead of examining the dark trees, try looking.

The other tree is scenery and a backdrop. Instead of examining the other tree, try looking.

Instead of climbing the other tree:
say "You can't reach any branches."

When play begins:
move the dark trees backdrop to all forest rooms;
move the other tree backdrop to all forest rooms.

The description of Forest1 is "You feel as if you are in a giant maze of twisting trees."
The description of Forest2 is "You feel as if you are in a giant maze of twisty trees."
The description of Forest3 is "You feel as if you are in a giant twisty maze of trees."
The description of Forest4 is "You feel as if you are in a maze of giant twisting trees."
The description of Forest5 is "You feel as if you are in a maze of giant twisty trees."
The description of ForestA is "You feel as if you are in a maze of twisting giant trees."
The description of ForestB is "You feel as if you are in a maze of twisty giant trees."
The description of ForestC is "You feel as if you are in a twisting giant maze of trees."
The description of ForestD is "You feel as if you are in a twisting maze of giant trees."
The description of ForestE is "You feel as if you are in a twisty giant maze of trees."
[Extra: twisty maze of giant trees]

Instead of listening when the location is a forest room:
    say "[one of]You listen intently, but you can hear nothing[or]As you pause to listen, something flies past your head[or]You can hear a fox screaming in the distance[or]You hear the occasional hoot of an owl on the hunt[cycling]."

Being a jerk is an action applying to nothing.
Understand "what does the fox say" as being a jerk when the location is a forest room.
Carry out being a jerk:
say "Rocks fall. You die.";
end the game saying "You have displeased the foxes."
    
Forest1, Forest2, Forest3, Forest4 and Forest5 are Numerical Forest Rooms.
ForestA, ForestB, ForestC, ForestD and ForestE are Alphabetical Forest Rooms.

Forest1 is west of Forest2.
Forest2 is north of Forest3.
Forest3 is north of Forest4.
Forest4 is east of Forest5.
Forest5 is south of Cave Exterior.

The bush is scenery in ForestA. The description is "A bush covered in bright, red berries."
The berries are a plural-named thing and part of the bush.
The description is "[if the berries are enclosed by the player]A handful of bright, red berries.[otherwise]Clusters of bright, red berries.[end if]".

Understand "pick [berries]" as taking.
Instead of taking the berries:
say "You pick a handful of berries.";
move the berries to the player.
[TODO: multiple handfuls of berries]

Instead of eating the berries:
say "You'd better not. They're probably poisonous."

[TODO: give berries to dragon]
[TODO: give mushrooms to dragon]

The dagger is in ForestB. "There is a dagger here." The description is "A jeweled dagger. It doesn't look very sharp." Understand "blade" as dagger.
The jewels are part of the dagger. The description is "The dagger is encrusted with emeralds and rubies."

Cutting it with is an action applying to two things.
Understand "cut [something] with [something]" as cutting it with.
Carry out cutting it with:
say "That isn't sharp enough to cut anything."

Instead of cutting something with the dagger:
say "The blade is purely ornamental."

Instead of cutting the dragon with the dagger:
say "The blade is purely ornamental. It could never cut through dragon scales."

Instead of cutting something:
say "How do you expect to do that without a blade?"

Instead of cutting something when the dagger is enclosed by the player:
try cutting the noun with the dagger.

The mushrooms are a plural-named thing in ForestC. "[if the mushrooms have not been handled]There is a patch of mushrooms here." The description is "A patch of small white mushrooms with orange spots."

Understand "pick [mushrooms]" as taking.
Instead of taking the mushrooms:
say "You pick every last mushroom.";
move the mushrooms to the player.

Instead of eating the mushrooms:
say "You've never liked mushrooms, and you're not hungry enough to force yourself to eat these."

The flashlight is a device in ForestD. "There is a flashlight here." The description is "An electric torch. The battery compartment is empty." Understand "electric torch" as flashlight.
Understand "torch" as flashlight when the torch is not enclosed by the player and the torch is not in the location.

Instead of switching on the flashlight:
say "You switch the flashlight on, but it doesn't work. You turn if off again, out of habit."

The ring is a wearable thing in ForestE. "There is a shiny ring here." The description is "A very pretty ring."
Instead of wearing the ring:
say "As you slip the ring on your finger, it vanishes. You find yourself transported to a clearing.";
remove the ring from play;
move the player to the cave exterior.

Instead of going up:
say "You, unlike the dragons, are not able to fly."

Instead of going down:
say "There is nowhere to go in that direction."

Before going from an Alphabetical Forest Room:
say "You seem to be walking in circles."

Before going a direction (called way) when the location is a Forest Room:
	if the room way from the location is nothing:
		let the next location be a random Alphabetical Forest Room;
		change the way exit of the location to the next location;
		repeat with new-way running through directions:
			change the new-way exit of the next location to the location;

Before going north from Forest5:
 	if the player carries the lit torch:
		say "As you emerge from the forest, [the torch] suddenly fizzles out.";
		now the torch is not lit;           
	otherwise:
		say "You finally emerge from the forest.";

After going south from Forest2:
	say "You have a gut feeling that you are heading in the right direction."

Before going south from Forest3:
	say "[The torch] starts to flicker. It will probably burn out soon.";                

After going west from Forest4:
	say "The forest seems a little less dark and dense somehow."
                
Chapter - Dragons Cave

The Cave Exterior is a room. The printed name is "Outside the Dragon's Cave". "You are standing before a large cave. The entrance has been blocked by a large wooden door."
The Cave Interior is a room. The printed name is "The Dragon's Cave". "This is where the dragon lives. Piles of treasure fill the room, reflecting light in every direction."
The Dragons Cave is a region.
The Cave Exterior and Cave Interior are in the Dragons Cave.

The cave door is scenery and a closed locked door. It is inside from Cave Exterior and outside of Cave Interior. Understand "entrance" and "door" as Cave Door. "The large door almost perfectly fills in the natural opening in the rock. There is a golden knocker in the shape of a dragon's tail about a foot above your head."

The treasure is scenery in the Cave Interior. The description is "There is more gold and precious gems here than you have ever seen before in your life." Understand "gold" and "gems" as treasure.

Instead of taking the treasure:
say "No, Elizabeth. You were raised better than that."

Instead of searching the treasure:
try examining the treasure.

Part - Characters

Chapter - Elizabeth (PC)

The description of the player is "You are young and beautiful, too lovely to be described in mere words[if the wedding ceremony has ended]. You are, however, in dire need of a bath and a change of clothes[end if]."

Section - Inventory (Wearing)

After examining the player:
	If the number of things worn by the player is 0:
		say "You are elegantly clad in only your birthday suit.";
	otherwise if the player is not wearing the wedding gown and the player is not wearing the paper bag and the player is not wearing the handful of rags:
		say "You are stark naked, save for [a list of things worn by the player]." instead;
	otherwise:
		say "You are wearing [a list of things worn by the player].";
			
Definition: a person is indecent if she is not wearing the paper bag.

Section - Inventory (Carrying)

Instead of taking inventory: 
    say "You are carrying "; 
    now all things carried by the player are marked for listing; 
    now all things worn by the player are unmarked for listing; 
    if no things carried by the player are marked for listing, say "nothing"; 
    otherwise list the contents of the player, as a sentence, tersely, giving brief inventory information, listing marked items only; 
    say ".[paragraph break]".

Book - Wedding Gown

The wedding gown is a thing worn by the player.

The description is "[if Wedding Ceremony is happening]A long, white wedding gown with purple trim[else]The tattered remains of your wedding gown[end if]."

The printed name is "[if Wedding Ceremony has ended]handful of rags[otherwise]wedding gown". Understand "dress" and "wedding dress" as wedding gown.

Instead of taking off the wedding gown when the Wedding Ceremony is happening (this is the no nudity at the wedding rule):
say "It took a very long time to get you laced into that gown. You ought to leave it on for now."
	
Book - Rags

Part - Shining
    
Shining is an action applying to one thing.
Shining it with is an action applying to two things.

Understand "shine [something]" and "polish [something]" as shining.
Understand "shine [something] with [something]" and "polish [something] with [something]" as shining it with.

Carry out shining:
say "How would you like to do that?"

Carry out shining it with:
	if the second noun is the handful of rags:
		say "You attempt to polish the [noun] with the [handful of rags]. It's not super effective.";
	otherwise:
		say "That doesn't seem to work."	

The handful of rags are a plural-named thing. The indefinite article is "a".
The description is "The tattered remains of your wedding gown.[if the oil is part of the rags] They have been doused in a black oily liquid.[end if]".
Understand "rag" and "wedding dress" and "wedding gown" and "gown" as handful of rags.
Understand "dress" as handful of rags when the paper bag has not been worn.

Book - Crown

The crown is worn by the player. The description is "Your gold crown.[if Wedding Ceremony has ended] It's looking a little worse for the wear." The printed name is "[if Wedding Ceremony has ended]tarnished [otherwise]sparkly [end if]gold crown".

Instead of taking off the crown (this is the princess should always be prepared rule):
	say "You should leave that on. A princess should never be without her crown."

Volume - Roland

Making-Roland-Female is an action out of world.
Making-Roland-Male is an action out of world.

Understand "heteronormativity off" as making-roland-female.
Carry out making-roland-female:
	say "Ok!";
	now Roland is female.

Understand "her" as Roland when Roland is female.
[TODO: 'him' is still understood]
	
Understand "heteronormativity on" as making-roland-male.
Carry out making-roland-male:
	say "Ok!";
	now Roland is male.
	
Roland is a person in the Garden. Roland can be male or female. Roland is male. The printed name is "[if Roland is male]Roland[otherwise]Rolande".
The description is "[Roland] is the most attractive [gender] you have ever laid eyes on."

Understand "betrothed" as Roland.
Understand "man" or "prince" or "fiance" or "groom" as Roland when Roland is male.
Understand "woman" or "fiancee" or "princess" or "bride" or  "rolande" as Roland when Roland is female.
       
The Jerk is a proper-named person in the Cave Interior.
The printed name is "[if Roland is male]Roland[otherwise]Rolande".
The description is "[Roland] is the most attractive [gender] you have ever laid eyes on. Too bad [subjective]'s also the biggest jerk you've ever met!".
Understand "man" or "prince" or "roland" as the Jerk when Roland is male.
Understand "woman" or "princess" or "rolande" as the Jerk when Roland is female.
Understand "bum" or "toad" as the Jerk.

[Roland/e's pronouns]
To say gender: say "[if Roland is male]man[otherwise]woman".
To say partner: say "[if Roland is male]husband[otherwise]wife".
To say title: say "[if Roland is male]prince[otherwise]princess".
To say subjective: say "[if Roland is male]he[otherwise]she".
To say capital-subjective: say "[if Roland is male]He[otherwise]She".
To say objective: say "[if Roland is male]him[otherwise]her".
To say possessive: say "[if Roland is male]his[otherwise]her".
To say reflexive: say "[objective]self".

Volume - Dragon

An animal can be asleep or awake.
An animal can be impatient or not impatient. An animal is usually not impatient.
An animal can be friendly or not friendly. An animal is usually not friendly.

The dragon is a neuter animal in the Cave Interior. The dragon is awake. The description is "Up close, you realize this dragon isn't actually very large, only about fifteen cubits from the tip of its nose to the spiked end of its tail.[if the player encloses a lit thing] Its green scales shimmer in the glow of your [random lit thing enclosed by player].[end if] Its wings are folded neatly at its sides, and a swirl of smoke escapes its nostrils.[if the dragon is asleep] The dragon is sleeping peacefully, with its tail curled around its snout.[end if]"

The wings are part of the dragon. The description is "Even furled, the wings nearly double the size of the dragon."
The smoke swirl is part of the dragon. The description is "Black smoke swirls around the dragon's snout." Understand "snout" and "nose" as smoke swirl.

[TODO]
Understand "scales" and "tail" and "claws" as dragon.

Volume - Scenes

Book - Wedding Ceremony

Wedding Ceremony is a scene.

Wedding Ceremony begins when play begins.

When play begins:
say "This is the day you've always dreamed of. You are finally marrying the love of your life, Prince [Roland]. (Tip: Type 'heteronormativity off' to marry a princess instead.)"

Rule for printing the banner text during the Wedding Ceremony: do nothing.

When Wedding Ceremony ends:
	say "[doom]";
	pause the game;
	say "[paragraph break][banner text]";
	move the player to the Castle Ruins;
	remove the wedding gown from play;
	remove the bouquet from play;
	now the player wears the handful of rags.
        
Instead of waiting during the Wedding Ceremony:
say "You beam happily at [Roland]."

Table of Priestly Ramblings
Quip
"[Father Alfred] begins the ceremony, 'We are gathered here today to witness the joining of two hearts.' [Roland] smiles shyly at you."
"'If anyone has a reason why these two should not be wed, speak now or forever hold your peace.' You hold your breath for a second, wondering whether anyone will speak up. Fortunately, nobody does and you relax."
"'Who gives this woman--' You glare icily at the minister. You are nobody[']s property. 'Ahem. Moving on,' says the minister, visibly flustered. [Roland] looks at you questioningly, but says nothing."
"'Love is a wonderful thing.' And so on. You're too excited to pay attention to every word."
"'Elizabeth, do you take [Roland] to be your [partner]?'";

Every turn during Wedding Ceremony:
	repeat through Table of Priestly Ramblings: 
		say "[quip entry][paragraph break]"; 
		blank out the whole row; 
		make no decision.
		
When Decision Making ends:
now the current interlocutor is nothing.
		
Wedding Ceremony ends when Decision Making ends.

Decision Making is a scene. 

Decision Making begins when the number of filled rows in the Table of Priestly Ramblings is 0.
Decision Making ends when the dragon is in the Garden for the first time.

default response for the player:
say "They say talking to oneself is a sign of genius. Or maybe that was madness. Is there really a difference?"

Understand "I do" and "yup" and "yep" as saying yes when the Wedding Ceremony is happening.
Understand "I do not" and "nope" and "no way" and "nah" as saying no when the Wedding Ceremony is happening.

Speaking up is an action applying to nothing.
Understand "speak up" and "speak now" as speaking up when the Wedding Ceremony is happening.

Instead of speaking up when Wedding Ceremony is happening:
	say "You exclaim, 'I don[']t want to marry [Roland]!'[paragraph break][bad-end]";
	end the game saying "And they didn't get married after all!"

When Decision Making begins:
        now the current interlocutor is Father Alfred.

Instead of saying yes when Decision Making is happening:
	say "Of course you do![paragraph break]The minister smiles at you and turns to [Roland]. 'And, [Roland], do you take Elizabeth to be your wife?'[paragraph break][Roland] grins at you and exclaims, 'I do!'[paragraph break]'I now pronounce you [gender] and... dragon?!?' The minister's eyes go wide, seconds before he is incinerated by a burst of flame.";
	move the dragon to the Garden.

To say bad-end: say "There's a pause, and then the guests begin to murmur. The minister frowns. 'Elizabeth, are you sure?' he asks. [Roland] just stares at you in shock. You whisper, 'I'm so sorry,' and run off.";
        
Instead of saying no when Decision Making is happening:
	say "You shake your head. 'No. I don[']t.'[paragraph break]Oh.[paragraph break][bad-end]";
	end the game saying "And they didn't get married after all!"
	
Instead of waiting when Decision Making is happening:
say "[minister-waiting]".

Instead of doing anything except looking or examining or saying yes or saying no when Decision Making is happening:
say "[minister-waiting]".

After looking or examining when Decision Making is happening:
try silently waiting.

To say minister-waiting: say "The minister is waiting for your answer. Please say 'yes' or 'no'."

To say doom:
say "A large dragon flies overhead. The wedding guests scatter in every direction. You cower against [Roland], but [subjective] pushes you towards the dragon and runs towards the road.[paragraph break]The dragon eats all the guests it can catch, and when it has had its fill, it smashes your castle to smithereens with its heavy tail and sets the remains on fire. You are nearly caught in a blaze of flame as you duck behind what used to be the stone wall of the garden. You are unhurt, but your fine gown snags on a rose bush and tears.[paragraph break]As the dragon finally turns to go, it catches sight of [Roland], running down the road towards the river. It swoops down and smashes the bridge just as [Roland] is about to cross it and catches [objective] up in its claws. The dragon flies away with your beloved [title]."

Chapter - Wandering

Wandering is a scene.
Wandering begins when Wedding Ceremony ends. 

Wandering ends when the Cave Exterior has been visited.

Chapter - The Rescue

To decide whether player consents: (- (YesOrNoKey()) -).
 
Include (-
[ YesOrNoKey ch;
    do { ch = VM_KeyChar(); } until (ch == 'y' or 'Y' or 'n' or 'N');
    return ch == 'y' or 'Y';
]; -).

The Rescue is a scene.
The Rescue begins when Wandering ends.

The Rescue ends when exhaustion is 3.

Instead of knocking the Cave Door for the first time:
say "You stand on your tiptoes, grab the knocker, and bang on the door.[paragraph break]The door opens, almost knocking you over, and the dragon sticks its nose through the opening. It says, 'Well, a princess! I love to eat princesses, but I have already eaten a whole castle today. I am a very tired dragon. Come back tomorrow.' [paragraph break]Then it slams the door in your face."

Instead of knocking the Cave Door:
say "You bang on the door again.[paragraph break]The dragon sticks its nose out the door and says, 'I am sure you are very delicious, but I am rather tired and stuffed. Please do come back tomorrow.'[paragraph break]This time, however, he does not immediately return to his cave.";
now the dragon is impatient;
now the Cave Door is unlocked;
move the dragon to the Cave Exterior.

Instead of shouting when the dragon is impatient:
try shouting at the dragon.

Before saying hello to the dragon when the dragon is impatient:
try shouting at the dragon.

Instead of shouting at the dragon for the first time:
say "'Wait!' you exclaim.[paragraph break]Surprised, the dragon steps entirely out of the cave, nudging the door shut with its tail.";
now the dragon is not impatient.

After doing anything except shouting at the dragon when the dragon is impatient:
	If the dragon has been impatient for 5 turns:
		say "The dragon sighs and slams the door. You need to find a way to get its attention.";
		now the dragon is not impatient;
		now the Cave Door is locked;
		move the dragon to the Cave Interior.
	
Instead of knocking the Cave Door while the dragon is in the Cave Exterior and the dragon is awake:
	say "You already have the dragon's attention."

Instead of knocking the Cave Door while the dragon is not awake:
    say "Shhhhh. Don't wake up the dragon. You can enter the cave now."

Instead of opening the Cave Door when the dragon is in the location and the dragon is awake:
say "[The dragon] says, 'No, I don't think so.'"
       
Instead of going from Cave Exterior when the dragon is in the location and the dragon is awake:
say "[The dragon] is blocking the doorway and will not allow you to pass."
        
When Rescue ends:
	say "The dragon is so tired that he falls fast asleep.";
	now the dragon is asleep;
        now the dragon is not impatient;
	now the current interlocutor is nothing.
	
Instead of doing anything except attacking to an asleep animal:
say "[The noun] is finally asleep. You should rescue [Roland] and leave, before it wakes up."

Instead of attacking the awake dragon:
say "[The noun] is much larger and stronger than you. Perhaps you can outwit it in some way."

Instead of attacking an asleep animal:
say "[The noun] is harmless to you while asleep."

Instead of shouting at the dragon when the dragon is asleep:
try saying hello to the dragon.

Instead of saying hello to the dragon when the dragon is asleep:
say "[one of]You whisper very softly, 'Hey, dragon.'[paragraph break]The dragon doesn't stir.[or]You lift the dragon's ear and put your head right inside. You shout as loudly as you can, 'Hey, dragon!'[paragraph break]The dragon doesn't react.[or]The dragon seems to be fast asleep. You could probably sneak right past it now.[stopping]".

default give-show response for Dragon:
say "The dragon sniffs at you and says dryly, 'That doesn't look edible. No thank you."

After asking the awake dragon about a topic listed in the Table of Draconic Boasts:
	say "[reply entry][line break]"; 
	increase exhaustion by 1;
	blank out the whole row;
	say "[wow]";
	say ">[run paragraph on]";
	if the player consents:
		say "yes[line break]";
		say "[impressed]";
	otherwise:
		say "no[line break]";
		say "[not-impressed]";
	try asking the dragon about topic understood.

To say wow: say "[one of]Were you impressed by that display[or]Wasn't that amazing[at random]? (Y/N)[paragraph break]";
To say impressed: say "'[one of]Fantastic[or]Magnificent[cycling]!' you [one of]exclaim[or]shout[cycling]. 'Do it again!'[paragraph break]";
To say not-impressed: say "Apparently it takes a lot to impress you! But you force yourself to look delighted as you shout, 'Do it again!'[paragraph break]";

After asking the awake dragon about a topic listed in the Table of Draconic Conversation:
	say "[reply entry]".

Instead of telling the dragon about a topic:
	try asking the dragon about the topic understood.

default ask-tell response for Dragon:
	say "[The dragon] pointedly ignores you."
			
Before asking the dragon to try eating something:
say "The dragon says, 'Thank you for the offer, but I am not hungry right now.'" instead.

[TODO]
Before asking the dragon to try burning something:
say "The dragon says, 'Oh, I couldn't possibly.'" instead.
              
[TODO: differentiate between ask/tell, to add some more flavor text; also wedding, parents, etc; maybe ask about dragons, plural]

Understand "sing to dragon" as singing when the dragon is in the location.
    
Instead of singing when the awake dragon is in the location:
say "You sing a few bars of a lullaby your mother used to sing to you.[paragraph break][one of]The dragon seems to relax at the sound[or]It seems to be having the desired effect on the dragon[stopping].";
	increase exhaustion by 1;

Instead of singing when the dragon is in the location and the dragon is not awake:
    say "The dragon has fallen asleep. You should go rescue your [title]."
    
response of dragon when asked-or-told about player:
	say "[The dragon] says, 'I do love to eat princesses, but I have already eaten a whole castle today. Please come back tomorrow.'"
	
response of dragon when asked-or-told about the castle building:
	say "[The dragon] says, 'I have already eaten a whole castle today.'[paragraph break]'That was my home!' you shout.[paragraph break]The dragon shrugs. It doesn't seem particularly inclined to apologize."
	
response of dragon when asked-or-told about cave door:
	say "[The dragon] says, 'That is my home, and you are not welcome in there.'"

response of dragon when asked-or-told about "royals":
try quizzing dragon about Roland.

response of dragon when asked-or-told about "princesses":
	if Roland is female:
		try quizzing dragon about Roland;
	otherwise:
		try quizzing dragon about player.
       
response of dragon when asked-or-told about Roland:
        say "[The dragon] says, 'Oh, yes. I love to eat royals. But I have already eaten a whole castle today, so I am saving your [title] for later.'[paragraph break]'Where is [subjective]?' you cry.[paragraph break]'I cannot tell you that,' says the dragon, although it casts a nervous look towards the cave."

Flattering is an action applying to one thing.
Understand "flatter [dragon]" as flattering.
Understand the command "outwit" and "trick" and "challenge" as "flatter".

Boasting is an action applying to nothing.
Understand "boast" as boasting.
Carry out boasting: try flattering the dragon.

response of dragon when asked-or-told about "boasting/boast/boastful":
try flattering the dragon instead.

Carry out flattering:
say "Dragons are well known for breathing FIRE and their ability to FLY. Maybe you could try asking about one of those."

response of dragon when asked-or-told about the torch:
	if the torch is not lit:
		say "'Can you light my torch?', you say. The dragon snorts in laughter, but obliges. The torch burns brighter than ever.";
		now the torch is lit;
	otherwise: 
		say "The dragon just laughs."

Instead of showing the torch to the dragon:
try quizzing the dragon about the torch.
                
response of dragon when asked-or-told about the berries:
say "The dragon looks eagerly at the berries. 'Ooh, I could sure use a snack.', it says."

response of dragon when asked-or-told about the mushrooms:
say "The dragon looks eagerly at the mushrooms. 'I love mushrooms!', it says."

instead of showing the berries to the dragon:
try quizzing the dragon about the berries.

Instead of showing the mushrooms to the dragon:
try quizzing the dragon about the mushrooms.

Instead of giving the berries to the dragon:
	say "The dragon scarfs down the berries. Almost immediately, it begins to look ill. 'I don't feel so well', says the dragon. 'I think I'll take a nap.'[paragraph break]";
	remove the berries from play;
	now the dragon is asleep;
        now the dragon is not impatient;
	now the current interlocutor is nothing;
	say "The dragon curls up and falls asleep, right there in front of you."

Instead of giving the mushrooms to the dragon:
	say "The dragon scarfs down the mushrooms. 'Mmmmm', it says. 'That sure hit the spot. But now I'm feeling rather tired. Please excuse me.'[paragraph break]'";
	remove the mushrooms from play;
	now the dragon is asleep;
        now the dragon is not impatient;
	now the current interlocutor is nothing;
	say "The dragon curls up and falls asleep, right there in front of you."
        
response of dragon when asked-or-told about the flashlight:
say "The dragon sniffs, 'I'm afraid I can't do anything about that.'"
 
response of dragon when asked-or-told about the dagger or the ring:
say "The dragon exclaims, 'Oh! How lovely!'"

Instead of showing the ring to the dragon:
try quizzing the dragon about the ring.

Instead of showing the dagger to the dragon:
try quizzing the dragon about the dagger.

Instead of giving the dagger to the dragon:
	say "The dragon says, 'I accept your kind gift. In exchange, I shall return your [title] to you. Now, if you don't mind, I've had a long day, and I'm feeling awfully tired.'[paragraph break]";
	remove the dagger from play;
	now the dragon is asleep;
        now the dragon is not impatient;
	now the current interlocutor is nothing;
	say "The dragon curls up and falls asleep, right there in front of you."

Instead of giving the ring to the dragon:
	say "The dragon says, 'I accept your kind gift. In exchange, I shall return your [title] to you. Now, if you don't mind, I've had a long day, and I'm feeling awfully tired.'[paragraph break]";
	remove the ring from play;
	now the dragon is asleep;
        now the dragon is not impatient;
	now the current interlocutor is nothing;
	say "The dragon curls up and falls asleep, right there in front of you."

response of dragon when asked-or-told about the crown:
say "The dragon scoffs, 'It's not very shiny', but you can tell that he seems quite interested in the crown."

Instead of showing the crown to the dragon:
try quizzing the dragon about the crown.

Before giving the crown to the dragon:
say "Oh no, you couldn't possibly do that." instead.

Instead of quizzing dragon about dragon:
try asking dragon about "dragon".

After asking dragon about "dragon" for the second time:
try silently flattering the dragon.

response of dragon when asked-or-told about wings:
try asking dragon about "flight".

response of dragon when asked-or-told about smoke:
try asking dragon about "fire".

Table of Draconic Boasts
topic	reply
"fast/fastest/flying/flight/wings/fly"	"[flight-boast]"
"fierce/fiercest/fire/flame/flames/breath/smoke/burning"	"[fire-boast]"
"fierce/fiercest/fire/flame/flames/breath/smoke/burning"	"[fire-boast]"

To say dragon-boast:
say "You say, 'Is it true that you are the fastest and fiercest dragon in the whole world?'[paragraph break]'Yes,' says [the dragon]. Boastful fellow, isn't he?"

Table of Draconic Conversation
topic	reply
"dragon/dragons/itself"	"[dragon-boast]"
"fast/fastest/flying/flight/wings/fly"	"[flight-boast]"
"fierce/fiercest/fire/flame/flames/breath/smoke/burning"	"[fire-boast]"

Exhaustion is a number that varies. Exhaustion is usually 0.

To say fire-boast:
say "[one of]'Is it true,' you say, 'that you can burn up ten forests with your fiery breath?'[paragraph break]'Oh, yes,' says the dragon, and it takes a huge, deep breath and breathes out so much fire that it burns up fifty forests.[or]The dragon takes another huge breath and breathes out so much fire that it burns up one hundred forests.[or]The dragon takes another huge breath. But this time, nothing comes out.[or]The dragon doesn't have enough fire left to cook a meatball![stopping]"

To say flight-boast:
say "[one of]You say, 'Dragon, is it true that you can fly around the world in just ten seconds?'[paragraph break]'Why, yes,' says the dragon, and it jumps up and flies around the world in just ten seconds. It seems very tired when it returns.[or]The dragon jumps up and flies around the whole world in just twenty seconds. When it returns, it flops down on the ground.[or]The dragon is too tired to stand up.[stopping]"

Instead of going nowhere from Cave Exterior:
say "The door leads into the cave. The only escape is back into the forest. You came to rescue [Roland], and you are not leaving without [objective]!"

Chapter - The Aftermath

Does the player mean doing anything to Roland during Aftermath: it is unlikely.
Does the player mean doing anything to the Jerk during Aftermath: it is likely.

The Aftermath is a scene.

Instead of going from Cave Exterior when the player is indecent, say "You ought to cover up before seeing [Roland]"

After opening the Cave Door for the first time:
say "You step over the dragon and open the door to the cave."

The Aftermath begins when the player is in the Cave Interior for the first time.

When the Aftermath begins:
say "[Roland] looks at you and says, 'Elizabeth, you are a mess! You smell like ashes, your hair is all tangled, and you are wearing a dirty paper bag. Come back when you are dressed like a real princess.'"

Dumping is an action applying to one thing.
Understand "dump [something]" as dumping.
Carry out dumping:
say "That's not a verb I recognize."

Instead of dumping the Jerk:
try shouting at the Jerk.

Instead of shouting when the Jerk is in the location:
try shouting at the Jerk.

Understand "tell [someone] off" as shouting at.

Instead of taking off the paper bag when the Jerk is in the location:
say "You take off the bag, crumple it up and throw it at [Roland].[paragraph break]";
try shouting at the Jerk.

Instead of attacking the dragon with the dagger:
try cutting the dragon with the dagger.

Instead of throwing the dagger at the dragon:
try cutting the dragon with the dagger.

Instead of throwing something at the dragon:
try attacking the dragon.

Instead of throwing a lit torch at the jerk:
try burning the jerk.

Before burning the jerk:
try burning the Jerk with the torch instead.

Instead of throwing something at the Jerk:
    if the noun is worn by the player, try silently taking off the noun;
    say "You throw [the noun] at [Roland]. [capital-subjective] ducks, just barely.[paragraph break]";
    try shouting at the Jerk.
        
Instead of shouting at the Jerk:
say "'[Roland],' you say, 'your clothes are really pretty, and your hair is very neat. You may look like a real [title], but you are also a real toad.'[paragraph break]You turn around and walk out the door.";
end the story finally saying "And Elizabeth lived happily ever after!"

Instead of going nowhere when the Aftermath is happening:
say "There is nothing in that direction but piles of gold."

Instead of going when the Aftermath is happening:
try shouting at the Jerk.

Instead of exiting when the Aftermath is happening:
try shouting at the Jerk.

Understand the command "kill" as something new.
Killing is an action applying to one thing.
Understand "kill [someone]" as killing.

Instead of killing someone:
try attacking the noun.

Instead of killing the Jerk:
say "That's a bit harsh, don't you think?"

Understand the command "slap" as "attack".

Understand the command "shove" as "push".

Instead of pushing the Jerk:
say "You give [Roland] a hard shove![paragraph break]";
try shouting at the Jerk.

Instead of throwing a lit torch at something:
try burning the second noun.

Before burning the Jerk with an unlit torch:
say "You threateningly brandish the unlit torch at [Roland].";
try shouting at the Jerk instead.

Before burning the Jerk with a lit torch:
say "You briefly consider burning [Roland], but settle for giving him a hard shove.[paragraph break]";
try shouting at the Jerk instead.

Instead of kicking the Jerk:
    say "You kick [Roland] in the shin![paragraph break]";
    try shouting at the Jerk.
    
Instead of attacking the Jerk:
say "You slap [Roland]![paragraph break]";
try shouting at the Jerk.

Attacking it with is an action applying to two things.
Understand "attack [something] with [something]" as attacking it with.
Understand "hit [something] with [something]" as attacking it with.
Carry out attacking something with something:
try attacking the noun.

Understand the command "slay" as "attack".

Part - Additional Actions

Table of Ponderances
topic	reply
"Roland/Rolande"	"You smile dreamily as you think about your beloved."
"love/wuv"	"Wuv, tru wuv, will fowow you foweva. So tweasure your wuv."

Instead of thinking about a topic listed in the Table of Ponderances:
say "[reply entry][line break]"

Instead of thinking:
try thinking about "Roland".

Thinking about is an action applying to one topic.
Understand "think about [text]" as thinking about.
Carry out thinking about a text (called T):
say "You daydream briefly."

Swimming is an action applying to nothing.

Understand "swim" and "go swimming" as swimming.

Carry out swimming:
say "There is nothing here for you to swim in."

Instead of jumping:
say "You jump on the spot."

Glaring is an action applying to nothing.
Understand "glare" as glaring.
Carry out glaring: say "You glower angrily at nothing in particular."

Instead of glaring when the Jerk is in the location:
try glaring at the jerk.

Glaring at is an action applying to one thing.
Understand "glare at [something]" as glaring at.
Carry out glaring at: say "You glower angrily at [the noun]."

Chapter - Inappropriate Conduct

Copulating is an action applying to one thing.
Report copulating: say "This isn't that sort of game.".

Understand the command "screw" as something new.
Understand "screw [something]" or "fuck [something]" as copulating.

Instead of swearing obscenely:
	say "Real princesses do not use such language."

Instead of swearing mildly when the Wedding Ceremony is happening:
	say "The priest blushes profusely and continues the ceremony."	

Chapter - Affection

Instead of attacking Roland:
say "You would never attack [Roland]! Except possibly with kisses."

Check kissing when the Wedding Ceremony is happening:
say "There will be time for affections later." instead.

[embrace, hug]
Instead of kissing Roland:
say "You'll have your chance soon enough!"

Instead of touching Roland:
say "You give [Roland]'s hand a squeeze."

Instead of kissing the player:
say "Not right now, perhaps."

[TODO: kissing/etc anyone who isn't Roland, including the Player]

Instead of taking Roland:
say "To be your lawfully wedded [if Roland is male]husband[otherwise]wife[end if]? Yes, Elizabeth. Be patient."

Marrying is an action applying to one thing.
Understand "marry [someone]" as marrying.

Carry out marrying someone:
say "Your heart belongs to [Roland]."

Instead of marrying the dragon:
say "That would be very weird."

Does the player mean marrying Roland:
it is likely.

Instead of marrying Roland:
say "Yes, Elizabeth. That's why you[']re here."

Instead of marrying the Jerk:
say "No. Absolutely not."

Instead of kissing the Jerk:
say "You're really not in the mood to do that."

Instead of touching the Jerk:
try kissing the Jerk.

Understand the command "pet" as "kiss".

Instead of kissing the awake dragon: say "The dragons nostrils flare as you move closer. You take a step back."
    
Loving is an action applying to one thing.
Understand "love [someone]" as loving.

Carry out loving something:
say "You are such a kind, loving person."

Instead of loving Roland:
say "You do!"

Instead of loving the Jerk:
say "You're no longer certain that you do."

Chapter - Magic Words

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Casting plugh is an action applying to nothing.
Understand "plugh" or "say plugh" as casting plugh.

The necklace is a wearable thing. The description is "A heart-shaped pendant on a gold chain[if the necklace is lit]. It is glowing with a soft white light[end if]." Understand "chain" and "heart" and "pendant" as necklace. Understand "light" as necklace when the necklace is lit.

Instead of casting XYZZY:
	if the Wedding Ceremony is happening and the player does not enclose the necklace:
		say "POOF! Your fairy godmother appears. [run paragraph on]";
		say "She smiles at you and places [a necklace] around your neck. Then she fades out of view.";
		now the player wears the necklace;
	otherwise if the location is a forest room and the torch is unlit and the torch is enclosed by the player:
		say "POOF! The torch suddenly flares up with light.";
		now the torch is lit;
	otherwise:
		say "Nothing happens." [TODO]

Instead of casting PLUGH:
	if the Wedding Ceremony has ended and the player does not enclose the necklace and the vial has not been handled:
		say "POOF! Your fairy godmother appears. [run paragraph on]";
		say "'Tsk,' she says. 'Poor girl. I'm not sure I can help you with this one.' She pauses and rummages around in her pockets, pulling out [a vial]. She hands it to you. 'This is the best I can do. Use it wisely.' Then she vanishes, as quickly as she appeared.";
		move the vial to the player;
	otherwise if the player encloses the necklace:
		if the necklace is lit:
			say "[The necklace] abruptly stops glowing.";
			now the necklace is not lit;
		otherwise:
			say "[The necklace] suddenly begins to glow.";
			now the necklace is lit;
	otherwise if the necklace is in the location:
		say "You need to be holding [the necklace] for that to work.";
	otherwise:
		say "Nothing happens." [TODO]
    
Instead of attacking the vial:
	say "The vial seems to be made out of indestructible glass."

After dropping the vial:
	say "You drop [the vial]. It bounces harmlessly on the ground";
	if the vial is open and the oil is in the vial:
		say ". The lid snaps shut in the process, and you don't lose more than a few drops of [the oil]";
		now the vial is closed;
	say ".".
		
Chapter - Other

Instead of going nowhere from the Garden:
say "You're not sure you actually want to get married. How well do you even know [Roland]? You hand your bouquet to the nearest guest and walk off.";
end the game saying "And they didn't get married after all!"

Instead of singing:
say "You sing a few bars of a lullaby your mother used to sing to you."

Humming is an action applying to nothing.
Understand "hum" as humming.
Carry out humming: say "You quietly hum to yourself."

Instead of singing or humming when the Wedding Ceremony is happening:
say "You're so happy you could literally burst into song. But you don't. Because there will be plenty of time for singing after the ceremony."

Chapter - Liquids

A fluid container is a kind of container. A fluid container is usually transparent.
A fluid is a kind of thing.

Pouring it onto is an action applying to two things.

Check pouring something onto something:
    if the noun is not a fluid, say "You can't pour [the noun]." instead; 
    if the noun is the second noun, say "You can hardly pour [the noun] onto itself." instead; 

Understand "pour [fluid container] on/onto [something]" as pouring it onto.
Understand "empty [fluid container] on/onto [something]" as pouring it onto. 
Understand "pour [fluid] on/onto [something]" as pouring it onto.

Carry out pouring it onto:
say "You pour [noun] onto [second noun]."

Section - Oil

A vial is a closed openable fluid container.

Instead of examining a fluid container, say "In [the noun] [is-are a list of things in the noun]."

The description of the vial is "It's a vial, containing a dark liquid."

Check inserting anything into the open vial:
if the noun is not a fluid, say "The vial is too small to contain that." instead;
if the noun is the oil, say "That is already in the vial." instead.

Instead of taking the oil:
say "You don't want to touch that with your bare hands."

The oil is a fluid in the vial. The description is "A thick, black liquid that appears to be oil." Understand "liquid" and "oily black liquid" as oil. The printed name is "oily black liquid".

Rule for deciding whether all includes the oil: it does not.

Instead of tasting the vial:
try drinking the vial.

Instead of tasting the oil:
try drinking the oil.

Instead of drinking the vial:
try drinking the oil.

Before pouring the oil onto something:
if the vial is not open, try silently opening the vial.

Before putting the oil on something:
if the vial is not open, try silently opening the vial.

Before combining the oil with something:
if the vial is not open, try silently opening the vial.

Instead of pouring the vial onto something:
try pouring the oil onto the second noun.

Instead of drinking the oil:
	say "As you bring [vial] towards your mouth, you catch a whiff of the liquid inside and gag. Drinking that seems like a bad idea."
	
Instead of smelling the vial:
try smelling the oil;

Instead of smelling the oil:
	say "It's pretty foul-smelling."
	
Instead of putting a fluid on something:
try pouring the noun onto the second noun.

Instead of putting a fluid container on something:
try pouring the noun onto the second noun.

Instead of pouring the oil onto something:
	if the second noun is the handful of rags and the player is wearing the handful of rags:
		say "Maybe you should remove them first. You don't really want the oil all over your skin.";
	otherwise if the second noun is the torch or the second noun is the handful of rags:
		say "You pour [the oil] onto [the second noun] and discard the empty [vial].";
		now the oil is part of the second noun;
		remove the vial from play;
	otherwise if the second noun is the oil or the second noun is the vial:
		say "It is rather difficult to pour something on itself.";
	otherwise if the second noun is the branch:
		say "The oil drips right off the branch. Maybe if you wrapped something around the branch first.";
	otherwise if the second noun is the player:
		say "Ew. You really don't want that all over your skin.";
	otherwise if the second noun is the embers:
		try burning the oil;
	otherwise:
		say "You annoint [the second noun] with a few drops of oil."

Chapter - Fire

Chapter - Knocking

Knocking is an action applying to one thing. Understand "knock [something]" or "knock on [something]" as knocking. 

Knocking again is an action applying to nothing. Understand "knock again" as knocking again.

Instead of knocking again when the location is Cave Exterior:
try knocking the Cave Door.

Does the player mean knocking a door: it is likely. 

Before knocking an open door, say "The door is already open." instead.

Carry out knocking a locked door:
say "You grab the knocker and bang on [the noun]."

The knocker is part of the Cave Door. The description is "It's a golden knocker in the shape of a dragon's tail."
    
Before knocking an unlocked door, say "You knock on [the noun], but there is no response." instead.

Before knocking an unlocked door when the dragon is in the location and the dragon is not asleep, say "There's no need to knock on the door. The dragon is right here." instead.

Before opening a locked door:
say "The door is locked. Perhaps you should try knocking." instead.

Check knocking a person (this is the redirect knocking a person to attacking rule): 
try attacking the noun instead. 

Instead of knocking the knocker:
try knocking the Cave Door.

Check knocking when the noun is not a door and the noun is not a person (this is the generic block knocking rule): 
say "You give [the noun] a gentle rap." instead.

Chapter - Conversation

Dancing is an action applying to nothing. 
Understand "dance" or "waltz" as dancing.

Carry out dancing:
say "You practice a few steps of the Pemberletten waltz."

Instead of dancing when the Wedding Ceremony is happening:
say "You shuffle your feet unnoticeably underneath your floor-length gown."

Crying is an action applying to nothing.
Understand "cry" or "sob" or "wail" as crying.

Pouting is an action applying to nothing.
Understand "pout" as pouting.
Carry out pouting: say "You pout sullenly."

Instead of pouting when the Wedding Ceremony is happening:
say "You stick your bottom lip out cutely. [Roland] smiles at you."

Carry out crying:
say "You sit down and have a good cry. It makes you feel better."

Instead of crying when the Wedding Ceremony is happening:
say "You're suddenly overcome with emotion. You dab at your eyes with the end of the ribbon on your bouquet."

default response for Father Alfred:
  say "[father alfred] smiles kindly at you and continues the ceremony."
  
Instead of asking Roland to try doing anything during Wedding Ceremony:
say "You lean in towards [Roland] and whisper in [possessive] ear. [Roland] smiles at you, shaking [possessive] head."

default response for Roland:
say "You lean in towards [Roland] and whisper in [possessive] ear. [Roland] smiles at you and holds a finger over [possessive] lips in an exaggerated 'shush' motion."	

default give-show response for the Jerk:
say "[Roland] doesn't seem interested in that."

default ask-tell response for the Jerk:
say "[Roland] quietly glares at you."
    
Instead of saying hello to someone when the greeting type is explicit:
	try quizzing the noun about the noun instead. 
	
Shouting is an action applying to nothing.
Shouting at is an action applying to one thing.

Understand "scream" and "yell" and "shout" as shouting.
Understand "scream at [someone]" and "yell at [someone]" and "shout at [someone]" as shouting at.

carry out shouting:
say "You let out a high-pitched cry."

Instead of shouting when the Wedding Ceremony is happening:
say "You're very excited, but there's no need to yell."

carry out shouting at someone:
say "You shout at [the noun]."

Smiling is an action applying to nothing.
Understand "smile" as smiling.

Carry out smiling:
say "You smile happily."

Instead of smiling at the dragon:
say "You are not feeling particularly friendly, but you force yourself to smile at [the dragon]."

Smiling at is an action applying to one thing.
Understand "smile at [someone]" as smiling at.

Carry out smiling at someone:
say "You smile warmly at [the noun]."

Instead of smiling at the Jerk:
say "You grit your teeth and force yourself to smile at [Roland]."

Forgiving is an action applying to one thing.
Understand "forgive [someone]" as forgiving.
Carry out forgiving: try apologizing instead.

Apologizing is an action applying to nothing.
Understand "apologize" as apologizing.
Carry out apologizing: say "You are such a kind person."

Instead of apologizing during aftermath: try forgiving the Jerk.

Instead of forgiving the Jerk:
say "You sigh and reach out to take [Roland]'s hand. [capital-Subjective] jerks away at your touch. '[Roland]...', you start, but [subjective] walks out of the cave, slamming the door behind [objective].";
end the game saying "And they didn't get married after all!"

Instead of forgiving the dragon:
say "You smile gently and say, 'It's ok, Dragon. I forgive you.' The dragon just laughs." [TODO: possible alternative solution]

[TODO]
Rule for amusing a victorious player:
say "[LINE BREAK]Have you tried...[LINE BREAK]- casting xyzzy during the wedding ceremony?[LINE BREAK]- marrying another princess?[LINE BREAK]- not getting married?[LINE BREAK]- bribing the dragon?[LINE BREAK]- singing? (You might find it quite soothing.)[LINE BREAK]- dying? (Not particularly soothing, to anyone involved.)"

Volume - Testing
    
test wedding with "z/z/z/z/z/yes".
test ruins with "search rubble/take bag/make dress/n".
test burnt with "x trail/take branch/x tree/plugh".
test torch with "make torch/pour vial on torch/s/light torch".
test maze with "ne/e/s/s/w/n".
test dragon with "knock on door/g".
test sing with "sing/g/g/in".
test me1 with "test wedding/test ruins/test burnt/test torch/n".
test me with "test me1/test maze/test dragon".
test me2 with "test me/test sing".