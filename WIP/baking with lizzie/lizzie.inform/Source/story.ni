"Baking with Lizzie" by "Adri".

The story creation year is 2017.
The release number is 1.
The story headline is "A sweet story".
The story genre is "slice of life".
The story description is "[story title] was created for the [italic type]Short and Sweet Jam[roman type]."

Part - Basic Setup

To say as the parser: say bold type.
To say as normal: say roman type.

Understand "* [text]" as a mistake ("Noted.").

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

Chapter - Other Setup

Use American dialect, full-length room descriptions, and the serial comma.

Use no scoring.

When play begins:
say "Your friends are arriving soon, and you need to bake a batch of cookies! Now where is that recipe card...?"

[TODO: remove this in final release]
when play begins:
try switching the story transcript on.

Requesting story information is an action out of world.
Understand "about" and "credits" as requesting story information.
Carry out requesting story information: say "[story description][line break]Beta testers: Brett Witty."

Part - Player

The description of the player is "You are a raccoon. You have large expressive eyes, hidden behind a mask of black on a white face; short, pointed ears tipped with white; and a long, bushy tail ringed in black. Your long coat is grey, almost silver, grizzled with black."

Part - Environment

The Kitchen is a room. "[if the player is not on the stool]You are standing in the kitchen area of your burrow. There is a small oven, a single hot plate, and a mini refrigerator. There is also a low, raccoon-sized table, under which are a set of cabinets. A small stream runs through one end of the room. A lamp, about the same height as you, illuminates the room. There is a colorful rug on the floor[otherwise]You are standing on a small stool in the kitchen room of your burrow. From here you can clearly see the top of the refrigerator[end if][if the stool is not placed properly], but you can't reach it[end if]."

The floor is scenery in the kitchen. The description is "The floor is just pressed dirt. There is a brightly colored rug in the middle of the room."

The ceiling is scenery in the kitchen. The description is "The ceiling is made out of dirt and tree roots"

The walls are plural-named and scenery in the kitchen. "The walls have been dug out of the dirt and rock around you."

Chapter - Rug

The rug is part of the floor. The description is "It's a very colorful woven rug[if the recipe card is not enclosed by the kitchen]. One corner is flipped up[end if]."

The corner is part of the rug. The description is "The corner of the rug is flipped up." Understand "corner of the rug" as corner.

Lifting is an action applying to one thing.

Understand "lift [something]" as lifting.

Carry out lifting something: try taking the noun instead.

Instead of looking under the corner:
try looking under the rug.

Instead of looking under the rug:
try lifting the corner.

Instead of lifting the rug:
try lifting the corner.

Instead of lifting the corner for the first time:
say "You look under the rug and find a recipe card.";
move the recipe card to the kitchen.

Instead of lifting the corner:
say "You look under the rug again. There is nothing there."

Instead of taking the rug:
say "It really ties the room together."

Chapter - Lamp

The lamp is scenery in the kitchen. The description is "A wide lace lamp shade sits atop a glittery base."
Understand "shade" and "base" as lamp.
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

Carry out melting something:
say "You can't melt that." instead.

Instead of melting the stick of butter over the hot plate:
say "The hot plate doesn't seem to be working. Maybe there's another way."

Instead of melting the stick of butter over the lamp:
	if the stick of butter is not in the coffee mug:
		say "You can't melt that in your hands!";
	otherwise:
		say "The butter melts into a puddle.";
		now the stick of butter is melted.
                                
Instead of melting the stick of butter:
	say "How would you like to do that?"

Chapter - Other Kitchen Items

The table is a supporter and scenery in the kitchen. Understand "counter" as table. The description is "It's a small table, just the perfect height for you when you are sitting on the floor."

The cabinets are a closed openable container and part of the table. The description is "A set of cabinets with openable doors, set underneath the table." Understand "cabinet" as cabinets.

The mini refrigerator is a closed openable container and scenery in the kitchen. The description is "It's a mini refrigerator, such as one might find in a dorm room. On the right side is glued a set of hooks, [if the number of things on the hooks is not 0]on which are [a list of things on the hooks][otherwise]which currently hold nothing[end if][if the crate is on the top of the refrigerator]. There is a crate on top of the refrigerator[end if]." Understand "mini fridge" and "fridge" as mini refrigerator.

The top of the refrigerator is a supporter and part of the mini refrigerator. Understand "top of fridge" as top of the refrigerator.
The description is "[if the crate is on the top of the refrigerator]There is a crate on top of the refrigerator[otherwise]There is nothing on top of the refrigerator[end if]."

[TODO: look on top of fridge]

Does the player mean doing anything with the top of the refrigerator: it is unlikely.

The hooks are a plural-named supporter and part of the mini refrigerator. The description is "A set of white plastic hooks, glued to the side of the refrigerator."

The crate is an open unopenable container on the top of the refrigerator. The description is "It's a plastic crate containing assorted cooking implements." Understand "box" as crate.

The stream is scenery in the kitchen. The description is "A stream runs through one end of the room."
The water is part of the stream. The description is "The water is clean and cold."

Chapter - Washing Hands

Washing is an action applying to one thing.
Understand "wash [something]" as washing.

Carry out washing something:
say "You scrub [the noun] with soap and water until [if noun is plural-named]they are[otherwise]it is[end if] clean."

Check washing something:
	if the player does not carry the soap:
		say "You need soap to wash up with." instead.

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
The description of the stool is "A wooden footstool[if the stool is placed properly], currently sitting in front of the fridge[end if] ."

Before placing the stool when the stool is carried by the player:
try dropping the stool.

Placing the stool is an action applying to two things.
Understand "drop [stool] in front of [mini refrigerator]" as placing the stool.
Understand "put [stool] in front of [mini refrigerator]" as placing the stool.
Understand "place [stool] in front of [mini refrigerator]" as placing the stool.
Understand "push [stool] in front of [mini refrigerator]" as placing the stool.
Understand "push [stool] to [mini refrigerator]" as placing the stool.
Understand "push [stool] near [mini refrigerator]" as placing the stool.

Moving the stool is an action applying to one thing.
Understand "move [stool]" or "push [stool]" or "pull [stool]" as moving the stool.

Carry out moving the stool:
say "You move the stool out of the way.";
now the stool is not placed properly.

Before climbing the stool:
if the player carries the stool, say "You can't climb the stool while carrying it!" instead.

Before entering the stool:
try climbing the stool instead.

Before going up when the player is not on the stool:
try climbing the stool instead.

Check going up when the player is on the stool:
say "You can't go any higher." instead.

Before going when the player is on the stool:
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

Check taking something enclosed by the top of the refrigerator:
	if the stool is not placed properly and the player is not on the stool:
		say "You can't reach that from down here." instead.

Check taking something when the player is on the stool:
	if the noun is not enclosed by the top of the refrigerator and the noun is not enclosed by the player:
		say "You can't reach that from up here." instead;
	otherwise if the stool is not placed properly:
		say "You can't quite reach that from here. Maybe if you got closer?" instead;
	otherwise:
		continue the action. 
 
Part - Items

Chapter - Oven, Timer, and Hot Plate

The oven is a closed openable container and scenery in the kitchen. The description is "A small, purple oven, about the size of a toaster. There is an on/off switch on the front, next to the door."
The oven can be switched on.

The switch is part of the oven.
Instead of examining the switch, try examining the oven.
Instead of switching on the switch, try switching on the oven.
Instead of switching off the switch, try switching off the oven.

Instead of inserting the coffee mug into the oven:
say "The coffee mug is too tall for the oven."

Instead of touching the oven:
	if the oven is switched on:
		say "The oven is hot to the touch.";
	otherwise:
		say "The oven is turned off."

Understand "preheat [something]" and "use [something]" as switching on.

The timer is a thing on the table. The description is "A small tomato-shaped timer."

Understand the command "set" as something new.
Setting is an action applying to one thing.
Understand "set [something]" as setting.

Setting it for is an action applying to one thing and one number.
Understand "set [something] for [number] minutes" as setting it for.
Understand "set [something] to [number] minutes" as setting it for.

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
The dial is part of the hot plate. Instead of examining the dial, try examining the hot plate.
Instead of switching on the dial, try switching on the hot plate.

Instead of switching on the hot plate:
say "The red light turns on, but the plate doesn't appear to be emitting any heat. You turn it back off."

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

The baking sheet is a supporter in the oven. The baking sheet is not fixed in place. The description is "A baking sheet." Understand "cookie sheet" as baking sheet. Understand "pan" as baking sheet.
The baking sheet can be warm or not warm. The baking sheet is not warm.

Before switching on the oven:
if the baking sheet is in the oven, now the baking sheet is warm.

The coffee mug is an open unopenable container in the crate. The description is "A ceramic coffee mug with a butterfly on it." Understand "cup" as mug.

The mixing bowl is an open unopenable container in the crate. The description is "A large blue plastic bowl."

The bar of soap is a thing in the pocket. The description is "A bar of white soap."

The towel is a thing on the hooks. The description is "A fluffy green hand towel."

Part - Recipe 

The recipe card is a thing. The description is "A worn card with a recipe for chocolate chip cookies handprinted on it."

Understand the command "read" as something new.
Reading is an action applying to one thing.
Understand "read [something]" as reading.

Carry out reading something: try examining the noun.

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
Set the timer to 15 minutes."

Part - Waiting More
 
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

After waiting:
say "You whistle a happy tune while you wait."

Part - Ingredients

An ingredient is a kind of edible thing.

Pouring is an action applying to one thing.
Understand "pour [something]" as pouring.

Pouring it into is an action applying to two things.
Understand "pour [something] into [something]" as pouring it into.
Understand "pour [something] in [something]" as pouring it into.

Carry out pouring:
try pouring the noun into the mixing bowl.

Check pouring something into something:
	if the noun is not an ingredient:
		say "You can't do that." instead.

Check pouring something into something:
	if the second noun is not the mixing bowl:
		say "You can't do that." instead.

Carry out pouring something into something:
try silently inserting the noun into the second noun;
say "You pour [a noun] into [the second noun]."

Check inserting something into the mixing bowl:
	if the noun is not an ingredient:
		say "That's not an ingredient!".

Check inserting the milk into the mixing bowl:
say "That's not part of the recipe."
                
Before inserting the melted stick of butter into the mixing bowl:
now the player carries the stick of butter.

Check taking an ingredient:
	if the noun is in the mixing bowl:
		say "You can't take that back!" instead.
   
An ingredient has a text called an ingredient name.
 
Check inserting something into something:
	if the second noun is enclosed by the top of the refrigerator:
		say "You can't reach that from here." instead.

After inserting an ingredient into the mixing bowl:
now the printed name is the ingredient name of the noun;
continue the action.

An ingredient has a text called the eat response.

Before eating an ingredient:
say "[eat response of noun][line break]" instead.

Instead of examining an ingredient:
say "A [printed name of noun]."

The carton of milk is an edible thing in the refrigerator. The description is "A carton of milk, with a cute picture of a cow on the front."

Instead of drinking the carton of milk:
say "You'll drink that later when your friends arrive."

Instead of eating the carton of milk:
try drinking the carton of milk.

A stick of butter is an ingredient in the refrigerator. The stick of butter can be melted or not melted. The stick of butter is not melted.
The printed name is "[if the butter is melted]melted butter[otherwise]stick of butter[end if]".
The ingredient name is "stick of melted butter".
The eat response is "You lick the stick of butter."

Instead of drinking the stick of butter:
try eating the stick of butter.

Instead of eating the stick of butter when the stick of butter is melted:
say "You would burn your mouth."

A bag of brown sugar is an ingredient in the cabinets. The ingredient name is "scoop of brown sugar".
The eat response is "You eat a handful of brown sugar. It's very sweet."

A box of white sugar is an ingredient in the cabinets. The ingredient name is "scoop of white sugar".
The eat response is "You eat a handful of white sugar. It tastes good."

An egg is an ingredient in the refrigerator. The ingredient name is "cracked egg".
The eat response is "No, you're not going to eat a raw egg."

The egg can be broken or not broken. The egg is not broken.

Instead of attacking the egg:
say "You crack the egg in your hands.";
now the egg is broken.

A bottle of vanilla extract is an ingredient in the cabinets. The ingredient name is "tablespoon of vanilla extract".
The eat response is "You gulp down a mouthful of vanilla extract. It burns."

Instead of drinking the bottle of vanilla extract:
try eating the bottle of vanilla extract.

A bag of chocolate chips is an ingredient in the cabinets. The ingredient name is "entire bag of chocolate chips".
The eat response is "You nibble on a handful of chocolate chips. They're delicious."

A bag of flour is an ingredient in the cabinets. The ingredient name is "scoop of flour".
The eat response is "You put a handful of flour in your mouth and immediately spit it back out."

A carton of baking soda is an ingredient in the cabinets. The ingredient name is "pinch of baking soda".
The eat response is "You eat a pinch of baking soda. It's bitter."

Instead of drinking the carton of baking soda:
say "It's not actually a liquid, despite the name."

A container of salt is an ingredient in the cabinets. The ingredient name is "pinch of salt".
The eat response is "You eat a pinch of salt. It's, well, it's salty."

The dough is an edible thing. The description is "You've mixed the ingredients into cookie dough."

The balls of dough are a plural-named edible thing. The description is "Balls of uncooked cookie dough."

Instead of eating the balls of dough:
say "You nibble on a ball of dough. It's tasty, but it'll be even better once you bake it."

Instead of eating the dough:
say "You nibble on a handful of dough. It's tasty, but it'll be even better if you wait until it's baked."

Understand "cookies" as dough when the dough is enclosed by the kitchen.
Understand "cookies" as balls of dough when the balls of dough are enclosed by the kitchen.

The cookies are an edible plural-named thing. The description is "Homemade chocolate chip cookies[if the cookies are burned], only slightly burned[end if]!" The cookies can be burned or not burned. The cookies are not burned.

A cookie is an edible thing. The description is "A chocolate chip cookie, made with love."

Instead of eating the cookie:
say "That was delicious!";
end the story finally saying "As you eat the cookie, the doorbell rings. Yay, your friends are here!"

Instead of taking the cookies:
say "You take a single cookie, leaving the rest to cool.";
now the player carries the cookie.

Instead of eating the cookies:
now the player carries the cookie;
try eating the cookie.

Baking is an action applying to one thing.
Understand "bake [something]" as baking.

Carry out baking:
say "You can't bake that!"

Check baking the balls of dough:
if the balls of dough are not on the baking sheet, say "You need to place the dough on a baking sheet first." instead.

Check taking the baking sheet:
if baking sheet is warm and the player is not carrying the potholder, say "It's too hot to handle with your bare hands!" instead.

After taking the baking sheet when the baking sheet is warm and the player is carrying the potholder:
say "You carefully pick up the baking sheet with the potholder."

Instead of inserting the balls of dough into the oven:
try inserting the baking sheet into the oven.

Check inserting the baking sheet into the oven:
	if the balls of dough are on the baking sheet:
		say "You put the pan of cookies into the oven and close the door.";
		now the oven is closed;
	if the oven is switched on:
		now the baking sheet is warm;
		the dough becomes cookies in 15 turns from now;
		the cookies burn in 20 turns from now.
                
Instead of baking the balls of dough:
try inserting the baking sheet into the oven.
		
At the time when the dough becomes cookies:
now the balls of dough are nowhere;
now the cookies are on the baking sheet.

At the time when the cookies burn:
	if the cookies are enclosed by the oven:
		say "Uh oh! The cookies are burning.";
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

Instead of opening the oven when the baking sheet is in the oven and the dough is on the baking sheet:
say "The cookies aren't ready yet!"

Check inserting the stick of butter into the mixing bowl:
	if the stick of butter is not melted:
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

Carry out mixing:
say "You don't need to do that."

Instead of mixing an ingredient:
say "You mix the ingredients together with your hands."

Humming is an action applying to nothing.
Understand "hum" and "sing" and "whistle" as humming.
Understand "whistle while you work" as humming.

Carry out humming:
say "You whistle a happy tune."

Chapter - Testing

test getall with "look under rug / get card / open fridge / open cabinet / take all / push stool to fridge / up / take crate / down / open oven / take sheet"

test ingredients with "put butter in mug / melt butter on lamp / break egg / put egg in bowl / put butter in bowl / put white in bowl / put brown in bowl / put flour in bowl / put salt in bowl / put soda in bowl / put chips in bowl / put vanilla in bowl"

test baking with "roll dough into balls / preheat oven / put cookies in oven / set timer "