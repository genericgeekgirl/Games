"The Mundane Tale of the Morning After" by "Adri".

The story creation year is 2014.
The release number is 1.
The story headline is "A tiny anti-adventure".
The story genre is "slice of life".
The story description is "a tiny story about a not-so-tiny headache".

Release along with cover art, an interpreter and a "Genericgeekgirl" website.

when play begins:
	say "Oof. Your head. You remember very little about last night, but apparently you had an extremely good time at the party.[paragraph break]Judging from how dark the room is, you're guessing it's fairly late in the afternoon. But all you want to do is take care of your hangover and go home and hide from the world for the rest of the day."

Discovery is a scene.
Discovery begins when the Black Room has been visited and the Red Room has been visited.
When Discovery begins:
say "Oh. Right. You're pretty sure you made brunch plans with your friends today. If you hurry, you may still be able to catch them[if the player is sick]. But first you need to deal with this pounding headache[otherwise if the player does not carry the nunchaku]. But first, you ought to figure out where you left your nunchaku[end if]."

test me with "se/w/take cookie/e/se/give cookie to mouse/search nest/eat aspirin/out/n/s/s/take card/n/open fridge/take nunchaku/close fridge/sw".

Volume - Basic Setup

Chapter - Extensions

Include Hidden Items by Krister Fundin.
Include Conversational Defaults by Eric Eve.
Include Conversation Responses by Eric Eve.
Include Basic Screen Effects by Emily Short.
Include Case Management by Emily Short.
Include Reversed Persuasion Correction by Juhana Leinonen.
Include Plurality by Emily Short.
Include Punctuation Removal by Emily Short.

Chapter - Other Setup

Use no scoring.
Use American dialect, full-length room descriptions, and the serial comma.

Chapter - The Parser

Understand "about" or "credits" as requesting the about text.
Requesting the about text is an action out of world.
Carry out requesting the about text: say "'[story title]' is [story description]. It was written for the 7th annual New Year's Minicomp, and as such it is tiny and ridiculous and unpolished. Found a bug? Let me know at <genericgeekgirl@gmail.com>."

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Understand "plugh" or "say plugh" as casting xyzzy.
Understand "plover" or "say plover" as casting xyzzy.
Carry out casting xyzzy: say "Real ninjas do not use such language."

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

Understand "start" as restarting the game.

Understand "* [text]" as a mistake ("Noted.").

After reading a command:
remove stray punctuation.

To say as the parser: say bold type.
To say as normal: say roman type.

[------------------------------------------------]

Volume - Environment

Chapter - Looking Around

Instead of examining a direction (called the direction looked):
	let the destination be the room-or-door the direction looked from the location;
	if the destination is a room:
		say "You see [the destination in lower case] in that direction.";
	otherwise if the destination is a door:
		if the location is center room:
			try examining the destination;
		otherwise:
			say "You see [the other side of the destination in lower case] in that direction."; 
	otherwise:
		say "You don't see anything in that direction."

Chapter - Center Room

The Center Room is a room. The printed name is "Bedroom". "This is the dormitory room you share with your three closest friends (and one rather large inhabitant you don't see very often). There is a bed to the north, a wardrobe to the east, a bookshelf to the south, a pantry and refrigerator to the west and a desk in the northwest corner. There is a mouse hole in the southeast corner of the room, next to the bookshelf. The door leading out into the hallway is southwest."

Chapter - Black Room (bed)

The bed is north of Center Room and south of Black Room. It is a open unopenable door and scenery.
The description is "[if the location is the center room]The bed is unmade, as always. The black ninja lives underneath it.[otherwise]You look up at the underside of the bed. It's not very interesting."

The Black Room is a room.
The printed name is "Under the Bed".
"The rest of the room is south, and there's a particularly dusty looking corner to the east.[paragraph break]The black ninja is not here."

Instead of examining up when location is Black Room:
say "You see the bottom of the bed."

Chapter - Dusty Corner and Web

The Dusty Corner is northeast of Center Room and east of Black Room.
The printed name is "Far Corner of the Bed".
"This corner doesn't seem to get cleaned often. There is a rather large spider web stretched between the foot of the bed and the wall. The rest of the room is southwest."

The web is a supporter in the Dusty Corner. It is scenery. Understand "spider web" as web.

The description of the web is "The spider has woven the words 'GO AWAY' into its web."

Instead of searching the web:
say "There is nothing on the web. Except for that angry-looking spider."

Chapter - Blue Room (wardrobe)

The wardrobe is east of Center Room and west of Blue Room. It is an unopenable door and scenery.
Understand "closet" or "wardrobe door" as wardrobe.
The description is "It's a freestanding wardrobe, full of clothing and shoes. The door is closed. The blue ninja lives inside."

Instead of opening the wardrobe:
	say "It is generally considered polite to knock first."

Knocking on is an action applying to one thing.
Understand "knock on [something]" as knocking on.

Carry out knocking on something:
say "You give [the noun] a quick rap. Nothing happens."

Does the player mean knocking on the wardrobe: it is likely.

Instead of entering the wardrobe:
try knocking on the wardrobe.

Instead of going east from the Center Room:
try knocking on the wardrobe.

Instead of knocking on the wardrobe: 
say "You rap loudly on the door to the wardrobe[if the player is sick]--cringing at the sound--[otherwise], [end if]but there is no answer."

Chapter - MousePad (mouse hole) and nest

The mousehole is southeast of Center Room and northwest of the MousePad. It is a open unopenable door and scenery.
Understand "hole" and "mouse hole" as mousehole.
The description is "[if the location is center room]There is a mouse hole in the southeast corner of the room. You can't see inside from here.[otherwise]The mouse hole leads back out to the room."

The MousePad is a room.
The printed name is "Inside the Mouse Hole".
The description of the MousePad is "The rest of the room is back to the northwest."

Instead of exiting from MousePad: try going northwest.

Chapter - Nest

The nest is in the MousePad. It is scenery. The description is "This is the mouse's nest. It is full of various treasures."

The treasures is in the MousePad. It is scenery. It is plural-named. The description is "It's a collection of things the mouse has found." Understand "treasure" as treasures.

Instead of searching treasures: try searching nest.

Instead of taking treasures:
say "You dig through the nest.";
try searching nest.

Understand "dig through [something]" as searching.

Instead of taking nest:
say "You can't take the entire nest. The mouse would not appreciate that, and you have no use for it."

Instead of searching the nest:
	if the mouse is hostile:
		say "The mouse hisses at you. Maybe you can distract it somehow?";
	otherwise if the aspirin is hidden:
		reveal the aspirin;
		say "You find [an aspirin] in the nest. You take it.";
		move the aspirin to the player;
	otherwise:
		say "It's mostly bits of string and dried macaroni. None of it is particularly useful to you right now."

Chapter - Green Room (bookshelf)

The bookshelf is south of Center Room and north of Green Room. It is a open unopenable door and scenery.
The description is "[if the location is center room]The bookshelf is piled high with books and knicknacks. You have made your home on the bottom shelf, behind a row of textbooks. You can see a mouse hole to the left of the bookshelf, in the southeast corner of the room.[otherwise]You see a bunch of textbooks. None of it seems particularly interesting to you right now."
Understand "books" and "textbooks" and "bookcase" and "book shelf" and "book case" and "shelf" as bookshelf.

[TODO]
The Green Room is a room. The printed name is "On the Bookshelf". "You live here. It's a pretty nice place to live, so far as wardrobes go. There are, to the best of your knowledge, no secret passages to Ninja Narnia.[paragraph break]The rest of the room is north."

The hole is scenery in the Green Room. 
Understand "mousehole" and "mouse hole" as hole.
Instead of examining the hole:
say "The mouse hole is next to the bookshelf. You can't see it from here." 

Chapter - Hallway

The Hallway Door is southwest of Center Room. It is an unopenable door and scenery.
The description is "There is a door here, leading out to the hallway."

Instead of opening the Hallway Door:
say "The door is too large and heavy for you to open. You can easily crawl underneath."

Leaving the room is an action applying to nothing.
Understand "crawl" and "crawl underneath" and "crawl underneath door" and "crawl under door" as leaving the room.
Instead of leaving the room when the location is Center Room: try going southwest.

Instead of going southwest when the location is Center Room:
	if the refrigerator is open:
		say "You should close the refrigerator first! Were you raised in a ninja barn?";
	otherwise if the player is sick:
		say "You feel terrible. Leaving the room is the last thing on your mind right now.";
	otherwise if the player does not carry the nunchaku:
		say "You should find your nunchaku first. It is dangerous to go outside without a weapon.";
	otherwise:
		say "Now that you've recovered your nunchaku and are starting to feel better, you should go catch up with your friends.";
		end the story finally saying "YAY! Mimosas for everyone!"


Chapter - Red Room (fridge)

The refrigerator is a closed openable container in the Center Room. It is scenery.
Understand "fridge" and "mini fridge" as refrigerator.
The description is "It's a standard mini fridge. The big person whom you share your living space with keeps it stocked with beer and junk food."

Before opening the refrigerator when the refrigerator is closed:
	if the player does not carry the nunchaku:
		if the player does not carry the id card:
			say "You usually use your nunchaku to open the refrigerator. But they seem to have gone missing. Maybe you can find something you can wedge the door open with." instead;
		otherwise:
			say "You slip the card between the door and the casing. You lean into the card with all your might, forcing the door open. The card almost snaps in the process.";
	otherwise:
		say "You loop one of your nunchucks around the handle and tug. The door opens. The refrigerator is still empty. You close it again." instead.
		
After opening the refrigerator for the first time:
say "The refrigerator is disturbingly devoid of both beer and snacks. But your nunchaku are here. You're too tired to question it." instead.

The red-door is west of Center Room and east of Red Room. It is a open unopenable door and scenery.
The description is "[if the location is center room]There's a mini fridge and a set of shelves piled high with packets of ramen. The red ninja lives over there.[otherwise]It's the back of the fridge."
Understand "pantry" and "shelves" as red-door.

The Red Room is a room.
The printed name is "Behind the Mini Fridge".
"The rest of the room is east.[paragraph break]There is no sign of the red ninja."

The fridge is scenery in the Red Room. The description is "It's a standard mini fridge. The door is on the other side."
Understand "mini fridge" and "refrigerator" as fridge.

Instead of doing anything except examining with the fridge:
say "The door is on the other side."


Chapter - Desk Area (desk)

The desk is northwest of Center Room and southeast of Desk Area. It is a open unopenable door and scenery.
The description is "[if the location is center room]There is a desk in the corner, underneath the window.[otherwise]You are underneath the desk."
Understand "window" as desk.

The Desk Area is a room.
The printed name is "Below the Desk".
"This is where you fell asleep after the party, because you were too drunk to stumble home.[paragraph break]The rest of the room is southeast."

Instead of examining up when location is Desk Area: say "You see the bottom of the desk."

Understand "climb [direction]" as going.
Instead of climbing the desk: try going up.
Instead of going up from the desk area: say "There is no need for you to go up there right now."

Volume - Characters

Section - NPC - Green Ninja

The player is in the Desk Area.

The description of the player is "You are a tiny ninja dressed in green from head to toe."
	
A person is either sick or well. A person is usually well. The player is sick.

Section - Mouse

The mouse is an animal in the MousePad.
The mouse is either friendly or hostile. The mouse is hostile.
"There is a [mouse] here, lazing around in its [nest][if the mouse is friendly]. It munches happily on a [a random edible thing carried by the mouse] and ignores you[end if]."
The description is "It's a common brown mouse. It's about twice as tall as you are."

default ask-tell response for the mouse:
say "[The mouse] squeaks at you."

default give-show response for the mouse:
say "[The mouse] sniffs curiously at the [noun], but doesn't seem to want it."

Response of mouse when shown something edible:
say "[The mouse] seems very interested in that. It tries to take it out of your hands."

After giving something edible (called F) to the mouse:
say "You give [the F] to [the mouse]. It grabs it out of your hands and retreats to the far edge of the nest with it.";
move F to the mouse;
now the mouse is friendly.

Instead of taking something edible that is carried by the mouse:
say "[The mouse] doesn't seem eager to give that to you."

Before going from the MousePad when the mouse is friendly:
say "You scurry off before the mouse can ask for a glass of milk."

Section - Spider

The spider is an animal on the web.
The description is "It's a common house spider. It's not very large, but it looks like it won't hesitate to kill you if you bother it." 

Instead of doing anything except examining with the spider:
say "[The spider] bares its fangs at you. You decide to leave it alone."

Instead of doing anything except examining with the web:
say "[The spider] bares its fangs at you. You decide to leave [the web] alone."

Volume - Other Commands

Understand "gnaw [something]" and "nibble [something]" and "nom [something]" and "chew [something]" and "taste [something]" and "lick [something]" as eating.

Instead of listening while sick:
 	say "You hear nothing, save for the ringing in your ears."

Instead of listening while well:
	say "You hear the distant strains of chiptune music. You have no idea where it comes from, but it follows you everywhere."
	
Listening to music is an action applying to nothing.
Understand "listen to music" as listening to music.
Instead of listening to music:
	say "Bleep bleep bloop bleep."

Dancing is an action applying to nothing.
Understand "dance" or "dance to music" as dancing.
Carry out dancing:
	say "You somehow manage to trip. You stand up and brush yourself off."

Instead of singing:
	say "You only sing in the shower."
        	
Instead of waiting:
	say "You sway unsteadily on your feet in a most un-ninja-like manner."
	
Instead of pushing or pulling or turning scenery:
say "You try with all your might, but it barely moves."

Instead of taking scenery:
  say "There's no way you could lift that. Nor do you have any reason to."

Section - Attacking and Cutting

Understand the command "kick" as attack.

Instead of attacking a person (called P):
	if the noun is the player:
		say "There no need for such violence.";
	otherwise if the noun is the mouse:
  		say "Surely there's a better way to resolve this."
		
Chapter - Physical Interactions

Understand the command "hug" as something new.
Hugging is an action applying to one thing.
Understand "hug [someone]" as hugging.

Instead of kissing someone (called P):
	if P is the player:
		say "You kiss your hand. You feel silly.";
	otherwise if P is the mouse:
		say "[mouse-kiss]."
		
To say mouse-hug: say "[if the mouse is friendly]You give [the mouse] a friendly pat. It bruxes softly[otherwise][The mouse] snaps at you[end if]"

To say mouse-kiss: say "[if the mouse is friendly]You blow a raspberry on [the mouse]'s tummy. It seems to giggle in response[otherwise]That doesn't seem wise[end if]"

Instead of hugging someone (called P):
	if P is the player:
		say "You give yourself a quick hug. You feel better.";
	otherwise if P is the mouse:
		try touching the mouse.
		
Instead of touching the mouse: say "[mouse-hug]."
Understand "pet [someone]" as touching.
                                
Chapter - Conversation

Instead of saying hello to someone when the greeting type is explicit:
        try quizzing the noun about the noun instead.
        
default response for the player:
	say "You mumble incoherently to yourself."

Volume - Objects

Chapter - Nunchaku

The nunchaku is a thing in the refrigerator.
The printed name is "set of nunchaku".
The description is "It's a pair of tiny sticks connected with a chain."
Understand "nunchucks" and "sticks" as nunchaku.

Instead of dropping the nunchaku:
say "You're not letting that out of your sight again!"

After taking inventory for the first time:
if the nunchaku is not carried by the player, say "Oh! But where are your nunchaku?"

Chapter - Cookie

The cookie is an edible thing in the Red Room.
The printed name is "piece of cookie".
The description is "It's an extremely stale piece from an oatmeal raisin cookie."

Instead of eating the cookie: say "You hate raisins. Also it's hard as a rock. You would have to be pretty desperate to eat that."

Chapter - ID Card

The id card is a thing in the Green Room.
The description is "This card bears a photo of your not-so-tiny non-ninja roommate."

Chapter - Aspirin

The aspirin is a thing. It is hidden in the nest.
The printed name is "tablet of aspirin".
Understand "tablet" and "tablet of aspirin" as aspirin.
The description is "It is an aspirin tablet."

Instead of eating the aspirin for the first time:
say "You take a tiny bite out of the aspirin. You start to feel better almost immediately.";
now the player is well.

Instead of eating the aspirin:
say "You'd better not. Too much aspirin can make a tiny ninja ill."

Chapter - Ramen

The ramen is scenery in the center room. The description is "Ah, ramen."

Instead of taking the ramen: say "That actually sounds pretty tasty right now. But alas, you are unable to reach it."

Volume - Inappropriate Conduct

Copulating is an action applying to one thing.
Understand the command "screw" as something new.
Understand "screw [something]" or "fuck [something]" as copulating.
Report copulating: say "This isn't that sort of game.".

Understand "swear" and "curse" as swearing mildly.

Instead of swearing obscenely:
say "You rattle off a string of swear words that would make a tiny sailor blush."

Instead of swearing mildly:
try swearing obscenely.
                       
Volume - End Game

[Every turn when the player is well:
	if the player carries the nunchaku:
		say "something urgent".]                		
[Rule for amusing a victorious player:]

