"The Story of the Shinoboo" by "Adri".

The story creation year is 2015.
The release number is 1.
The story headline is "a tiny story about four tiny ninjas and tiny treats".
The story genre is "slice of life".
The story description is "[story title] was written for Ectocomp 2015 in significantly less than three hours. Thanks to Laurence Muller and busterwrites for discovering and reporting bugs!"

Requesting story information is an action out of world.
Understand "about" as requesting story information.
Carry out requesting story information: say "[story description][line break]".
    
The maximum score is 5.

The bedroom is a region.
Rule for printing the name of a room in the bedroom:
    say "Bedroom".

Before going to a room (called R) when the flashlight is switched on:
    now R is not dark.

Before switching on the flashlight:
    now the location is not dark.

Before switching off the flashlight:
    now the location is dark.
    
The center room is a dark room in the bedroom. "You are standing in the middle of the bedroom. It is pitch dark, save for the glow of your tiny flashlight."
The north room is a dark room in the bedroom. "You are standing at the northern edge of the room. It is pitch dark, save for the glow of your tiny flashlight."
The south room is a dark room in the bedroom. "You are standing at the southern edge of the room. It is pitch dark, save for the glow of your tiny flashlight."
The east room is a dark room in the bedroom. "You are standing at the eastern edge of the room. It is pitch dark, save for the glow of your tiny flashlight."
The west room is a dark room in the bedroom. "You are standing at the western edge of the room. It is pitch dark, save for the glow of your tiny flashlight."

Instead of going from a dark room: say "You shouldn't try stumbling around in the dark."
    
Center room is north of South room, south of north room, west of east room, and east of west room.
    
The player is in the center room.
The description of the player is "You are dressed in all red[if the player wears the tiny eye patch or the player wears the tiny pirate hat] with [end if][if the player wears the tiny eye patch]a tiny black patch over one eye[end if][if the player wears the tiny eye patch and the player wears the tiny pirate hat] and [end if][if the player wears the tiny pirate hat]a tiny pirate hat[end if]."

The tiny pirate hat is a wearable thing in the north room. The description is "A tiny black pirate hat with a white skull and crossbones design."
The tiny eye patch is a wearable thing in the south room. The description is "A tiny black eye patch."

A person can be in costume. The player is not in costume.

Every turn:
	if the player wears the tiny pirate hat and the player wears the tiny eye patch:
		now the player is in costume;
		record "costume" as achieved;
	otherwise:
		now the player is not in costume.
    
The tiny sword is a thing carried by the player. The description is "A tiny silver sword."
The tiny sack is a container carried by the player. The description is "[if the number of things enclosed by the tiny sack is 0]The tiny sack is empty.[otherwise][run paragraph on][end if]".
The tiny flashlight is a device carried by the player. The tiny flashlight is switched off. The description is "[run paragraph on]".
    
The tiny ghost is a person in the north room. The description is "Tiny blue feet stick out under a piece of white tissue with holes cut out for the eyes."

The tiny ninja turtle is a person in the south room. The description is "A tiny green turtle wearing a strip of orange fabric around its eyes."

The tiny witch is a person in the east room. The description is "A tiny figure dressed in black with a tiny pointy hat."

The chocolate bar is an edible thing carried by the tiny ghost. The description is "A square of chocolate, larger than your head."
The green candy is an edible thing carried by the tiny witch. The description is "An oblate spheroid of chocolate with a green candy coating."
The red licorice is an edible thing carried by the tiny witch. The description is "A coiled-up strand of red licorice."

Trick-or-treating is an action applying to nothing.
Understand "trick or treat" or "say trick or treat" as trick-or-treating.

Playing a trick is an action applying to nothing.
Understand "trick" or "play a trick" as playing a trick.
Carry out playing a trick: say "That wouldn't be very nice!"

Check trick-or-treating:
	if the player is not in costume:
		say "You don't appear to be in costume. No candy for you!" instead.
    
Carry out trick-or-treating:
	if the tiny ghost is in the location:
		say "The tiny ghost gives you a square of chocolate. Then it fades away into nothingness.";
		now the sack carries the chocolate bar;
		remove the tiny ghost from play;    
		record "blue ninja" as achieved;   
	otherwise if the tiny ninja turtle is in the location:
		say "The tiny ninja turtle gives you a coil of red licorice. Then it runs off to fight crime.";
		now the sack carries the red licorice;
		remove the tiny ninja turtle from play;
		record "green ninja" as achieved;
	otherwise if the tiny witch is in the location:
		say "The tiny witch gives you a single green candy. Then it mysteriously vanishes.";
		now the sack carries the green candy;
		remove the tiny witch from play;
		record "black ninja" as achieved;
	otherwise:
		say "You gleefully shout 'Trick or Treat!', but there is nobody here to give you candy.";

Talking to is an action applying to one thing.
Understand "talk to [something]" as talking to.

Carry out talking to something: say "You can only do that to something animate!"

Instead of talking to a person:
say "You gleefully shout 'Trick or Treat!'";
try trick-or-treating.
    
The small pumpkin is a thing in the center room. The description is "A small [if the small pumpkin is carved]jack o['] lantern[otherwise]pumpkin[end if], about twice your height[if the small pumpkin is glowing]. The pumpkin glows with an eerie pink light[end if]."
The small pumpkin can be carved. The small pumpkin is not carved.
The small pumpkin can be glowing. The small pumpkin is not glowing.
Understand "jack o' lantern" and "jack o lantern" as pumpkin.
    
The glowstick is a thing in the west room. The description is "A pink glowstick bent into a hula hoop[if the glowstick is not cracked]. It can be cracked so it emits light[otherwise]. It emits a bright pink light[end if]."
The glowstick can be cracked. The glowstick is not cracked.

Hula hooping is an action applying to nothing.
Understand "hula hoop" as hula hooping.
Carry out hula hooping: say "How do you expect to do that without a hoop?"

instead of hula hooping when the player carries the glowstick:
    say "You swing the glowstick around your tiny hips."
    
Understand the command "carve" as "cut".

Instead of cutting the pumpkin:
    say "You cut a hole in the bottom of the pumpkin, scoop out the guts, and then use your sword to carve out a creepy-looking face.";
    move the pumpkin guts to the location;
    now the pumpkin is carved.

Check inserting the glowstick into the pumpkin:
    if the glowstick is not cracked, say "The glowstick won't do much good until you crack it." instead.

Instead of attacking the glowstick:
    now the glowstick is cracked;
    say "The glowstick glows with a bright pink light."
    
Instead of inserting the cracked glowstick into the pumpkin:
now the pumpkin is glowing;
remove the glowstick from play;
record "carved pumpkin" as achieved.
    
The pumpkin guts are scenery. The description is "A relatively large pile of pumpkin guts."

Instead of throwing away the pumpkin guts: say "You wrap the pumpkin guts in a tissue and heave it into the trashcan."

Before doing anything except taking or throwing away to the pumpkin guts: say "All you should really do with pumpkin guts is throw them away. Or roast the seeds, but you're not really equipped to do that." instead.

Throwing away is an action applying to one thing.
Understand "throw away [something]" and "throw [something] away" as throwing away.
Carry out throwing away: say "I understand your desire for neatness, but you don't need to throw that away."

Instead of taking the pumpkin guts: try throwing away the pumpkin guts.

Instead of taking the pumpkin: say "That's too big for you to carry!"

Instead of pushing the pumpkin: say "You give the pumpkin a hard shove, but it barely moves."

Instead of pulling the pumpkin: say "Your tiny hands slide over the surface of the pumpkin. There's nothing to grab onto."

Instead of pulling the pumpkin when the pumpkin is glowing: say "You grab hold of a carved edge and pull, but the pumpkin barely moves."
     
The trashcan is a backdrop in the bedroom. The description is "A trashcan stands in one corner of the room. It is much, much larger than you are."

Part - Scoring

Every turn:
	if the score is 5:
		end the story finally saying "Happy Halloween!"
    
Table of Tasks Achieved 
Points	Citation	Turn Stamp
1	"blue ninja"	-1
1	"black ninja"	-1
1	"green ninja"	-1
1	"carved pumpkin"	-1
1	"costume"	-1

To record (T - text) as achieved: 
	choose row with a citation of T in the Table of Tasks Achieved; 
	if turn stamp entry is less than 0:
		now the turn stamp entry is the turn count;
		increase the score by the points entry.


