"Baking with Lizzie" by "Adri".

The story creation year is 2017.
The release number is 2.
The story headline is "A sweet story".
The story genre is "slice of life".
The story description is "[story title] was created for the [italic type]Short and Sweet Jam[roman type]."

Part - Basic Setup

To say as the parser: say bold type.
To say as normal: say roman type.

Understand "* [text]" as a mistake ("Noted.").
Understand "*[text]" as a mistake ("Noted.").

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

Chapter - Transcript (not for release)

when play begins:
try switching the story transcript on;
say "[as the parser]You can annotate the transcript by prefixing your comment with *[paragraph break][as normal]"

Chapter - Other Setup

Use American dialect, full-length room descriptions, and the serial comma.

Use no scoring.

When play begins:
say "Your friends are arriving soon, and you need to bake a batch of cookies! Now where is that recipe card...?"

Requesting story information is an action out of world.
Understand "about" and "credits" as requesting story information.
Carry out requesting story information: say "[story description][paragraph break]Beta testers: Brett Witty, Angela Chang, Seth Alter, Tim Adan, Dan Barton, Chester Kwan, Michael Hilborn[line break]"

Part - Player

The description of the player is "You are a raccoon. You have large expressive eyes, hidden behind a mask of black on a white face; short, pointed ears tipped with white; and a long, bushy tail ringed in black. Your long coat is grey, almost silver, grizzled with black[if the player is wearing the apron]. You are wearing a frilly pink apron[end if]."

Understand "tail" and "eyes" and "mask" and "ears" and "coat" as yourself.

Part - Environment

The Kitchen is a room. "[if the player is not on the stool]You are standing in your kitchen. There is a small oven, a single hot plate, and a mini refrigerator. There is also a low, raccoon-sized table, under which are a set of cabinets. A small stream runs through one end of the room. A lamp, about the same height as you, illuminates the room. There is a colorful rug on the floor[otherwise if the player is on the stool and the stool is placed properly]You are standing on a small stool in the kitchen. From here you can clearly see the top of the refrigerator[otherwise]You are standing on a small stool in the kitchen. From here you can clearly see the top of the refrigerator, but you can't reach it[end if]." 

Instead of putting something on the floor:
try dropping the noun.

The floor is scenery in the kitchen. The description is "The floor is just pressed dirt. There is a brightly colored rug in the middle of the room."

The ceiling is scenery in the kitchen. The description is "The ceiling is made out of dirt and tree roots"

The walls are plural-named and scenery in the kitchen. "The walls have been dug out of the dirt and rock around you."

Chapter - Rug

The rug is part of the floor. The description is "It's a very colorful woven rug[if the recipe card is not enclosed by the kitchen]. One corner is flipped up[end if]."

The corner is part of the rug. The description is "[if the recipe card is not enclosed by the kitchen]Something seems to be tucked under the rug here[otherwise]The rug has four corners[end if]." Understand "corner of rug" and "corner of the rug" as corner.

Lifting is an action applying to one thing.

Understand "lift [something]" as lifting.

Instead of pushing the corner:
try lifting the corner.

Instead of pulling the corner:
try lifting the corner.

Carry out lifting something: try taking the noun instead.

Instead of looking under the corner:
try looking under the rug.

Instead of looking under the rug:
try lifting the corner.

Instead of lifting the rug:
try lifting the corner.

Flipping is an action applying to one thing.
Understand "flip [something]" as flipping.

Carry out flipping:
say "You're not sure how to do that."

Instead of flipping the rug:
try flipping the corner.

Instead of flipping the corner:
say "You flip the corner back.";
now the description of the rug is "It's a very colorful woven rug.".

Instead of lifting the corner for the first time:
say "You look under the rug and find a recipe card.";
move the recipe card to the kitchen.

Instead of lifting the corner:
say "You look under the rug again. There is nothing there."

Instead of taking the rug:
say "It really ties the room together."

Chapter - Lamp

The lamp is scenery in the kitchen. The description is "A wide lace lamp shade sits atop a glittery base."
Understand "shade" and "base" and "lace" as lamp.
Understand "light" as lamp.
The lamp can be switched on. The lamp is switched on.

After switching off the lamp:
now the kitchen is dark.

After deciding the scope of the player when in darkness:
place the lamp in scope.

After switching on the lamp:
now the kitchen is not dark.

Instead of touching the lamp:
	if the lamp is switched on:
		say "The lamp is warm to the touch.";
	otherwise:
		say "The lamp is turned off."

Check inserting the stick of butter into the oven:
say "It would melt all over the inside of the oven!" instead.

Check putting the stick of butter on the hot plate:
say "The butter would melt all over!" instead.

Check putting the stick of butter on the baking sheet:
	if the baking sheet is in the oven:
		say "The butter would just melt into a puddle all over the baking sheet." instead.
	
Check inserting the baking sheet into the oven:
	if the stick of butter is on the baking sheet:
		say "The butter would just melt into a puddle all over the baking sheet." instead.

Check inserting the baking sheet into the oven:
	if the mixing bowl is on the baking sheet:
		say "The bowl would melt in the heat." instead.
		
Check putting the mixing bowl on the baking sheet:
	if the baking sheet is in the oven:
		say "The bowl would melt in the heat." instead.

Check inserting the baking sheet into the oven:
	if the coffee mug is on the baking sheet:
		say "The coffee mug is too tall for the oven." instead.

Check putting the coffee mug on the baking sheet:
	if the baking sheet is in the oven:
		say "The coffee mug is too tall for the oven." instead.

Instead of putting the stick of butter on the lamp:
try melting the butter over the lamp.

Instead of putting the coffee mug on the lamp when the stick of butter is in the coffee mug:
try melting the butter over the lamp.

Melting is an action applying to one thing.
Understand "melt [something]" as melting.

Melting it over is an action applying to two things.
Understand "melt [something] over [something]" as melting it over.
Understand "melt [something] on [something]" as melting it over.
Understand "melt [something] with [something]" as melting it over.

Instead of melting the mixing bowl over something:
try melting the mixing bowl.

Carry out melting something:
say "You can't melt that." instead.

Instead of melting the mixing bowl:
say "You can't melt that. Or rather, you can, but you shouldn't."

Instead of melting the stick of butter over the hot plate:
say "The hot plate doesn't seem to be working. Maybe there's another way."

Instead of melting the stick of butter over the lamp:
	if the stick of butter is not in the coffee mug:
		say "You can't melt that in your bare hands.";
	otherwise:
		say "The butter melts.";
		now the stick of butter is melted.
                                
Instead of melting the stick of butter:
	say "How would you like to do that?"

Chapter - Other Kitchen Items

The table is a supporter and scenery in the kitchen. Understand "counter" as table. The description is "It's a small table, just the perfect height for you when you are sitting on the floor."

The cabinets are a closed openable container and part of the table. The description is "A set of cabinets with openable doors, set underneath the table." Understand "cabinet" as cabinets.

Instead of looking under the table:
say "There are cabinets underneath the table."

The mini refrigerator is a closed openable container and scenery in the kitchen. The description is "It's a mini refrigerator, such as one might find in a dorm room. There is a magnet on the front. On the right side is glued a set of hooks, [if the number of things on the hooks is 1]on which is [a list of things on the hooks][otherwise if the number of things on the hooks is greater than 1]on which are [a list of things on the hooks][otherwise]which currently hold nothing[end if][if the number of things on the top of the icebox is 1]. There is [a list of things on the top  of the icebox] on top of the refrigerator[otherwise if the number of things on the top of the icebox is greater than 1]. There are  [a list of things on the top of the icebox] on top of the refrigerator[end if]." Understand "mini fridge" and "fridge" as mini refrigerator.

Instead of looking under the mini refrigerator:
say "You find nothing, not even a dust bunny."

The magnet is part of the mini refrigerator. The description is "It says 'I ♥ baking!'"
Instead of taking the magnet: say "It looks good where it is."

The top of the icebox is a supporter and part of the mini refrigerator. Understand "top of refrigerator" and "top of the refrigerator" and "top of the fridge" and "top of fridge" as top of the icebox.

The hooks are a plural-named supporter and part of the mini refrigerator. The description is "A set of white plastic hooks, glued to the side of the refrigerator." Understand "hook" as hooks.

Instead of taking the hooks: say "They're glued pretty well to the side of the refrigerator."

Hanging it on is an action applying to two things.
Understand "hang [something] on [something]" as hanging it on.

Carry out hanging it on:
try putting the noun on the second noun.

The crate is an open unopenable container on the top of the icebox. The description is "A wooden crate with a painted nectarine on the side." Understand "box" as crate. Understand "nectarine" as crate.

Rule for printing the name of the crate when the crate is on the top of the icebox:
	say "crate";
	omit contents in listing.

Instead of searching the crate when the player is not on the stool and the crate is on top of the icebox:
say "You can't see inside the crate from here."

Instead of examining the crate when the player is not on the stool:
say "[description of crate][line break]".

Before climbing the stool for the first time:
	now the mixing bowl is in the crate;
	now the coffee mug is in the crate.
	
Instead of opening the crate:
say "It's not the sort of crate one needs to open."

The stream is scenery in the kitchen. The description is "A stream runs through one end of the room."
The water is part of the stream. The description is "The water is clean and cold."

Instead of inserting something into the stream:
say "Careful! You might lose that if you put it in the water."

Instead of inserting something into the water:
try inserting the noun into the stream.

Instead of touching the stream:
say "It's wet."

Instead of touching the water:
try touching the stream.

Chapter - Washing Hands

Washing is an action applying to one thing.
Understand "wash [something]" as washing.

Understand the command "clean" as something new.
Understand "clean [something]" as washing.

Check washing something:
	if the noun is the apron or the noun is the potholder:
		say "Now [the noun] is damp!" instead;
	if the player does not carry the soap and the noun is not edible:
		say "You need soap to wash up with." instead.

Check washing the mixing bowl:
	if the mixing bowl contains something:
		say "You can't wash that until it's empty!" instead.

Check washing the baking sheet:
	if the balls of dough are on the baking sheet or the cookies are on the baking sheet:
		say "You can't wash that while the cookies are on it!" instead.

Carry out washing something that is not edible:
say "You scrub [the noun] with soap and water until [if noun is plural-named]they are[otherwise]it is[end if] clean."

Carry out washing something that is edible:
say "You wash [the noun] briefly in the water."

Your hands are part of the player. They are plural-named. Instead of examining the hands, try examining the player.

Drying is an action applying to one thing.
Understand "dry [something]" as drying.

Carry out drying something:
	if the player carries the towel:
		say "You dry [the noun] on the towel.";
	otherwise if the player wears the apron:
		say "You dry [the noun] on your apron.";
	otherwise: 
		say "You need something to dry that with." instead.

Drying it on is an action applying to two things.
Understand "dry [something] with/on [something]" as drying it on.

Check drying it on:
	if the second noun is not the towel and the second noun is not the apron:
		say "You can't dry things with that." instead.

Carry out drying it on:
say "You dry [the noun] with [the second noun]."
                
Chapter - Stool

Rule for deciding whether all includes the stool: it does not.

The stool is a supporter in the kitchen. The stool is not fixed in place.
The stool can be placed properly. The stool is not placed properly.
The description of the stool is "A wooden footstool[if the stool is placed properly], currently sitting in front of the refrigerator[end if] ."

Instead of taking the stool:
say "It's too heavy to carry, but it can be pushed around."

Understand the command "sit" as something new.
Sitting is an action applying to nothing.
Understand "sit" as sitting.

Carry out sitting:
try sitting on the floor.

Understand the command "stand" as something new.
Standing is an action applying to nothing.
Understand "stand" and "stand up" as standing.

Yourself can be sitting-down. Yourself is not sitting-down.

Carry out standing:
	if yourself is sitting-down:
		say "You stand up.";
		now the player is not sitting-down;
	otherwise:
		say "You are already standing."

Sitting on is an action applying to one thing.
Understand "sit on [something]" as sitting on.

Carry out sitting on:
	if the noun is not the stool and the noun is not the floor:
		say "That wasn't made for sitting on.";
	otherwise:			
		say "You sit on [the noun].";
		now yourself is sitting-down.
						
Placing the stool is an action applying to two things.
Understand "drop [stool] in front of [something]" as placing the stool.
Understand "put [stool] in front of [something]" as placing the stool.
Understand "push [stool] in front of [something]" as placing the stool.
Understand "push [stool] to [something]" as placing the stool.
Understand "push [stool] near [something]" as placing the stool.
Understand "put [stool] under [something]" as placing the stool.

Check placing the stool:
	if the second noun is not the mini refrigerator and the second noun is not the crate:
		say "You move the stool to [the second noun]." instead.

Unplacing the stool is an action applying to two things.
Understand "push [stool] away from [something]" as unplacing the stool.

Instead of unplacing the stool:
try pushing the stool.

Before placing the stool:
	if the player is on the stool:
		say "You can't move the stool while you're on it." instead.

Instead of pushing the stool:
say "You move the stool out of the way.";
now the stool is not placed properly.

Before pushing the stool:
	if the player is on the stool:
		say "You can't move the stool while you're on it." instead.
		
Instead of pulling the stool:
try pushing the stool.

Instead of climbing the mini refrigerator:
say "The surface is too slick for your paws."

Standing on tiptoe is an action applying to nothing.
Understand "stand on tiptoe" as standing on tiptoe.
Carry out standing on tiptoe:
say "Try as you might, you still can't reach the crate."

After jumping:
say "You jump as high as you can, but you can't quite reach the top of the refrigerator."

Before climbing the stool:
if the player carries the stool, say "You can't climb the stool while carrying it!" instead.

Before entering the stool:
try climbing the stool instead.

Before going up when the player is not on the stool:
try climbing the stool instead.

Check going up when the player is on the stool:
say "You can't go any higher." instead.

Before going down when the player is on the stool:
try getting off the stool instead.

Check placing the stool:
if the stool is placed properly, say "The stool is already in front of the refrigerator." instead.

Check opening the mini refrigerator:
if the stool is placed properly, say "The stool is blocking the door." instead.

Check closing the mini refrigerator:
if the stool is placed properly, say "The stool is blocking the door." instead.

Carry out placing the stool:
say "You place the stool in front of the refrigerator.";
now the stool is placed properly.

Before taking the stool:
now the stool is not placed properly.

Check taking the stool when the player is on the stool:
say "You can't take the stool while standing on it!" instead.

Instead of climbing the stool:
move the player to the stool.

Check taking something enclosed by the top of the icebox:
	if the stool is not placed properly or the player is not on the stool:
		say "You can't reach that from down here." instead.

Check taking something when the player is on the stool:
	if the noun is not enclosed by the top of the icebox and the noun is not enclosed by the player:
		say "You can't reach that from up here." instead;
	otherwise if the stool is not placed properly:
		say "You can't quite reach that from here. Maybe if you got closer?" instead;
	otherwise:
		continue the action. 
		
Instead of putting something on the mini refrigerator:
try putting the noun on the top of the icebox.
 
Part - Items

Chapter - Oven, Timer, and Hot Plate

The oven is a closed openable container and scenery in the kitchen. The description is "A small, purple oven, about the size of a toaster. There is an on/off switch on the front, next to the door."
The oven can be switched on.
Understand "door" as oven.

Instead of putting something on the oven:
say "The top of the oven is curved and cannot support that."

The switch is part of the oven. The description is "An on/off switch on the front. It is turned [if the oven is switched on]on[otherwise]off[end if]."

Instead of switching on the switch, try switching on the oven.
Instead of switching off the switch, try switching off the oven.

Instead of flipping the switch:
try pushing the switch.

Instead of pushing the switch: 
	if the oven is switched on:	
		try switching off the oven;
	otherwise:
		try switching on the oven.

Instead of inserting the coffee mug into the oven:
say "The coffee mug is too tall for the oven."

Instead of inserting the mixing bowl into the oven:
say "The bowl would melt in the heat."

Instead of touching the oven:
	if the oven is switched on:
		say "The oven is hot to the touch.";
	otherwise:
		say "The oven is turned off."

Understand "preheat [something]" and "use [something]" as switching on.

The timer is a thing on the table. The description is "A small tomato-shaped timer. It can be twisted to set the time."

Instead of switching on the timer:
try setting the timer.

Instead of turning the timer:
try setting the timer.

Understand the command "set" as something new.
Setting is an action applying to one thing.
Understand "set [something]" as setting.

Setting it for is an action applying to one thing and one number.
Understand "set [something] for [number] minutes" as setting it for.
Understand "set [something] to [number] minutes" as setting it for.
Understand "twist [something] to [number]" as setting it for.
Understand "twist [something] to [number] minutes" as setting it for.

Carry out setting something:
say "You can't set that."

Carry out setting something for:
say "You can't set that."

Instead of setting the timer:
say "You set the timer for 15 minutes.";
the timer dings in 15 turns from now.

Instead of setting the timer for a number (called N):
say "You set the timer for [N] minutes.";
the timer dings in N turns from now.

At the time when the timer dings:
say "The timer dings! Your whiskers twitch excitedly!";

The hot plate is a supporter and scenery in the kitchen. The description is "A single burner hot plate. There is a dial and a red light on the front."
The hot plate can be switched on. The hot plate is switched off.
The red light is part of the hot plate. The description is "A light on the front of the hot plate. It is off."
Understand "stove" as hot plate.
The dial is part of the hot plate. The description is "A small dial on the front of the hot plate. It is switched off."
Instead of switching on the dial, try switching on the hot plate.

Instead of turning the dial: try switching on the dial.

After switching on the hot plate:
say "The red light flickers on, but the plate doesn't appear to be emitting any heat. You turn it back off.";
now the hot plate is switched off.

Instead of switching on the hot plate for the fifth time:
say "The hot plate is clearly broken."

Instead of touching the hot plate:
say "The hot plate is turned off."

Fixing is an action applying to one thing.
Understand "fix [something]" as fixing.

Carry out fixing something:
say "That isn't broken."

Instead of fixing the hot plate:
say "You fiddle with the power cable and the switch, but nothing happens."

Instead of fixing the egg when the egg is broken:
say "All the king's horses and all the king's raccoons couldn't put that egg back together again."

Part - Items

The apron is a wearable thing on the hooks. The description is "A frilly pink apron. It goes over the neck and ties behind your back. It has a single pocket on the front."

The pocket is an closed unopenable container and part of the apron. The description is "The pocket is trimmed in blue ric rac."
After examining the apron for the first time: now the pocket is open.

The potholder is a thing on the hooks. The description is "A relatively large (for you, in any case) pot holder, blue with yellow flowers on it. It's been burned in a few places."

The baking sheet is a supporter in the oven. The baking sheet is not fixed in place. The description is "A baking sheet." Understand "cookie sheet" as baking sheet. Understand "pan" and "tray" as baking sheet.
The baking sheet can be warm or not warm. The baking sheet is not warm.

Before switching on the oven:
if the baking sheet is in the oven, now the baking sheet is warm.

The coffee mug is an open unopenable container. The description is "A ceramic coffee mug with a butterfly on it." Understand "cup" as mug.

The mixing bowl is an open unopenable container. The description is "A large blue plastic bowl."

The bar of soap is a thing in the pocket. The description is "A bar of white soap."

The towel is a thing on the hooks. The description is "A fluffy green hand towel."

Part - Recipe 

The recipe card is a thing. The description is "A worn card with a recipe for chocolate chip cookies handprinted on it."

Understand the command "read" as something new.
Reading is an action applying to one thing.
Understand "read [something]" as reading.

Carry out reading something: 
say "There's nothing to read." instead.

Instead of reading the recipe card: say "[recipe]"

To say recipe:
say "Lizzie's Chocolate Chip Cookies[paragraph break]
melted stick of butter[line break]
brown sugar[line break]
white sugar[line break]
an egg[line break]
vanilla extract[line break]
bag of chocolate chips[line break]
flour[line break]
baking soda[line break]
salt[paragraph break]
Preheat oven.[line break]
Mix ingredients together in a large bowl.[line break]
Roll dough into balls and place on pan.[line break]
Place pan in oven.[line break]
Set the timer to 15 minutes.[paragraph break]
Don't forget to wash up afterwards!"

Part - Waiting More

Instead of sleeping:
say "You had a lot of coffee this morning. You aren't feeling particularly drowsy."
 
Waiting more is an action applying to one number.

Understand "wait [number] minutes/turns" or "wait for [number] minutes/turns" or "wait [number]" as waiting more.

Carry out waiting more:
let duration be the number understood - 1;
repeat with X running from 1 to duration
begin;
follow the turn sequence rules;
end repeat. 

Report waiting more:
say "You whistle a happy tune while you wait."

[TODO?]
After waiting:
say "You whistle a happy tune while you wait."

Part - Ingredients

An ingredient is a kind of edible thing.

Pouring is an action applying to one thing.
Understand "pour [something]" as pouring.

Pouring it into is an action applying to two things.
Understand "pour [something] into [something]" as pouring it into.
Understand "pour [something] in [something]" as pouring it into.

Instead of pouring the carton of milk into the bowl:
try inserting the carton of milk into the mixing bowl.

Carry out pouring:
try pouring the noun into the mixing bowl.

Instead of pouring the carton of milk:
try drinking the carton of milk.

Instead of pouring the carton of milk into the coffee mug:
try pouring the carton of milk.

Check pouring the coffee mug into the mixing bowl:
	if the coffee mug contains the stick of butter:
		try pouring the stick of butter into the mixing bowl instead;
	otherwise if the coffee mug contains the egg:
		try pouring the egg into the mixing bowl instead.

Check pouring something into something:
	if the noun is not an ingredient:
		say "You can't do that." instead.

Check pouring something into something:
	if the second noun is not the mixing bowl:
		say "You can't do that." instead.

Carry out pouring something into something:
try inserting the noun into the second noun.

Check inserting something into the mixing bowl:
	if the noun is not edible:
		say "That's plainly inedible and therefore not an ingredient for this recipe." instead.	

Check inserting water into the mixing bowl:
say "You don't need water for this recipe." instead.

Check inserting the milk into the mixing bowl:
say "That's not part of the recipe." instead.
                
Before inserting the broken egg into the mixing bowl:
	if the broken egg is in the coffee mug:
		now the player carries the egg.

Before inserting the melted stick of butter into the mixing bowl:
	if the melted stick of butter is in the coffee mug:
		now the player carries the stick of butter.

Check taking an ingredient:
	if the noun is in the mixing bowl:
		say "It would be difficult to take that back." instead.
   
An ingredient has a text called an ingredient name.
 
Check inserting something into something:
	if the second noun is enclosed by the top of the icebox:
		say "You can't reach that from here." instead.

After inserting an ingredient into the mixing bowl:
now the printed name is the ingredient name of the noun;
continue the action.

An ingredient has a text called the eat response.

Instead of tasting something:
try eating the noun.

Before eating an ingredient:
say "[eat response of noun][line break]" instead.

Instead of examining an ingredient:
say "A [printed name of noun]."

The carton of milk is an edible thing in the refrigerator. The description is "A carton of milk, with a cute picture of a cow on the front."
Understand "cow" and "picture" as carton of milk.

Drinking out of is an action applying to one thing.
Understand "drink out of [something]" as drinking out of.

Carry out drinking out of something:
say "There's nothing suitable to drink there." instead.

Instead of drinking out of the coffee mug:
say "The mug is empty."

Instead of drinking out of the carton of milk:
say "Were you raised in a barn?"

Check drinking the carton of milk:
	if the player does not enclose the coffee mug:
		say "You'll need a cup of some sort first." instead;
	otherwise if the coffee mug contains something:
		say "The mug isn't empty." instead;
	otherwise:
		say "You pour milk into the coffee mug and drink it all down." instead.

Instead of eating the carton of milk:
try drinking the carton of milk.

Instead of opening an ingredient:
say "You open [the noun]."

Instead of opening the carton of milk:
say "You open the carton of milk."

Instead of inserting the carton of milk into the coffee mug:
try drinking the carton of milk.

Instead of eating the water:
try drinking the water.

Instead of inserting water into the coffee mug:
try drinking the water.

Check drinking the water:
	if the player does not enclose the coffee mug:
		say "You'll need a cup of some sort first." instead;
	otherwise if the coffee mug contains something:
		say "The mug isn't empty." instead;
	otherwise:
		say "You scoop up water into the coffee mug and drink it all down." instead.

A stick of butter is an ingredient in the refrigerator. The stick of butter can be melted or not melted. The stick of butter is not melted.
The printed name is "[if the butter is melted]melted pool of butter[otherwise]stick of butter[end if]".
The ingredient name is "[if the stick of butter is in the mixing bowl]pool of [end if]melted butter".
The eat response is "You lick the stick of butter."

Check inserting the stick of butter into the coffee mug:
	if the coffee mug contains something:
		say "The coffee mug isn't empty." instead.

Instead of drinking the stick of butter:
try eating the stick of butter.

Instead of eating the stick of butter when the stick of butter is melted:
say "You would burn your mouth."

A bag of brown sugar is an ingredient in the cabinets. The ingredient name is "handful of brown sugar".
The eat response is "You eat a handful of brown sugar. It's very sweet."

A box of white sugar is an ingredient in the cabinets. The ingredient name is "handful of white sugar".
The eat response is "You eat a handful of white sugar. It tastes good."

An egg is an ingredient in the refrigerator. The ingredient name is "cracked egg".
The printed name is "[if the egg is broken]cracked egg[otherwise]egg[end if]".
The eat response is "No, you're not going to eat a raw egg."

The egg can be broken or not broken. The egg is not broken.

Cracking it into is an action applying to two things.
Understand "crack [something] into [something]" as cracking it into.

Instead of attacking the broken egg:
say "The egg has already been cracked open."

Instead of cracking the the broken egg into something:
say "The egg has already been cracked open."

Instead of cracking the not broken egg into something:
	if second noun is the mixing bowl:
		say "You crack the egg into the bowl.";
		now the egg is broken;
		now the egg is in the mixing bowl;
	otherwise if the second noun is the coffee mug and the coffee mug contains something:
		say "The mug needs to be empty first.";
	otherwise if the second noun is the coffee mug:
		say "You crack the egg into the coffee mug.";
		now the egg is broken;
		now the egg is in the coffee mug;
	otherwise:
		say "You'll need something else to crack that into."


Instead of attacking the egg:
	if the mixing bowl is visible and the mixing bowl is not enclosed by the top of the icebox:
		say "You crack the egg into the bowl.";
		now the egg is broken;
		now the egg is in the mixing bowl;
	otherwise if the coffee mug is visible and the coffee mug is not enclosed by the top of the icebox:
		if the coffee mug contains something:
			say "You can crack that into the coffee mug, but it needs to be empty first.";
		otherwise:	
			say "You crack the egg into the coffee mug.";
			now the egg is broken;
			now the egg is in the coffee mug;
	otherwise:
		say "You'll need something to crack that into."

A bottle of vanilla extract is an ingredient in the cabinets. The ingredient name is "dash of vanilla extract".
The eat response is "You gulp down a mouthful of vanilla extract. It burns."

Instead of drinking the bottle of vanilla extract:
try eating the bottle of vanilla extract.

Instead of drinking out of the bottle of vanilla extract:
try drinking the bottle of vanilla extract.

A bag of chocolate chips is an ingredient in the cabinets. The ingredient name is "entire bag of chocolate chips".
The eat response is "You nibble on a handful of chocolate chips. They're delicious."

A bag of flour is an ingredient in the cabinets. The ingredient name is "double handful of flour".
The eat response is "You put a handful of flour in your mouth and immediately spit it back out."

A carton of baking soda is an ingredient in the cabinets. The ingredient name is "pinch of baking soda".
The eat response is "You eat a pinch of baking soda. It's bitter."

Instead of drinking the carton of baking soda:
say "It's not actually a liquid, despite the name."

A container of salt is an ingredient in the cabinets. The ingredient name is "pinch of salt".
The eat response is "You eat a pinch of salt. It's, well, it's salty."

The dough is an edible proper-named thing. The description is "You've mixed the ingredients into cookie dough."

The balls of dough are a plural-named edible thing. The description is "Balls of uncooked cookie dough."

Check taking the balls of dough:
	if the balls of dough are on the baking sheet:
		say "They're already on the baking sheet." instead.

Instead of eating the balls of dough:
say "You nibble on a ball of dough. It's tasty, but it'll be even better once you bake it."

Instead of eating the dough:
say "You nibble on a handful of dough. It's tasty, but it'll be even better if you wait until it's baked."

Understand "cookies" as dough when the dough is enclosed by the kitchen.
Understand "cookies" as balls of dough when the balls of dough are enclosed by the kitchen.

The cookies are an edible plural-named thing. The description is "Homemade chocolate chip cookies[if the cookies are burned], only slightly burned[end if]!" The cookies can be burned or not burned. The cookies are not burned. Understand "cookie" as cookies when the player does not carry the cookie.

A cookie is an edible thing. The description is "A chocolate chip cookie, made with love."

Counting is an action applying to one thing.
Understand "count [something]" as counting.

Carry out counting something:
say "There is just one of those."

Instead of counting the cookies:
say "There are a dozen cookies."

Instead of eating the cookie:
say "That was delicious!";

[TODO]
At the time when your friends arrive:
say "Suddenly a duck and a rat on a lily pad come floating through on the stream.";
end the story finally saying "Yay! Your friends have arrived, and there are cookies and milk for everyone!"

Instead of putting the cookies on something:
now the cookies are on the second noun;
say "You put the cookies on [the second noun]."

Instead of taking the cookies:
	if the baking sheet is in the oven and the cookies are on the baking sheet:
		try taking the baking sheet instead.

Instead of taking the cookies:
say "You take a cookie, leaving the rest to cool.";
now the player carries the cookie.

Instead of eating the cookies:
now the player carries the cookie;
try eating the cookie.

Baking is an action applying to one thing.
Understand "bake [something]" as baking.

Carry out baking:
say "You can't bake that!"

Check baking the dough:
if the balls of dough are not on the baking sheet, say "You need to place the dough on a baking sheet first." instead.

Check taking the baking sheet:
if baking sheet is warm and the player is not carrying the potholder, say "It's too hot to handle with your bare hands!" instead.

After taking the baking sheet when the baking sheet is warm and the player is carrying the potholder:
say "You carefully pick up the baking sheet with the potholder."

Check dropping the potholder:
	if the player is holding the baking sheet and the baking sheet is warm:
		say "You are holding the pan with the potholder." instead; 

Check putting the potholder on something:
	if the player is holding the baking sheet and the baking sheet is warm:
		say "You are holding the pan with the potholder." instead; 

Check taking the towel:
	if the towel is on the table and the baking sheet is on the table and the baking sheet is warm:
		say "The towel is underneath the baking sheet." instead.

Check putting the baking sheet on something:
	if the second noun is the potholder:
		say "You are holding the pan with the potholder." instead;
	if the second noun is the hot plate:
		say "The hot plate is too small for the baking sheet." instead;
	if the baking sheet is warm and the towel is not on the second noun and the second noun is not the towel:
		say "You should put something under the pan to protect [the second noun]." instead.

Instead of putting the baking sheet on the towel:
	if the towel is supported by something (called T):
		try putting the baking sheet on T.

Instead of inserting the balls of dough into the oven:
try inserting the baking sheet into the oven.

Check inserting something into the oven:
	if the noun is not the baking sheet and the noun is not enclosed by the baking sheet:
		say "That doesn't belong in the oven." instead.

Instead of inserting the dough into the oven:
try baking the dough.

After inserting the baking sheet into the oven:
	now the baking sheet is in the oven;
	if the oven is switched on:
		now the baking sheet is warm;
	if the balls of dough are on the baking sheet:
		say "You put the pan of cookies into the oven and close the door.";
		now the oven is closed;
		if the oven is switched on:
			the dough becomes cookies in 15 turns from now;
			the cookies burn in 25 turns from now;
	otherwise:
		say "You put the baking sheet into the oven.";

			
Instead of baking the balls of dough:
try inserting the baking sheet into the oven.
		
At the time when the dough becomes cookies:
now the balls of dough are nowhere;
now the cookies are on the baking sheet.

At the time when the cookies burn:
	if the cookies are enclosed by the oven and the oven is switched on:
		say "Oh no! The cookies are burning!";
		now the cookies are burned.

Rolling is an action applying to one thing.
Understand "roll [something] into balls" as rolling.
Understand "roll [something]" as rolling.

Carry out rolling something:
say "You can't do that."

Before rolling dough:
if the baking sheet is enclosed by the oven, say "You need a baking sheet." instead.

Instead of rolling dough:
try putting the dough on the baking sheet.

Before putting the dough on the baking sheet:
now the player carries the dough.

After putting the dough on the baking sheet:
say "You roll out balls of dough and place them on the baking sheet.";
now the dough is nowhere;
now balls of dough are on the baking sheet.

Instead of opening the oven when the baking sheet is in the oven and the balls of dough are on the baking sheet:
say "The cookies aren't ready yet!"

Check inserting the not melted stick of butter into the mixing bowl:
	say "You need to melt the butter first." instead.

Check inserting the egg into the mixing bowl:
	if the egg is not broken:
		say "You need to break the egg first." instead.
                
After inserting an ingredient into the mixing bowl:
	if the mixing bowl contains every ingredient:	
		say "You put [the noun] into the mixing bowl.[paragraph break]";
		say "You mix the ingredients with your hands until you have a good dough.";
		now every ingredient is nowhere;
		now dough is in the mixing bowl;
	otherwise:
		continue the action.
	
Mixing is an action applying to one thing.
Understand "mix [something]" as mixing.

Does the player mean mixing the mixing bowl: it is likely.

Mixing all is an action applying to nothing.
Understand "mix ingredients" as mixing all.

Check mixing:
	if the mixing bowl contains nothing:
		say "There is nothing in the bowl!" instead.
		
Instead of mixing all:
try mixing the mixing bowl.

Check mixing:	
	if the noun is not an ingredient and the noun is not the mixing bowl:
		say "You don't know how to do that." instead.

Check mixing the mixing bowl:
	if the mixing bowl contains nothing:
		say "There is nothing in the bowl yet." instead.

Check mixing an ingredient:
	if the noun is not in the mixing bowl:
		say "That is not in the mixing bowl yet." instead.
	
Carry out mixing an ingredient:
say "You mix the ingredients together with your hands."

Carry out mixing the mixing bowl:
say "You mix the ingredients together with your hands."

Humming is an action applying to nothing.
Understand "hum" and "sing" and "whistle" as humming.
Understand "whistle while you work" as humming.

Carry out humming:
say "You whistle a happy tune."

Chapter - Smells

Check taking the baking sheet:
	if the cookies are on the baking sheet:
		your friends arrive in 5 turns from now.

Instead of smelling:
	if the baking sheet is in the oven and the balls of dough are on the baking sheet:
		say "Mmm, you smell the cookies baking in the oven.";
	otherwise if the cookies are burned:
		say "You smell freshly-burned cookies.";
	otherwise if the cookies are enclosed by the kitchen:
		say "Mmm, you smell freshly-baked cookies.";
	otherwise:
		say "You smell nothing in particular."

Instead of smelling the cookies:
say "Mmm, the cookies smell amazing."

Instead of smelling the cookie:
try smelling the cookies.

Chapter - Testing

test getall with "look under rug / get card / open fridge / open cabinet / take all / push stool to fridge / up / take crate / down / open oven / take sheet"

test ingredients with "put butter in mug / melt butter on lamp / break egg / put egg in bowl / put butter in bowl / put white in bowl / put brown in bowl / put flour in bowl / put salt in bowl / put soda in bowl / put chips in bowl / put vanilla in bowl"

test baking with "roll dough into balls / preheat oven / put cookies in oven / set timer "