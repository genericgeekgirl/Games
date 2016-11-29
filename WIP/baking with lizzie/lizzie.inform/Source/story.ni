"Baking with Lizzie" by "Adri".

The story creation year is 2016.
The release number is 1.
The story headline is "TODO".
The story genre is "slice of life".
The story description is "[story title] was created for the [italic type]Self-Care Jam[roman type]."


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
say "TODO"

Requesting story information is an action out of world.
Understand "about" and "credits" as requesting story information.
Carry out requesting story information: say "[story description][line break]".

Part - Player

The description of the player is "You are a raccoon. You have large expressive eyes, hidden behind a mask of black on a white face; short, pointed ears tipped with white; and a long, bushy tail ringed in black. Your long coat is grey, almost silver, grizzled with black."

Part - Environment

The Kitchen is a room. "[if the player is not on the stool]You are standing in the kitchen room of your burrow. There is a small oven, a single hot plate, a mini refrigerator, and a set of cabinets here. There is also a low, raccoon-sized table. A small stream runs through one end of the room. A lamp, about the same height as you, illuminates the room[otherwise]You are standing on a small stool in the kitchen room of your burrow. From here you can clearly see the top of the refrigerator[end if]."

The floor is scenery in the kitchen. The description is "The floor is just pressed dirt. There is a brightly colored rug in the middle of the room."

The ceiling is scenery in the kitchen. The description is "The ceiling is made out of dirt and tree roots"

The walls are plural-named and scenery in the kitchen. "The walls have been dug out of the dirt and rock around you."

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

The lamp is scenery in the kitchen. The description is "A wide lace lampshade sits atop a glittery lamp base."
The lamp can be switched on. The lamp is switched on.

After switching off the lamp:
now the kitchen is dark.

After deciding the scope of the player when in darkness:
place the lamp in scope.

After switching on the lamp:
now the kitchen is not dark.

Chapter - Other Kitchen Items

The table is a supporter and scenery in the kitchen. Understand "counter" as table. The description is "It's a small table, just the perfect height for you when you are sitting on the floor."

The mini refrigerator is a closed openable container and scenery in the kitchen. The description is "It's a mini refrigerator, such as one might find in a dorm room. On the right side is glued a set of hooks, [if the number of things on the hooks is not 0]on which are [a list of things on the hooks][otherwise]which currently hold nothing[end if][if the crate is on the top of the refrigerator]. There is a crate on top of the refrigerator[end if]." Understand "mini fridge" and "fridge" as mini refrigerator.

The top of the refrigerator is a supporter and part of the mini refrigerator.

The hooks are a plural-named supporter and part of the mini refrigerator. The description is "A set of white plastic hooks, glued to the side of the refrigerator."

The stool is a supporter in the kitchen. The stool is not fixed in place.
The stool can be placed properly. The stool is not placed properly.

Placing the stool is an action applying to two things.
Understand "drop [stool] in front of [mini refrigerator]" as placing the stool.
Understand "put [stool] in front of [mini refrigerator]" as placing the stool.
Understand "place [stool] in front of [mini refrigerator]" as placing the stool.
Understand "push [stool] in front of [mini refrigerator]" as placing the stool.
Understand "push [stool] to [mini refrigerator]" as placing the stool.

Before going up when the player is not on the stool:
try climbing the stool instead.

Before going when the player is on the stool:
try getting off the stool instead.

Carry out placing the stool:
say "You place the stool in front of the refrigerator.";
now the stool is placed properly.

Before taking the stool:
now the stool is not placed properly.

Instead of climbing the stool:
move the player to the stool.

Check taking something when the player is on the stool:
if the noun is not the ceiling, say "You can't reach that from up here." instead.

Instead of taking the crate when the player is on the stool and the stool is placed properly:
say "Taken.";
now the player carries the crate.

Check taking the crate when the player is not on the stool:
say "You can't reach that from down here." instead.

Check taking the crate when the player is not on the stool and the stool is not placed properly:
say "You can't reach that from here." instead.


The crate is an open container on the top of the refrigerator. "It's a plastic crate containing assorted cooking implements." Understand "box" as crate.
[TODO: Check taking the crate: confirm that stool was used somehow]

The stream is scenery in the kitchen. The description is "A stream runs through one end of the room."
The water is part of the stream. The description is "The water is clean and cold."
[TODO: need to be able to take water and wash hands and stuff]
 
Chapter - Oven and Hot Plate

The oven is a closed openable container and scenery in the kitchen. The description is "It's a small, purple oven, about the size of a toaster. There are a temperature dial and a timer on the front, next to the door."
The oven can be switched on. The hot plate is switched off.
Understand "preheat [something]" and "use [something]" as switching on.
[TODO: needs temperature dial and timer]

The hot plate is a supporter and scenery in the kitchen. The description is "It's a single burner hot plate. There is are a temperature dial and a red light on the front."
The hot plate can be switched on. The hot plate is switched off.
[TODO: needs power dial]

Part - Items

Chapter - Oven and Hot Plate

The oven is a closed openable container and scenery in the kitchen. The description is "It's a small, purple oven, about the size of a toaster. There are a temperature dial and a timer on the front, next to the door."
The oven can be switched on. The hot plate is switched off.
Understand "preheat [something]" and "use [something]" as switching on.
[TODO: needs temperature dial and timer]

The hot plate is a supporter and scenery in the kitchen. The description is "It's a single burner hot plate. There is are a temperature dial and a red light on the front."
The hot plate can be switched on. The hot plate is switched off.
[TODO: needs power dial]

Part - Items

The apron is a wearable thing on the hooks. The description is "A frilly pink apron. It goes over the neck and ties behind your back. It has a single pocket on the front."

The pocket is an open container and part of the apron. The description is "The pocket is trimmed in blue ric rac."

The potholder is a thing on the hooks. The description is "A relatively large (for you, in any case) pot holder, blue with yellow flowers on it. It's been burned in a few places."

The whisk is a thing. The description is "It's a steel whisk."

The knife is a thing. The description is "It's a very sharp kitchen knife."

The wooden spoon is a thing. The description is "A wooden spoon. It's a little too long for you, but you manage."

The cookie sheet is a thing in the oven. The description is "It's a cookie sheet."

The sauce pan is a thing. The description is "It's a small sauce pan with a glass lid and a black handle."

The blue bowl is an open container. The description is "A medium-sized blue plastic bowl."

The red bowl is an open container. The description is a "A small red plastic bowl."

The bar of soap is a thing. The description is "A bar of white soap."
The bar of soap is in the pocket.

The towel is a thing on the hooks. The description is "A fluffy green hand towel."

Part - Recipe 

The recipe card is a thing. The description is "It's a worn card with a recipe for chocolate chip cookies handprinted on it."

Understand the command "read" as something new.
Reading is an action applying to one thing.
Understand "read [something]" as reading.

Carry out reading something: try examining the noun.

Instead of reading the recipe card: say "[recipe]"

To say recipe:
say "Lizzie's Chocolate Chip Cookies[line break]TODO."

[ingredients]

[remember to wash hands; clean up while cookies are baking]

[
stick of butter
brown sugar
white sugar
2 eggs
vanilla extract
1 bag chocolate chips
flour
baking soda
salt

Preheat oven.
Grease cookie sheet with butter.
Melt butter.
Whisk the sugars, eggs, butter and vanilla in a large bowl until smooth.
Whisk the flour, baking soda and salt in another bowl.
Stir the dry ingredients into the wet ingredients.
Stir in the chocolate chips.
Roll dough into balls and place on pan.
Bake 15 minutes.
]


