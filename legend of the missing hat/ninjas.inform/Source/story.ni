"The Legend of the Missing Hat" by "Adri".

The story creation year is 2012.
The release number is 1.
The story headline is "A tiny adventure".
The story genre is "slice of life".
The story description is "A tiny story about four tiny ninjas and a tiny top hat".

Release along with cover art and an interpreter.

Chapter - Basic Setup

Include Hidden Items by Krister Fundin.
Include Conversational Defaults by Eric Eve.
Include Conversation Responses by Eric Eve.
Include Case Management by Emily Short.
Include Reversed Persuasion Correction by Juhana Leinonen.

The maximum score is 100.
Use American dialect, full-length room descriptions, and the serial comma.

Understand "about" or "credits" as requesting the about text.
Requesting the about text is an action out of world.
Carry out requesting the about text: say "'The Legend of the Missing Hat' was written for Cover Stories, a minicomp organized by Sam Kabo Ashwell. The cover art was supplied by Justin de Vesine, and I offer my deepest apologies if the resulting game isn't what he hoped for. Thanks so much to my beta testers: Andrew Plotkin, Andrew Schultz, Ed Blair, Felix Pleşoianu, Jacques Frechet, Kevin Jackson-Mead, Marius Müller and Matthew Miller."

After reading a command:
	if the player's command matches the regular expression "^\*":
		say "(Noted.)";
		reject the player's command.

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

Chapter - Play Begins

When play begins:
say "The talent show is tonight, and you promised to emcee. But first you need to find your hat."

Chapter - Environment (Rooms and Doors)

Instead of examining up when location is Desk Area:
say "The top of the desk is in that direction. You can't really see that far."

Instead of examining down when location is Window Area:
say "The floor is in that direction. You can't really see that far."

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

Section - Center Room

The Center Room is a room. The printed name is "Bedroom". "This is the dormitory room you share with your three closest friends. There is a bed to the north, a wardrobe to the east, a bookshelf to the south, a food storage area to the west and a desk in the northwest corner.[if mouse pad has been visited] There is a mouse hole in the southeast corner of the room, next to the bookshelf.[end if]".

Section - Black Room (bed)

The bed is north of Center Room and south of Black Room. It is a open unopenable door and scenery. The description is "[if the location is the center room]The bed is unmade, as always. You live underneath it.[otherwise]You look up at the underside of the bed. It's not very interesting."

Instead of entering bed when the location is Black Room: say "You are already under the bed."

The Black Room is a room. The printed name is "Under the Bed". "This is where you live. The rest of the room is south, and there's a particularly dusty looking corner to the east."

Section - Dusty Corner

The Dusty Corner is northeast of Center Room and east of Black Room. The printed name is "Far Corner of the Bed". "This corner doesn't seem to get cleaned often. There is a rather large spider web stretched between the foot of the bed and the wall. Thankfully its inhabitant is nowhere to be found. The rest of the room is southwest."

Section - Blue Room (wardrobe)

The wardrobe is east of Center Room and west of Blue Room. It is a open unopenable door and scenery. Understand "closet" or "warddrobe" as wardrobe. The description is "[if the location is the center room]It's a freestanding wardrobe, full of clothing. The blue ninja lives inside.[otherwise if the blue ninja is moody]You see the outside of a wardrobe. It's not very interesting.[otherwise]You see some clothing. None of it is particularly interesting." Understand "clothes" and "clothing" as wardrobe.

Instead of entering wardrobe when the location is Blue Room: 
	if the blue ninja is moody:
		say "The blue ninja doesn't want you to come inside.";
	otherwise:
		say "You are already in the wardrobe."

Instead of going east when the location is blue room:
try entering wardrobe.

Instead of exiting from blue room when blue ninja is happy:
try going west.

The Blue Room is a room. The printed name is "[if the blue ninja is moody]Outside[otherwise]Inside[end if] the Wardrobe". "The rest of the room is west."

Before going to Blue Room:
  say "You knock on the door of the wardrobe, and the blue ninja peeks his head out. [if the blue ninja is happy]He invites you inside.[otherwise][line break]"

Section - Mouse Pad (mouse hole)

The mousehole is southeast of Center Room and northwest of the Mouse Pad. It is a open unopenable door and scenery. The description is "[if the location is center room]There is a mouse hole in the southeast corner of the room. You can't see inside from here.[otherwise]The mouse hole leads back out to the room." Understand "hole" and "mouse hole" as mousehole.

Instead of entering mousehole when the location is Mouse Pad: say "You are already inside the mouse hole."

Instead of exiting from Mouse Pad:
try going northwest.

The Mouse Pad is a room. The printed name is "Inside the Mouse Hole". The description of the Mouse Pad is "The rest of the room is back to the northwest."

Section - Green Room (bookshelf)

Before going south from the Center Room:
say "As you approach the bookshelf, you notice a mouse hole to the left of it, in the southeast corner of the room."

The bookshelf is south of Center Room and north of Green Room. It is a open unopenable door and scenery. The description is "[if the location is center room]The bookshelf is piled high with books and knicknacks. The green ninja lives on the bottom shelf, behind a row of textbooks. You can see a mouse hole to the left of the bookshelf, in the southeast corner of the room.[otherwise]You see a bunch of textbooks. None of it is particularly interesting." Understand "books" and "textbooks" and "bookcase" and "book shelf" and "book case" and "shelf" as bookshelf.

Instead of entering bookshelf when the location is Green Room: say "You are already on the bookshelf."

The Green Room is a room. The printed name is "On the Bookshelf". "The rest of the room is north."

The hole is scenery in the Green Room. 
Understand "mousehole" and "mouse hole" as hole.
Instead of examining the hole:
say "The mouse hole is next to the bookshelf. You can't see it from here." 

Section - Hallway

The Hallway Door is southwest of Center Room. It is a unopenable door and scenery. The description is "There is a door here, leading out to the hallway." Understand "doorway" as door.

Instead of going southwest when the location is Center Room: say "The door is closed."

Instead of opening Hallway Door:
say "[if the blue ninja is happy]You should get dressed before you go anywhere.[otherwise]There's no way you can open that door by yourself. And you need to find your hat before you can go anywhere."

Section - Red Room (fridge)

The fridge is west of Center Room and east of Red Room. It is a open unopenable door and scenery. The description is "[if the location is center room]There's a mini fridge and a set of shelves piled high with packets of ramen. The red ninja lives over there.[otherwise]It's the back of the fridge." Understand "food storage area" and "food" and "storage" and "food storage" and "refrigerator" and "mini fridge" and "shelves" as fridge when the location is center room.

Instead of entering fridge: say "[if the location is center room]The door is closed.[otherwise]The door is on the other side."

Instead of opening fridge: say "[if the location is center room]You're unable to get the door open without help.[otherwise]You can't reach the door from here."

The Red Room is a room. The printed name is "Behind the Mini Fridge". "The rest of the room is east."

Section - Desk Area (desk)

The desk is northwest of Center Room and southeast of Desk Area. It is a open unopenable door and scenery. The description is "[if the location is center room]There is a desk in the corner, underneath the window.[otherwise]There is a window above the desk." Understand "window" as desk when the location is center room.

Instead of entering desk: try climbing desk.

Instead of climbing desk when location is Desk Area: try climbing ledge.

The Desk Area is a room. The printed name is "Below the Desk". "You can see sunlight above you. The rest of the room is southeast."

The sunlight is scenery in the desk area. Understand "window" and "sunshine" as sunlight. The description is "There's a window somewhere over the desk."

Section - Window Area (ledge) 

The window is in Window Area. It is scenery. The description is "Sunlight streams in through the window." Understand "sunlight" and "sunshine" as window.

Instead of entering or opening window: say "The window has been painted over. It cannot be opened."

The ledge is up from Desk Area and down from Window Area. It is a open unopenable door and scenery. The description is "[if the location is desk area]There is a window above the desk.[otherwise]The desk is covered in papers and books. None of it is particularly interesting." Understand "desk" as ledge when the location is window area. Understand "edge" and "edge of desk" as ledge.

Understand "climb [direction]" as going.

Instead of entering ledge: try climbing ledge.

Instead of climbing ledge:
	if location is Desk Area:
		try going up;
	otherwise:
		try going down.

The Window Area is a room. The printed name is "On the Desk". "Sunlight streams in through the window. There is a pot here containing tiny purple flowers."

Before going down from the window area:
	if the shuriken is a hook and the shuriken is in the window area:
		say "You slide down the length of yarn. You give the yarn a good yank and the grappling hook returns to you.";
		now the player carries the shuriken;
	otherwise:
		say "It's a far way down. Maybe there's another way." instead.

Before going up from the desk area:
	if the shuriken is a hook and the shuriken is in the window area:
		say "You scramble up the length of yarn.";
	otherwise:
		say "You're unable to reach that. Maybe there's another way." instead.

Chapter - Characters

A person is either moody or happy. A person is usually moody.

Section - Player

The player is in the Black Room.

The description of the player is "You are a tiny black ninja. [if the player is wearing the hat]You are wearing a jaunty hat.[otherwise if the player is wearing the bow tie]You are wearing a stylish bow tie."

Section - Red Ninja

The red ninja is a person in the Red Room. "The tiny red ninja is here, [if the red ninja is moody]nibbling anxiously on a cookie. He seems angry.[otherwise]writing in his new notebook. He seems happy."

The description is "This ninja is dressed all in red and carries a pair of sai. [if the red ninja is moody]He is scowling.[otherwise]He is smiling."

Section - Blue Ninja

The blue ninja is a person in the Blue Room. "The tiny blue ninja [if the blue ninja is moody]stands in the doorway. He doesn't seem eager to invite you inside.[otherwise]is sitting calmly, enjoying his new flowers."

The description is "This ninja is dressed in blue and carries a kama. [if the blue ninja is moody]He looks like he's been crying.[otherwise]He is smiling."

Section - Green Ninja

The green ninja is a person in the Green Room. "The tiny green ninja is [if the green ninja is moody]pacing back and forth.[otherwise]admiring his pretty new trinket."

The description is "This ninja is wearing green and carries a set of nunchaku. [if the green ninja is moody]He seems anxious.[otherwise]He is smiling."

Section - Mouse

The creature is an animal in the Mouse Pad. The creature is either friendly or hostile. The creature is hostile. The printed name is "mouse". Understand "mouse" as creature. "[if the creature is hostile]There is a mouse here, lazing around in its nest.[otherwise]There is a nest here. Its owner is a short distance away, distracted by a cookie."

The description is "It's a common brown mouse. It's about twice as tall as you are."

Chapter - Actions

Section - Throwing things at other things

Understand "hurl [something] at [something]" as throwing it at.
Understand "hurl [something]" as dropping.

The futile to throw things at inanimate objects rule is not listed in the check throwing it at rules.
The block throwing at people rule is listed instead of the block throwing at rule in the check throwing it at rules.

This is the block throwing at people rule: 
	if the second noun is an animal:
		try attacking the second noun instead;     
	otherwise if the second noun is the player:                
		say "Your juggling act needs some work." instead;
    	otherwise if the second noun is a person:
		say "That might be construed as an attack." instead.

Check throwing it at (this is the block juggling rule):
      if the player is carrying the second noun, say "That's an awkward thing to do." instead.

Instead of throwing the cookie at the creature:
  try giving the cookie to the creature:

Instead of throwing something at the web:
  try damaging the web with the noun.
Instead of throwing something at the glint:
  try throwing the noun at the web.

Carry out throwing it at:
	if the noun is not the shuriken:
		say "It's not nice to throw things.". 

Instead of dropping the shuriken:
	if the location is desk area or location is dusty corner:
		say "Maybe you should try throwing it [italic type]at[roman type] something.";
	otherwise:
		say "It's very sharp. You really shouldn't toss it around like that."
		
Instead of putting something on the desk:
try putting the noun on the ledge.
Instead of putting something on the ledge when the location is desk area:
try throwing the noun at the ledge.

Throwing it up is an action applying to one thing.
Understand "throw [something] up" or "throw [something] upwards" as throwing it up.
Carry out throwing it up:
	if the location is desk area:
		try throwing noun at ledge;
	otherwise:
		say "I only understood you as far as wanting to throw [the shuriken]."
		
Carry out throwing the shuriken at something:
	if the second noun is the ledge:
		if the shuriken is a hook:
			now the shuriken is in the window area;
			say "You throw the grappling hook at the desk. It catches in the wood. [run paragraph on]";
			try going up;
		otherwise:
			say "You won't be able to retrieve that. Maybe if you tied something to it?" instead;       
	otherwise if the second noun is the fridge and the shuriken is a hook and the location is center room:
		say "Nice try, but no.";
	otherwise:
		try dropping the shuriken.

Instead of throwing something at the desk when the location is desk area:
  try throwing the noun at the ledge.
Instead of throwing something at the sunlight when the location is desk area:
  try throwing the noun at the ledge.

Before throwing the rope at something:
	if the shuriken is a hook:
		try throwing the shuriken at the second noun instead;
	otherwise if the location is desk area and the second noun is ledge:
		say "You can't seem to throw the yarn that high. Maybe if you tied it to something?" instead;

Section - Creating a grappling hook

Making a grappling hook is an action applying to nothing.
Understand "make grappling hook" or "make a grappling hook" as making a grappling hook.
Carry out making a grappling hook:
	try tying the rope to the shuriken. 

Instead of tying the shuriken to the rope:
  try tying the rope to the shuriken.

Instead of putting shuriken on rope:
  try tying the rope to the shuriken.

Instead of putting rope on shuriken:
  try putting shuriken on rope.

Instead of tying the rope to the shuriken:
  now the rope is part of the shuriken;
  now the shuriken is a hook;
  now the printed name of shuriken is "grappling hook";
  say "You tie the yarn to the shuriken, creating a grappling hook."

Instead of taking rope when shuriken is a hook:
  try untying shuriken.

Instead of untying rope when shuriken is a hook:
try taking rope.

Untying is an action applying to one thing.
Understand "untie [something]" as untying.

Carry out untying:
  say "You would achieve nothing by this."

Instead of untying the shuriken when shuriken is a hook:
	if the location is window area:
		try taking the shuriken;
	otherwise:
 		now the player carries the rope;
		now the printed name of shuriken is "shuriken";
		now the shuriken is not a hook;
		say "You untie the yarn from the shuriken."

Instead of taking the shuriken when location is Window Area:
	say "You should leave that where it is. You'll need it to climb back down."

Section - Damaging the web

Understand "damage [something]" as attacking.
Damaging it with is an action applying to two things.

Instead of touching the web:
say "You don't want to touch that with your bare hands.";

Instead of attacking the web:
		try touching the web.
		
Understand "attack [something] with [something]" as damaging it with.

Carry out damaging something with something when the noun is not the web:
	try attacking the noun.

Carry out damaging the web with something:
	if the web is damaged:
		say "Haven't you done enough damage?";
	otherwise if the web count is 3:
		try attacking the spider;
	otherwise if the second noun is the shuriken:
		if the glint is not available:
			say "Why don't you look more closely at the web before you destroy it?";
		otherwise:
			now the web is damaged;
			move shuriken to the location;					
			if the glint is on the web:
				say "You throw the shuriken at the web, slicing easily through the sticky material. The pearl drops to the ground.";
				remove the glint from play;
				move pearl to the location;
			otherwise:
				say "You throw the shuriken at the web, slicing easily through the sticky material.";
				try fixing the web;		
	otherwise:
		say "It might get stuck. Maybe you have something else you can use?"
											
Section - Writing

Writing in is an action applying to one thing.
Understand "write in/on [something]" as writing in.
Does the player mean writing in the notebook: it is likely.

Carry out writing in:
  say "You can't write on that. Also you have nothing to write with."

Instead of writing in the notebook:
  say "You have nothing to write with."

Writing with is an action applying to two things.
Understand "write on [something] with [something]" as writing with.

Carry out writing with:
  try writing in the noun.

Section - Vocalizations

Section - Other Commands

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Understand "plugh" or "say plugh" as casting xyzzy.
Understand "plover" or "say plover" as casting xyzzy.
Carry out casting xyzzy:
say "Real ninjas do not use such language."

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
	
Instead of waiting:
	say "You can rest later. Right now you need to find your hat."
	
Instead of pushing or pulling or turning scenery:
say "You try with all your might, but it barely moves."

Instead of taking scenery:
  say "There's no way you could lift that. Nor do you have any reason to."

Understand "pet [something]" as touching.

Instead of touching the creature:
say "[if the creature is friendly]You give the mouse a friendly pat. It bruxes softly.[otherwise]The mouse snaps at you."

Before going from the mouse pad when the creature is friendly:
say "You scurry off before the mouse can ask for a glass of milk."

Understand the command "cut" as something new.
Does the player mean cutting something with the shuriken: it is likely.

Cutting it with is an action applying to two things.
Understand "cut [something] with [something]" as cutting it with.

Carry out cutting something with something:
	if the second noun is the shuriken:
		if the noun is the rope:
			say "That's a terrible idea.";
		otherwise:
			try damaging the noun with the shuriken;
	otherwise:
		say "That isn't sharp enough to cut through anything.";

Instead of attacking a person:
	if the noun is the player:
		say "You're not [italic type]that[roman type] upset about the hat, are you?";
	otherwise if the noun is the creature:
  		say "Surely there's a better way to resolve this.";
	otherwise:
		say "He's your friend. You have no reason to attack him.";

Instead of attacking:
	say "There's no need to be so destructive."

Juggling is an action applying to nothing.
Understand "juggle" as juggling.
Carry out juggling:
	if the player carries nothing:
		say "You have nothing to juggle with. That's probably a good thing.";
	otherwise:
		let n be the number of things carried by the player;
		say "You toss [the list of things carried by the player] into the air. You panic as [if n is 1]it[otherwise][the random thing carried by the player][end if] comes back down and duck out of the way. [if n is greater than 1]You drop everything.[otherwise][LINE BREAK]"; 
		repeat with x running through things carried by the player:
			move x to the location;
			
Instead of singing:
	say "You only sing in the shower."

Chapter - Interacting with People

Instead of searching someone: try touching the noun.

Understand the command "hug" as something new.
Hugging is an action applying to one thing.
Understand "hug [someone]" as hugging.

Instead of hugging something:
	if the noun is the player:
		say "You give yourself a quick hug. You feel better.";
	otherwise if the noun is the creature:
		try touching the creature;
	otherwise if the noun is moody:
		say "You try to hug [the noun], but he pushes you away.";
	otherwise if the noun is happy:
		say "You give [the noun] a quick hug.";
	otherwise:
		try kissing the noun.

Section - Informing and Quizzing

The default greeting rule is not listed in any rulebook.

Does the player mean informing or quizzing about the hat: it is likely.
Does the player mean requesting for the hat: it is likely.

Instead of requesting someone for the hat:
	try quizzing the noun about the hat.

Instead of requesting someone for the pencil:
	try quizzing the noun about the pencil.

Understand the command "talk" as something new.
Talking is an action applying to one thing.
Understand "talk to [someone]" as talking.
Carry out talking:
	try quizzing the noun about the noun.

Carry out saying hello to someone when the greeting type is explicit:
	try quizzing the noun about the noun.

Instead of talking when the noun is the player:
	say "You mumble incoherently to yourself."

[red ninja]

response of red ninja when asked about red ninja:
	say "[if the red ninja is moody]The red ninja grumbles. He says, 'Leave me alone. I hate everyone.'[otherwise]The red ninja says, 'Thank you for the notebook. I am feeling much less stressed.'"

response of red ninja when asked about sai:
	say "The red ninja says, [if the red ninja is moody]'They're mine. That's all you need to know.'[otherwise]'I always wanted to be like Raphael when I grew up.'"
	
response of green ninja when asked about nunchaku:
	say "The green ninja says, [if the green ninja is moody]'It's much nicer than your shuriken.'[otherwise]'Your shuriken is very nice, but my nunchaku is better.'"
	
response of blue ninja when asked about kama:
	say "The blue ninja says, [if the blue ninja is moody]'It's kind of a useless weapon, isn't it?'[otherwise]'I love my kama.'"

response of red ninja when shown hat:
	try informing red ninja about hat.
	
response of red ninja when shown bow tie:
	try informing red ninja about bow tie.
	
response of red ninja when asked about "anger":
	try quizzing red ninja about red ninja.

response of red ninja when asked-or-told about hat:
        say "[if blue ninja is moody]The red ninja shrugs. 'I haven't seen it. Maybe someone borrowed it?'[otherwise]The red ninja nods. 'It's a very nice hat.'"

response of red ninja when asked-or-told about bow tie:
	say "The red ninja smirks. 'Nice tie.'"

response of red ninja when asked about cookie:
  say "[if the red ninja is moody]The red ninja growls at you. He says, 'It's mine. You can't have it.'[otherwise]The red ninja smiles and says, 'I love cookies!'"

Instead of taking the cookie when cookie is carried by red ninja:
	say "The red ninja pulls the cookie away. 'Mine!'"

response of red ninja when asked-or-told about notebook:
	if the red ninja is moody:
		try showing the notebook to the red ninja;
	otherwise:
		say "The red ninja smiles at you. 'Sometimes it helps to write down my feelings.'"

Instead of taking the notebook when notebook is carried by red ninja:
	say "Maybe he'll let you see it when he's finished."

response of red ninja when asked about pencil:
	say "The red ninja shrugs. 'I always carry a pencil with me.'"

Instead of taking the pencil when notebook is carried by red ninja:
	say "The red ninja seems to be using that."

default tell response for the red ninja:
say "The red ninja doesn't seem to care about that."

default ask response for the red ninja:
say "The red ninja shakes his head."

[blue ninja]

response of blue ninja when asked about "depression":
	try quizzing blue ninja about blue ninja.
	
response of blue ninja when asked about "sadness":
	try quizzing blue ninja about blue ninja.

response of blue ninja when asked about blue ninja:
	say "[if the blue ninja is moody]The blue ninja sniffles. He says, 'I think you ought to know I'm feeling very depressed.'[otherwise]The blue ninja says, 'I'm feeling much better now. Thank you for the flowers.'"
	
response of blue ninja when shown hat:
	try informing blue ninja about hat.

response of blue ninja when shown bow tie:
	try informing blue ninja about bow tie.

response of blue ninja when asked-or-told about hat:
  say "[if the blue ninja is moody]The blue ninja frowns. 'I think it's somewhere in this mess. I don't feel like looking for it right now.'[otherwise]The blue ninja grins at you. 'It is a rather nice hat, isn't it?'"

response of blue ninja when asked-or-told about bow tie:
	say "The blue ninja smiles. 'It's rather silly. But I think it suits you.'"

response of blue ninja when asked-or-told about bouquet:
	if the blue ninja is moody:
		try showing the bouquet to the blue ninja;
	otherwise:
		say "The blue ninja smiles. 'They're very lovely. Nobody has ever given me flowers before!'"

Instead of taking bouquet when bouquet is carried by blue ninja:
	say "You can't take those back! It would be very mean."

default tell response for the blue ninja:
say "The blue ninja doesn't seem to care about that."

default ask response for the blue ninja:
say "The blue ninja shrugs uncertainly."

response of blue ninja when asked about pencil:
	say "The blue ninja shakes his head. 'I might have one. But I'm not going to look for it.'"
	
[green ninja]

response of green ninja when asked about "envy":
	try quizzing green ninja about green ninja.
	
response of green ninja when asked about "jealousy":
	try quizzing green ninja about green ninja.
		
response of green ninja when asked about green ninja:
	say "[if the green ninja is moody]The green ninja sulks. 'My friend just got this really sparkly rock. It's so pretty. I don't have anything that nice. The prettiest thing I have is this stupid notebook.'[otherwise]The green ninja is too distracted by his new earring to acknowledge you."

response of green ninja when shown hat:
	try informing green ninja about hat.

response of green ninja when shown bow tie:
	try informing green ninja about bow tie.

response of green ninja when asked-or-told about hat:
	say "[if the blue ninja is moody]The green ninja thinks for a moment. He says, 'I think the blue ninja borrowed it for his Halloween costume.'[otherwise]The green ninja smiles. 'You look really good in that hat."

response of green ninja when asked-or-told about bow tie:
	say "The green ninja says, 'That is a ridiculous bow tie.'"
	
response of green ninja when asked-or-told about pearl:
	if the green ninja is moody:
		try showing the pearl to the green ninja;
	otherwise:
		say "The green ninja just grins wordlessly."
		
response of green ninja when asked about notebook:
	say "[if the green ninja is moody]The green ninja glares at you. 'It's the prettiest thing I own. I'm not giving it away.'[otherwise]The green ninja says, 'It is rather pretty. But this pearl is nicer.'"
	
response of green ninja when asked about pencil:
	say "The green ninja shakes his head. 'I don't have one. Sorry.'"
	
response of green ninja when asked about "rock":
	say "The green ninja pouts. 'It's so pretty. I want one, too.'"

Instead of taking notebook when notebook is carried by green ninja:
	say "The green ninja shoves you away. 'That belongs to me.'"
	
Instead of taking pearl when pearl is carried by green ninja:
	say "That seems like a terrible idea."

default tell response for the green ninja:
say "The green ninja doesn't seem to care about that."

default ask response for the green ninja:
say "The green ninja says, 'I don't know about that.'"

[mouse]

default ask-tell response for the creature:
say "The mouse squeaks at you."

Section - Showing and Trading Items

[red ninja]

default give-show response for the red ninja:
say "The red ninja [if the red ninja is moody]takes the [noun] and throws it at the wall. You rush over to retrieve it.[otherwise]smiles at you and shakes his head. 'No thank you.'"

Response of red ninja when shown the notebook:
	 say "The red ninja looks at the notebook. 'Ooh. Can I have that?'"

Instead of giving the notebook to the red ninja:
	say "The red ninja takes the notebook and looks at it for a moment. Then he pulls out a pencil and starts scribbling away. His mood seems to lighten as he fills the pages with his thoughts. Eventually he glances up at you, smiling. 'Thank you. I needed that.' He hands you the half-eaten cookie. 'Would you like a cookie?'";
	reveal the pencil;
	now the red ninja carries the notebook;
	now the player carries the cookie;
	increase score by 25;
	now the red ninja is happy.	

[blue ninja]

default give-show response for the blue ninja:
say "The blue ninja [if the blue ninja is moody]just looks at you blankly and makes no move to take the [noun] from you.[otherwise]smiles at you and shakes his head. 'No thanks.'"

Response of blue ninja when shown the bouquet:
	 say "The blue ninja perks up when you show him the flowers, but he doesn't say anything."

Instead of giving bouquet to the blue ninja:
	say "The blue ninja stares at you for a moment. Finally he accepts the bouquet, and smells the flowers, inhaling deeply. He looks at you, smiling. 'Thank you. That is very sweet of you. Let me go find your hat. Would you like to come in?' He invites you inside the wardrobe while he digs around in piles of stuff. 'Here is your hat. And would you like this bow tie as well?' He hands both items to you.";
	now the blue ninja carries the bouquet;
	reveal the hat;
	reveal the bow tie;
	now the player carries the hat;
	now the player carries the bow tie;
	increase score by 25;
	now the blue ninja is happy.

[green ninja]

default give-show response for the green ninja:
say "The green ninja [if the green ninja is moody]turns the [noun] over in his hands. He hands it back to you, shaking his head. 'I don't want that.'[otherwise]smiles at you and shakes his head. 'I don't need that.'"

Response of green ninja when shown the pearl:
	 say "The green ninja's eyes go wide. 'That is very pretty. Where did you get it? I wish I had one!'"

Instead of giving the pearl to the green ninja:
	say "The green ninja oohs and ahhs over the pearl. He gives you a notebook. 'Here. I don't need this anymore. It's just cheap junk.'";
	now the player carries the notebook;
	now the green ninja carries the pearl;
	increase score by 25;
	now the green ninja is happy.

[creature]

default give-show response for the creature:
say "The mouse sniffs curiously at the [noun], but doesn't seem to want it."
	
Response of creature when shown the hat:
	say "The mouse seems quietly impressed by your hat."	

Response of creature when given the hat:
	say "The mouse nibbles a bit on the brim. You pull the hat away."

Response of creature when shown the cookie:
	 say "The mouse seems very interested in that. It tries to take it out of your hands."

Instead of giving cookie to creature:
	say "You give the cookie to the mouse. It grabs it out of your hands and retreats to the corner with it.";
	now the creature is friendly;
	move the cookie to the creature.
	
Instead of taking the cookie when creature is friendly:
	say "The mouse doesn't seem eager to give it back."

Chapter - Objects

Section - Weapons

The shuriken is a thing carried by the player. The description is "[if shuriken is a hook]It's a crude grappling hook, created by tying a piece of yarn around your shuriken.[otherwise]It's a tiny, four-pointed throwing star." The indefinite article is "[if shuriken is a hook]a[otherwise]your". Understand "grappling hook" or "hook" as shuriken when shuriken is a hook. Understand "throwing star" and "star" as shuriken. The shuriken can be a hook.

Before going:
	if the shuriken is in location and location is not window area:
		say "You pause to retrieve your shuriken.";
		try silently taking the shuriken.

A weapon is a kind of thing.

The sai is a weapon carried by the red ninja. The description is "It's a set of tiny three-pronged daggers."Understand "daggers" or "dagger" as sai.

The nunchaku is a weapon carried by the green ninja. The description is "It's a set of tiny sticks connected with a chain." Understand "nunchucks" and "sticks" as nunchaku.

The kama is a weapon carried by the blue ninja. The description is "It's a tiny curved blade with a wooden handle." Understand "blade" as kama.

Instead of taking a weapon:
	say "You should never touch another ninja's weapon without permission."
	
Asking permission is an action applying to nothing.
Understand "ask permission" as asking permission.
Asking for permission is an action applying to one thing.
Understand "ask [someone] for permission" as asking for permission.
Carry out asking for permission:
try asking permission.
Carry out asking permission:
say "Maybe he'll let you play with it later. Right now you need to find your hat."

Section - Window and plants

The pot is scenery in the window area. The description is "It's a pot containing tiny purple flowers." Understand "pot of flowers" as pot.

Instead of taking the pot:
say "The pot is quite a bit larger than you are. Maybe you could just pick some flowers instead."

The flowers is scenery in the window area. It is plural-named. The description is "They're tiny purple flowers. You don't know what they're called." Understand "flower" as flowers.

The bouquet is hidden in the window area. The printed name is "bouquet of flowers". The description is "It's a bunch of tiny purple flowers." Understand "flowers" and "flower" as bouquet.

Understand "pick [flowers]" as taking.

Instead of taking flowers:
  reveal the bouquet;
  say "You pick a handful of flowers.";
  try silently taking bouquet;

Instead of eating bouquet:
	say "They're probably poisonous."
	
Before eating flowers:
	say "They're probably poisonous." instead.

Section - Spider, web and pearl

The web is a supporter in the Dusty Corner. It is scenery. Understand "spider web" as web. The web is either damaged or undamaged. The web is undamaged.

The description of the web is "[if the glint is not available]There's something glinting on the web.[otherwise if the glint is on the web]There is a pearl earring stuck in the web.[otherwise if the web is damaged]The web has been torn up.[otherwise if web count is 1]The spider has woven the word 'CRETIN' into its web.[otherwise if web count is 2]The spider has woven the words 'PLEASE STOP' into its web.[otherwise]There is a spider sitting in the center of the web.".

The glint is scenery. The glint is on the web. Understand "glinting" and "something" and "pearl" and "earring" and "setting" as glint. The description is "It's a pearl earring in a silver setting. It's about the size of your head." The glint can be available.

Instead of taking the glint:
  say "It's stuck in the web. Maybe you have something you can throw to dislodge it?"

Instead of taking the pearl when the glint is not on the web for the first time:
	try fixing the web;
	try silently taking the pearl.

Before examining the glint for the first time:
	now the glint is available.

Instead of searching the web when the glint is on the web:
    say "You peer more closely at the web. There is a pearl earring stuck in the web.";
	now the glint is available.

Instead of searching the web when web count is 3:
	say "There is nothing on the web. Except for that angry-looking spider."

Looking closely at is an action applying to one thing.
Understand "look closely at [web]" and "look more closely at [web]" as looking closely at.
Carry out looking closely at web:
	try searching the web.

The pearl is hidden on the web. The description is "It's a pearl earring in a silver setting. It's about the size of your head." Understand "earring" and "setting" and "trinket" as pearl.

Instead of wearing pearl:
say "That is much too large for you."

Instead of taking the web:
  try touching the web.

Instead of putting anything on the web:
  say "It might get stuck."

Instead of entering the web:
  say "You might get stuck!"

Fixing the web is an action applying to nothing.
Web count is a number that varies. Web count is usually 0.

Carry out fixing the web:
	increase web count by 1;
	now the web is undamaged;
	if web count is 1:
		say "As you stoop to pick up the pearl, the spider sneaks in and fixes its web.";
	otherwise if web count is 2:
		say "The spider comes out, shakes several tiny fists at you, and repairs the web. It slips off again.";
	otherwise if web count is 3:
		say "[LINE BREAK][BOLD TYPE]*** The spider bites you. You die. ***[ROMAN TYPE][LINE BREAK][LINE BREAK]Not really. But knock it off.";

The spider is an animal and scenery. The spider is on the web. Understand "inhabitant" as spider. The description of the spider is "[if web count is less than 3]You can't see that here. Thankfully.[otherwise]It's a common house spider. It's not very large, but it looks like it won't hesitate to kill you if you try to destroy its web again." 

Instead of doing anything with the spider when the web count is 1 for the first time:
say "The spider seems to have vanished again.".

Instead of doing anything except examining with the spider:
	if the web count is less than 3:
		try examining the spider;
	otherwise:
		say "The spider bares its fangs at you. You decide to leave it alone."

Section - Nest and yarn

The nest is in the mouse pad. It is scenery. The description is "This is the mouse's nest. It is full of various treasures."

The treasures is in the mouse pad. It is scenery. It is plural-named. The description is "It's a collection of things the mouse has found. Maybe you could try searching?" Understand "treasure" as treasures.

Instead of searching treasures: try searching nest.

The rope is hidden in the mouse pad. The printed name is "length of yarn". Understand "string" and "yarn" as rope. The description is "It's a length of yellow yarn."

Instead of searching the nest:
	if the creature is hostile:
		say "The mouse hisses at you. Maybe you can distract it somehow?";
	otherwise:
		say "You don't find anything else of any importance."
		
Instead of searching the nest when the creature is friendly for the first time:
	reveal the rope;
	say "You find a length of yarn.";
	try silently taking the rope.

Section - Other objects

The ramen is scenery in the center room. The description is "Ah, ramen."

Instead of taking or eating the ramen: say "'That's plainly inedible.'"

The milk is scenery in the center room. Instead of doing anything except passing with the milk: say "You seem to be thinking of a different game."

Passing is an action applying to one thing.
Understand "please pass [milk] please" and "pass [milk]" as passing.
Carry out passing:
	say "Ninjas are lactose intolerant. [bracket]Citation needed[close bracket][LINE BREAK]"

The notebook is a thing carried by the green ninja. Understand "journal" or "diary" as notebook. The description is "It's a matchbook-sized notebook. The cover is studded with colorful rhinestones." Understand "rhinestones" and "cover" as notebook.

Understand the command "read" as something new.
Reading is an action applying to one thing.
Understand "read [something]" as reading.

Carry out reading:
say "You don't see any text on that."

Instead of reading the notebook:
say "[if the red ninja is moody]It's blank inside.[otherwise]It's full of messy handwriting you're unable to decipher."

Instead of opening the notebook:
try reading the notebook.

The pencil is a hidden thing carried by the red ninja. The description is "It's a tiny pencil." Understand "pen" and "writing implement" as pencil. The pencil is a familiar thing.

The cookie is an edible thing carried by the red ninja. The description is "It's half of a chocolate chip cookie. It's larger than you are."

Instead of eating the cookie:
	say "You take a small bite out of the cookie. It's very good, but you decide to save it for later."

The hat is a wearable hidden thing carried by the blue ninja. The description is "It's a tiny black top hat." The hat is a familiar thing.

Instead of searching hat:
	say "You find a tiny rabbit. No, actually you don't. You're not a magician."

The bow tie is a wearable hidden thing carried by the blue ninja. The description is "It's a tiny bow tie, blue with yellow polka dots." Understand "tie" or "bowtie" as bow tie. 

Instead of dropping hat:
  say "You've been hunting all over for that. You're not letting it out of your sight!"

After wearing the hat:
	say "You put on the hat."
	
After wearing the bow tie:
	say "You wear the bowtie. It's just a clip-on, but maybe no one will notice."

Instead of dropping bow tie:
  say "Your friend gave that to you. You should take better care of it."

Chapter - End Game

Every turn when the player is wearing the hat:
	if the player is wearing the bow tie:
		Increase score by 25;
		say "You've found your hat [italic type]and[roman type] you have an awesome new bow tie. You are ready to go to the talent show.";    
		end the story finally saying "You are jaunty and stylish!"
		
Rule for amusing a victorious player:
say "[LINE BREAK]Have you tried...[LINE BREAK]- destroying the web after getting the earring?[LINE BREAK]- passing the milk?[LINE BREAK]- listening?[LINE BREAK]- juggling?[LINE BREAK]- searching the hat?[LINE BREAK]- eating the ramen?[LINE BREAK]- petting the mouse?[LINE BREAK]- showing off your newly found hat?"