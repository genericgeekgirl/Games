"Holiday Ninjas" by "Adri".

The story creation year is 2013.
The release number is 1.
The story headline is "A tiny adventure".
The story genre is "slice of life".
The story description is "A tiny story about four tiny ninjas and something."

when play begins:
say "something or other".

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

The maximum score is 100.
Use American dialect, full-length room descriptions, and the serial comma.

Chapter - The Parser

Understand "about" or "credits" as requesting the about text.
Requesting the about text is an action out of world.
Carry out requesting the about text: say "'[story title]' about text."

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

The Center Room is a room. The printed name is "Bedroom". "This is the dormitory room you share with your three closest friends (and one very large inhabitant you don't see very often). There is a bed to the north, a wardrobe to the east, a bookshelf to the south, a food storage area to the west and a desk in the northwest corner. There is a mouse hole in the southeast corner of the room, next to the bookshelf.".

Chapter - Black Room (bed)

The bed is north of Center Room and south of Black Room. It is a open unopenable door and scenery.
The description is "[if the location is the center room]The bed is unmade, as always. The black ninja lives underneath it.[otherwise]You look up at the underside of the bed. It's not very interesting."

The Black Room is a room.
The printed name is "Under the Bed".
"The rest of the room is south, and there's a particularly dusty looking corner to the east."

Instead of examining up when location is Black Room:
say "You see the bottom of the bed."

Chapter - Dusty Corner and Web

The Dusty Corner is northeast of Center Room and east of Black Room.
The printed name is "Far Corner of the Bed". "This corner doesn't seem to get cleaned often.
There is a rather large spider web stretched between the foot of the bed and the wall. The rest of the room is southwest."

The web is a supporter in the Dusty Corner. It is scenery. Understand "spider web" as web.

The description of the web is "The spider has woven the words 'MERRY XMAS' into its web."

Instead of searching the web:
say "There is nothing on the web. Except for that angry-looking spider."

Chapter - Blue Room (wardrobe)

The wardrobe is east of Center Room and west of Blue Room. It is a open unopenable door and scenery.
Understand "closet" or "warddrobe" or "clothes" and "clothing" as wardrobe.
The description is "[if the location is the center room]It's a freestanding wardrobe, full of clothing. The blue ninja lives inside.[otherwise]You see some clothing. None of it is particularly interesting." 

The Blue Room is a room.
The printed name is "Inside the Wardrobe".
"The rest of the room is west."

Instead of exiting from blue room:
try going west.

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

Instead of searching the nest:
	if the mouse is hostile:
		say "The mouse hisses at you. Maybe you can distract it somehow?";
	otherwise:
		say "You don't find anything of any importance."

Chapter - Green Room (bookshelf)

The bookshelf is south of Center Room and north of Green Room. It is a open unopenable door and scenery.
The description is "[if the location is center room]The bookshelf is piled high with books and knicknacks. The green ninja lives on the bottom shelf, behind a row of textbooks. You can see a mouse hole to the left of the bookshelf, in the southeast corner of the room.[otherwise]You see a bunch of textbooks. None of it is particularly interesting."
Understand "books" and "textbooks" and "bookcase" and "book shelf" and "book case" and "shelf" as bookshelf.

The Green Room is a room. The printed name is "On the Bookshelf". "The rest of the room is north."

The hole is scenery in the Green Room. 
Understand "mousehole" and "mouse hole" as hole.
Instead of examining the hole:
say "The mouse hole is next to the bookshelf. You can't see it from here." 

Chapter - Hallway

The Hallway Door is southwest of Center Room. It is a unopenable door and scenery.
The description is "There is a door here, leading out to the hallway."

Instead of going southwest when the location is Center Room: say "The door is closed."
Instead of opening Hallway Door: say "There's no way you can open that door by yourself."

Chapter - Red Room (fridge)

The fridge is west of Center Room and east of Red Room. It is a open unopenable door and scenery.
The description is "[if the location is center room]There's a mini fridge and a set of shelves piled high with packets of ramen. The red ninja lives over there.[otherwise]It's the back of the fridge."
Understand "food storage area" and "food" and "storage" and "food storage" and "refrigerator" and "mini fridge" and "shelves" as fridge when the location is center room.

Instead of entering fridge: say "[if the location is center room]The door is closed.[otherwise]The door is on the other side."

Instead of opening fridge: say "[if the location is center room]You're unable to get the door open without help.[otherwise]You can't reach the door from here."

The Red Room is a room.
The printed name is "Behind the Mini Fridge".
"The rest of the room is east."

Chapter - Desk Area (desk)

The desk is northwest of Center Room and southeast of Desk Area. It is a open unopenable door and scenery.
The description is "[if the location is center room]There is a desk in the corner, underneath the window.[otherwise]You are underneath the desk."
Understand "window" as desk.

The Desk Area is a room.
The printed name is "Below the Desk".
"The rest of the room is southeast."

Instead of examining up when location is Desk Area: say "You see the bottom of the desk."

Understand "climb [direction]" as going.
Instead of climbing the desk: try going up.
Instead of going up from the desk area: say "There is no need for you to go up there."


Volume - Characters

The player is in the Center Room.

Section - Black Ninja

The black ninja is a person in the Black Room. "The tiny [black ninja] is here."
The description is "This ninja is dressed in black and carries [a shuriken]."

Section - Red Ninja

The red ninja is a person in the Red Room. "The tiny [red ninja] is here."
The description is "This ninja is dressed in red and carries [a sai]."

Section - Blue Ninja

The blue ninja is a person in the Blue Room. "The tiny [blue ninja] is here."
The description is "This ninja is dressed in blue and carries [a kama]."

Section - Green Ninja

The green ninja is a person in the Green Room. "The tiny [green ninja] is here."
The description is "This ninja is wearing green and carries [a nunchaku]."

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
say "You give [the F] to [the mouse]. It grabs it out of your hands and retreats to the corner of the nest with it.";
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

Instead of listening:
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
	say "You wait."
	
Instead of pushing or pulling or turning scenery:
say "You try with all your might, but it barely moves."

Instead of taking scenery:
  say "There's no way you could lift that. Nor do you have any reason to."

Section - Attacking and Cutting

Understand the command "cut" as something new.
Does the player mean cutting something with a knife: it is likely.

Cutting it with is an action applying to two things.
Understand "cut [something] with [something]" as cutting it with.

Carry out cutting something with something:
if the second noun is a knife, try attacking the noun;
otherwise say "That isn't sharp enough to cut through anything.";

Instead of attacking a person (called P):
	if the noun is the player:
		say "There no need for such violence.";
	otherwise if the noun is the mouse:
  		say "Surely there's a better way to resolve this.";
	otherwise:
		say "[The P] is your friend. You have no reason to attack them.";

Chapter - Physical Interactions

Instead of searching someone: try touching the noun.

Understand the command "hug" as something new.
Hugging is an action applying to one thing.
Understand "hug [someone]" as hugging.

Instead of kissing someone (called P):
	if P is the player:
		say "You kiss your hand. You feel silly.";
	otherwise if P is the mouse:
		say "[mouse-kiss].";
	otherwise:
		say "You don't think [the P] would care for that. Maybe they would appreciate a hug instead."

To say mouse-hug: say "[if the mouse is friendly]You give [the mouse] a friendly pat. It bruxes softly[otherwise][The mouse] snaps at you[end if]"

To say mouse-kiss: say "[if the mouse is friendly]You blow a raspberry on [the mouse]'s tummy. It seems to giggle in response[otherwise]That doesn't seem wise[end if]"

Instead of hugging someone (called P):
	if P is the player:
		say "You give yourself a quick hug. You feel better.";
	otherwise if P is the mouse:
		try touching the mouse;
	otherwise:
		say "You give [the P] a quick hug.".

Instead of touching the mouse: say "[mouse-hug]."
Understand "pet [someone]" as touching.
                                
Chapter - Conversation

Instead of saying hello to someone when the greeting type is explicit:
        try quizzing the noun about the noun instead.
        
default response for the player:
	say "You mumble incoherently to yourself."

[ After asking the dragon about a topic listed in the Table of Draconic Conversation: say "reply entry". ]

[ Instead of telling someone  about a topic: try asking the person  about the topic understood. ]

[ Instead of quizzing dragon about dragon: try asking dragon about "dragon". ]

[
Table of Conversation
topic reply
"topic" "reply"
]
        
response of red ninja when asked about red ninja:
say "Something."

response of black ninja when asked about black ninja:
say "Something."

response of blue ninja when asked about blue ninja:
say "Something."

response of green ninja when asked about green ninja:
say "Something."

[TODO: responses when asked about each other]
                
response of red ninja when asked about sai:
say "[The red ninja] says, 'I always wanted to be like Raphael when I grew up.'"
	
response of green ninja when asked about nunchaku:
say "[The green ninja] says, 'Your [a random weapon carried by the player] is very nice, but my nunchaku is better.'"
	
response of blue ninja when asked about kama:
say "[The blue ninja] says, 'I love my kama.'"

response of black ninja when asked about shuriken:
say "[The black ninja] says, 'Something about [the shuriken].'"

default tell response for a person (called P):
say "[The P] doesn't seem to care about that."

default ask response for a person (called P):
say "[The P] [one of]shakes his head.[or]shrugs uncertainly.[or]says, 'I don't know about that.'[at random]".

default give-show response for a person (called P):
say "[The P] smiles at you and shakes his head. '[one of]No thank you[or]No thanks[or]I don't need that[at random].'"


Volume - Objects

Chapter - Weapons

A weapon is a kind of thing.
A knife is a kind of weapon.

Instead of dropping a weapon:
say "It's better if you do not leave that lying around."

The shuriken is a knife carried by the black ninja.
The description is "It's a tiny, four-pointed throwing star."
Understand "throwing star" and "star" as shuriken.

The sai is a knife carried by the red ninja.
The printed name is "pair of sai".
The description is "It's a set of tiny three-pronged daggers."
Understand "daggers" or "dagger" as sai.

The nunchaku is a weapon carried by the green ninja.
The printed name is "set of nunchaku".
The description is "It's a pair of tiny sticks connected with a chain."
Understand "nunchucks" and "sticks" as nunchaku.

The kama is a knife carried by the blue ninja.
The description is "It's a tiny curved blade with a wooden handle."
Understand "blade" as kama.

Instead of taking a weapon:
say "You should never touch another ninja's weapon without permission."
	
Asking permission is an action applying to nothing.
Understand "ask permission" as asking permission.
Asking for permission is an action applying to one thing.
Understand "ask [someone] for permission" as asking for permission.
Carry out asking for permission:
try asking permission.
Carry out asking permission:
say "Maybe he'll let you play with it later."

Chapter - Cookie

The cookie is a thing. It is edible. The description is "It is a cookie. Yum."

The player carries the cookie.
		
Chapter - Other objects

The ramen is scenery in the center room. The description is "Ah, ramen."

Instead of taking or eating the ramen: say "That's plainly inedible."

Volume - Inappropriate Conduct

Copulating is an action applying to one thing.
Understand the command "screw" as something new.
Understand "screw [something]" or "fuck [something]" as copulating.
Report copulating: say "This isn't that sort of game.".

Instead of swearing obscenely:
say "something."

Instead of swearing mildly:
say "something."
                        
        
Volume - End Game

[
Every turn when the player is wearing the hat:
	if the player is wearing the bow tie:
		Increase score by 25;
		say "something";
		end the story finally saying "You are jaunty and stylish!"
]
                		
Rule for amusing a victorious player:
say "[LINE BREAK]Have you tried...[LINE BREAK]- stuff".

