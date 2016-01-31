"Life With OCD" by "Adri, Rob and Sin"

Use no scoring.

The story creation year is 2016.
The release number is 1.
The story headline is "A game for empathy".
The story genre is "slice of life".
The story description is "This game was created for the Global Game Jam 2016, and was written in under 48 hours. The team members were Adri, Robb Pitts and Sin Kim. The theme was 'ritual', and we used the 'Do you even care?' diversifier. Cover art was found on freepik.com and tweaked." 

Volume - Credits

Requesting story information is an action out of world.
Understand "about" and "credits" as requesting story information.
Carry out requesting story information: say "[story description][line break]".

Volume - Status Bar

When play begins:
now the left hand status line is "Anxiety: [anxiety]";
now the right hand status line is "[time of day]";
say "Your goal is to make it through the day.";
now the time of day is 7:00 AM.

Volume - Anxiety

Every turn:
if the remainder after dividing turn count by 5 is 0, decrease anxiety by 1;
if anxiety is greater than 10, now anxiety is 10;
if anxiety is less than 1, now anxiety is 1.

Instead of doing anything when anxiety is at least 10:
say "You are too anxious. You cannot do anything except wait it out."

Anxiety adjustment is a number that varies. Anxiety adjustment is 0.

To decay anxiety:
increase coping by 1;
now cooling down is anxiety adjustment;

To drop anxiety:
let n be a random number from 1 to anxiety adjustment;
decrease anxiety by n.

To raise anxiety:
let n be a random number from 2 to 4;
now anxiety adjustment is n;
increase anxiety by anxiety adjustment;

Cooling down is a number that varies. Cooling down is 0.

Every turn when Cooling down is greater than 0:
decrease cooling down by 1;
decrease anxiety by 1.

Coping is a number that varies. Coping is 0.

To reset perseverence:
now persevere count is 0.
        
to persevere:
decrease the time of day by 5 minutes;
increase persevere count by 1.

Volume - Time

The fast time rule is listed instead of the advance time rule in the turn sequence rules.

This is the fast time rule:
increment the turn count;
increase the time of day by 5 minutes.

At 9:00 AM:
if your office has not been visited, say "You are running late for work!"

at 6:00 PM:
say "It is time to leave for your evening plans."

at 6:30 PM:
if the meeting room has not been visited, say "You are running late for your meetup."

Book - Hanging Around - Not for Release

Hanging around until is an action applying to one time.

Check hanging around until:
	if the time of day is the time understood, say "It is [time understood] now!" instead;
	if the time of day is after the time understood, say "It is too late for that now." instead.

Carry out hanging around until:
	while the time of day is before the time understood:
		follow the turn sequence rules.

Understand "wait until [time]" as hanging around until.
                        
Volume - Story and Environment

The house is a region.

Book - Bedroom (Bug)

The bedroom is a room in the house. "The bathroom is to the north. The rest of the house is to the east."
The bed is a supporter in the bedroom. The bed is fixed in place.

The player is on the bed.

The bug is an animal in the bedroom.

Anxiety is a number that varies. Anxiety is 1.
Situational anxiety is a number that varies. Situational anxiety is 0.
persevere count is a number that varies. persevere count is 0.

Instead of entering the bed:
try sleeping instead.

Instead of exiting when the player is on the bed and the bug is in the bedroom:
say "You cannot leave the bed yet, because there is a bug on the floor. Ew! You hate bugs! They're so gross and... unclean.";
raise anxiety;

[dealing with it]
Instead of attacking the bug:
say "You decide to just deal with it. You flick the bug across the room, and then get out of bed.";
remove the bug from play;
decay anxiety;
move the player to the bedroom.

Understand the command "flick" as "attack".

[cleaning behavior]
Instead of cleaning the bug:
say "You scoop up the bug and discard it. Then you obsessively clean up the area.";
increase the time of day by 15 minutes;
remove the bug from play;
drop anxiety;
move the player to the bedroom.

The block rubbing rule is not listed in any rulebook.
Understand the command "clean" as something new.

Cleaning is an action applying to one thing.
Understand "clean [something]" as cleaning.
Carry out cleaning:
say "You clean [the noun]."

Instead of going east when the location is the bedroom and the bathroom has not been visited:
say "You should take a shower and get dressed first."

Book - Bathroom (Shower)

The bathroom is a room in the house. It is north of the bedroom. "[if the player is not in the shower]You are in the bathroom. You can reach the bedroom to the south.[otherwise]You are standing in the shower.[end if]"

[showering]

The shower is an enterable container in the bathroom. It is fixed in place.

Understand "shower" as entering.

Before taking the shower:
try entering the shower instead.

After entering the shower:
say "You enter the shower and wash your hair and body. You are super clean!";
raise anxiety;
now situational anxiety is 10;
reset perseverence.

Check exiting when the player is in the shower and situational anxiety is greater than 0 and persevere count is less than 3:
say "[one of]Did you wash your feet?[or]Are you sure you washed your feet?[or]You need to wash your feet![cycling]";
persevere instead.

Instead of exiting when the player is in the shower and persevere count is 3:
say "You force yourself to deal with the situation, choosing to leave the shower rather than continue to wash your feet.";
move the player to the bathroom;
now situational anxiety is 0;

Understand the command "wash" as "clean".

The feet are part of the player.

Instead of cleaning the feet:
	say "You wash your feet.";
	decrease situational anxiety by 1;
	decrease persevere count by 1;        
	if situational anxiety is 0:
		say "Your feet are finally clean enough!";
		drop anxiety.

Instead of going south from the bathroom when the player has not been inside the shower:
say "You need to take a shower."

Book - Bedroom (Clothing)

Clothing is a kind of thing. Clothing is wearable.

A shirt is a kind of clothing.
A pants is a kind of clothing.

Before wearing a shirt for the first time:
raise anxiety;
now situational anxiety is 1;
reset perseverence.

Instead of going east from the bedroom when the player does not wear a pants and the time of day is before 10:00 PM:
say "You need to put on pants." instead;

Instead of going east from the bedroom when the player does not wear a shirt and the time of day is before 10:00 PM:
say "You need to put on a shirt." instead.

Check going east from the bedroom when situational anxiety is greater than 0 and persevere count is less than 1:
say "You realize that your shirt has a slight pattern that doesn't match your pants. You can either change your outfit or leave despite this.";
persevere instead.

Before going east from the bedroom when the player is wearing a shirt and the player is wearing a pants:
	if persevere count is 1:
		say "You decide that you look just fine.";
		decay anxiety;
		now situational anxiety is 0;
	else if situational anxiety is 0:
		say "After changing your clothing enough times, you think you look passable.";
		say "You decide that you look just fine.";
		drop anxiety;
                
Before wearing a pants when the player wears a pants:
try taking off a random pants worn by the player;
try dropping a random pants carried by the player.

Before wearing a shirt when the player wears a shirt:
try taking off a random shirt worn by the player;
try dropping a random shirt carried by the player.

After taking off a clothing:
decrease persevere count by 1.

The dresser is a closed openable container in the bedroom. It is fixed in place.

The blue shirt is a shirt in the dresser.
The red shirt is a shirt in the dresser.
The green shirt is a shirt in the dresser.
The orange pants is a pants in the dresser.
The purple pants is a pants in the dresser.

Instead of wearing a clothing when the bathroom has not been visited:
say "You need to take a shower before you can get dressed."

Getting dressed is an action applying to nothing.
Understand "get dressed" as getting dressed.

Instead of getting dressed:
say "What would you like to wear?"

Instead of taking off the clothing when the location is not the bedroom:
say "No, you'd better not."

Book - Living Room 

The living room is a room in the house. It is east of the bedroom. "You are in the living room. The bedroom is to the west, and the kitchen is to the east. The front door is south."

The house door is a closed, lockable door and scenery. It is unlocked by the keys. It is south of living room and north of the front lawn. Understand "front door" as house door.

Instead of going through the house door when the kitchen has not been visited:
say "You should visit the kitchen first."

Book - Kitchen (breakfast)

The kitchen is a room in the house. It is east of the living room. "You are in the kitchen. The living room is to the west."

The stove is a device in the kitchen. The stove is switched off.

The breakfast is an edible thing in the kitchen.
Breakfast can be cooked or not cooked. The breakfast is not cooked.

Check eating breakfast when breakfast is not cooked:
say "You need to cook that first." instead.

Cooking is an action applying to one thing.
Understand "cook [something]" as cooking.
Carry out cooking: say "You can't cook that."

Making is an action applying to one thing.
Understand "make [something]" as making.
Carry out making: say "You're not sure how to do that."

Instead of making breakfast:
try cooking breakfast.

Instead of cooking breakfast:
say "You turn on the stove and heat up your food. Then you turn off the stove.";
now breakfast is cooked;
raise anxiety;
now situational anxiety is 5;
reset perseverence.

Before switching off the stove when the stove is switched off:
decrease situational anxiety by 1;
decrease persevere count by 1.

Check going from the kitchen when situational anxiety is greater than 0 and persevere count is less than 1:
say "[one of]Did you turn off the stove?[or]Are you sure you turned off the stove?[or]You need to turn off the stove![cycling]";
persevere instead.

Instead of going from the kitchen when persevere count is 1:
say "You know the stove is definitely turned off. You choose to ignore your impulses and leave the kitchen.";
move the player to the living room.

Instead of going from the kitchen when breakfast is in the location or breakfast is enclosed by the player:
say "You need to eat breakfast."

Book - Front Lawn

The keys are a thing.

Instead of dropping the keys when the location is not the house:
say "No! You need your house keys."

After going through the house door:
now the player carries the keys;
now the house door is closed;                
now situational anxiety is 5;
reset perseverence;
raise anxiety.

The front lawn is a room. "You are standing on the front lawn. The house is north. The train station is south."

Instead of going through the house door when the location is front lawn and your office has not been visited:
say "You're going to be late for work! You have a train to catch."

Does the player mean locking the house door with the keys: it is likely.

After locking the house door with the keys when the house door is not locked:
say "You lock the front door."

After locking the house door with the keys when the house door is locked:
	decrease situational anxiety by 1;
	decrease persevere count by 1;        
	if situational anxiety is 5:
		say "You're quite certain the door is locked.";
		drop anxiety;
                
Check going south from the front lawn when situational anxiety is greater than 0 and persevere count is less than 1:
say "[one of]Have you locked the door?[or]Are you sure you locked the front door?[or]You need to lock the front door![cycling]";
persevere instead.

Instead of going south from the front lawn when persevere count is 1:
say "The door is locked. You decide to leave it alone and go to work.";
now situational anxiety is 0;
move the player to the home station.

Book - Train (designed by Rob)

Chapter - Station

The home station is a room. It is south of the front lawn. "Commuters are waiting for the in-bound train.  The train arrives. The entrance is to the west."

Chapter - Train

[Train with 3 cars.  Front door (where enter) is east; middle/back door (where exit) are west.]
The vestibule is a room. "You tap your card to pay. You should move south into the train." The printed name is "Front Car".

Instead of going east from the vestibule:
say "No, you need to move further into the train."

Instead of going north from the front car:
say "No, you need to move further into the train."

Instead of going north from the mid car:
say "There's no room for you back in that car."

The Front Car is a room. "The train is packed with commuters. You can move south further into the train."
The Mid Car is a room. "There are less people in this part of the train. There is enough room for you to stand and hold onto the bar. You can also move north and south through the train."
The Back Car is a room. "The train is packed with commuters. You can move north into the rest of the train."

The front car is south of the vestibule. The Mid Car is south of the Front Car. The Back Car is south of the Mid Car.
The Train is a region.
The vestibule, Front Car, Mid Car, and Back Car are in the Train.

The front door is east of the vestibule and west of the home station.  The front door is an open unopenable door and scenery.

Chapter - Tapping (Vestibule / Front Car)

Before going through the front door:
now situational anxiety is 4;
reset perseverence.

The card reader is a device. It is fixed in place. The card reader is in the vestibule.

Before going to Front Car when situational anxiety is greater than 0 and persevere count is less than 1:
Say "You're not sure whether you successfully tapped your card.";
decrease the time of day by 5 minutes;
persevere instead.

Before going to the Front Car when the location is vestibule and persevere count is 1:
say "You know you tapped your card. You move further into the train.";
now situational anxiety is 0;
decay anxiety.
	
Tapping is an action applying to one thing.
Understand "tap [something]" as tapping.
Carry out tapping: try touching the noun instead.

Instead of tapping the card:
try switching on the card reader.

Instead of switching on the card reader:
	Say "Card re-tapped.";
	decrease situational anxiety by 1;
	decrease persevere count by 1;
	if situational anxiety is 0:
		say "You've tapped your card enough times.";
		drop anxiety.

Chapter - Bar

The bar is a thing in the mid car. It is fixed in place.

Instead of taking the bar:
say "You hold onto the bar as the train starts up again.";
try silently touching the bar.

After touching the bar:
say "Another person's hand slides towards yours on the bar. This triggers a compulsion to repeat the word 'noodles' over and over in your head. But perhaps you could resist this time.";
raise anxiety;
now situational anxiety is 5.

Resisting is an action applying to nothing.
Understand "resist" and "do not say noodles" as resisting.

Carry out resisting:
say "Instead of saying 'noodles', you breathe deeply and maintain your hold on the bar. You even slide your hand closer to the other person's. This is your space, you seem to say.";
decay anxiety;
the homeless man arrives in zero turns from now.

Saying noodles is an action applying to nothing.
Understand "say noodles" and "noodles" as saying noodles.

Carry out saying noodles:
	say "You mouth the word 'noodles' under your breath.";
	decrease situational anxiety by 1;
	if situational anxiety is 0:
		drop anxiety;
		the homeless man arrives in zero turns from now.

Chapter - Homeless Man

The homeless man is a man. The homeless man can be physical. The homeless man is not physical.

At the time when the homeless man arrives:
try waiting;
move the homeless man to the mid car;
say "The train stops and a homeless man gets on board. He goes person to person asking for spare change. This makes you feel extremely anxious. Your inclination is to turn away from him and hope he ignores you. Either way, you actually don't have any change.";
raise anxiety.

Turning away is an action applying to nothing.
Understand "turn away" as turning away.

Carry out turning away:
say "There's no need to do that."

Instead of turning away when the homeless man is in the location:
say "You turn away. The man touches you and asks, 'Spare some change?' You want to walk away from him. Or maybe you can try talking to him.";
drop anxiety;
raise anxiety.

Instead of talking to the homeless man:
say "You face the man and tell him, 'I'm sorry, I don't have any change.' He nods at you and walks away.";
decay anxiety;
the seat opens up in zero turns from now.

Instead of going when the homeless man is in the location:
say "You push your way past the homeless man, into the next car.";
move the player to the back car;
drop anxiety;
the seat opens up in zero turns from now.

Before going to the back car for the first time:
now the back car is not preferred.

Chapter - Seat

Does the player mean entering the seat: it is likely.

The seat is an enterable supporter. It is fixed in place.

The seat can be clean or dirty. The seat is dirty.

At the time when the seat opens up:
remove the bar from play;
move the homeless man to the front car;
try waiting;
say "The train stops again, and a seat opens up. You'd love to sit, but the seat looks wet.";
move the seat to the location;
raise anxiety.

Instead of cleaning the seat:
say "You dig around in your pockets out of habit and find a packet of tissues. You place one down on the seat before sitting down.";
now the seat is clean;
try silently entering the seat;
drop anxiety.

Before entering the dirty seat:
say "You choose to ignore the liquid and sit down.";
decay anxiety.

After entering the seat:
the child arrives in zero turns from now.

Chapter - Child

The child is a woman.

At the time when the child arrives:
try waiting;
say "The train stops, and a small child and her mom get on. The child sits next to you. You recoil. Kids are such germ factories.";
move the child to the location;
raise anxiety.

Instead of talking to the child:
say "You say 'hello' to the child and ask her how she's doing. She grins at you. Children aren't so bad, maybe.";
decay anxiety;
the train stops in zero turns from now.

Instead of exiting when the player is on the seat and the child is in the location:
say "Ugh. You quickly stand up to get away from the child.";
drop anxiety;
the train stops in zero turns from now.

Chapter - Exiting the Train

The back car can be preferred or not preferred. The back car is preferred.

At the time when the train stops:
remove the child from play;
try waiting;
say "The train stops. You have reached your destination. The exit is to the west.[paragraph break]You have a very, very strong preference to leave through the door in the [if the back car is preferred]back[otherwise]middle[end if] of the train to the [if the back car is preferred]south[otherwise]north[end if], but you will need to push through a lot of people to get there. Alternatively, you can leave through the [if the back car is preferred]middle[otherwise]back[end if] door, which is right here.";
raise anxiety;
now the description of the mid car is "The exit is to the west. Other cars are to the north and south.";
now the description of the back car is "The exit is to the west. Other cars are to the north."

Before going through the middle door:
	if back car is preferred:
		decay anxiety;
	otherwise:
		increase the time of day by 10 minutes;
		drop anxiety.
                
Before going through the back door:
	if back car is preferred:
		increase the time of day by 10 minutes;
		drop anxiety;
	otherwise:
		decay anxiety;

The Work Station is a region.                
The North Platform is a room in the work station. "You are standing on the station platform. The platform continues to the south."
The South Platform is a room in the work station. It is south of the north platform. "You are standing on the station platform. The platform continues to the north. The sidewalk is to the west."

The middle door is an open, unopenable door and scenery. It is west of the mid car and east of the north platform.
The back door is an open, unopenable door and scenery. It is west of the back car and east of the south platform.

Book - Downtown (designed by Rob)

The Downtown is a region.

The Pedestrians are a backdrop in Downtown.

A sidewalk is a kind of room. Every sidewalk is in Downtown.
The printed name of a sidewalk is "On the sidewalk".

The LRS is a sidewalk. "A city sidewalk is littered with trash from late night revelry. Your office building is up the sidewalk to the north. A crosswalk is to the west."

The dog poop is a thing in LRS.  The initial appearance is "There is a pile of dog poop here, buzzing with flies."

Before going north when the location is LRS for the first time:
say "You'd really prefer not to go near the dog poop.";
reset perseverence instead.

Instead of going north when the location is LRS and persevere count is less than 1:
say "Perhaps you can cross the street and walk around the poop instead.";
persevere instead.

Before going north when the location is LRS and persevere count is 1:
say "You step right over the poop. Good for you!";
decay anxiety.

Before going east when the location is Northern Crosswalk:
say "You've circumvented the poop.";
drop anxiety.

The LLS is a sidewalk in Downtown. "This side of the street is clean. The sidewalk is up the block to the north. A crosswalk is to the east."

The URS is a sidewalk in Downtown. "The sidewalk continues to the south. A crosswalk is to the west. Your office building is to the east."

The ULS is a sidewalk in Downtown. "The sidewalk continues to the south. A crosswalk is to the east."

The Northern Crosswalk is a room in Downtown. "You are standing in the middle of the street. You can go east or west."
The Southern Crosswalk is a room in Downtown. "You are standing in the middle of the street. You can go east or west."

The LRS is west of the South Platform.
The Southern Crosswalk is west of the LRS.
The LLS is west of the Southern Crosswalk.

The URS is north of the LRS.
The Northern Crosswalk is west of the URS.
The ULS is north of the LLS and west of the Northern Crosswalk.

Book - Work (designed and written by Sin)

Work is a region.

The Office Building is a room in work. It is east of the URS. "You are on the first floor. Your company's office is upstairs. The street is west." 

Instead of going west from office building when time of day is before 6:00 PM:
say "Wait, where are you going? You should be working."

Employee lounge is a room in work. "You are at the employee lounge. Your office is east. The bathroom is west. The cafeteria is north. You are on the second floor." The employee lounge is up from office building.

Employee bathroom is a room in work. It is west of the employee lounge. "You are in the bathroom. The lounge is east."

Your office is a room in work. It is east of the employee lounge. "You are in your office. You let no one else touch or move anything in the office. You should get started on your work. The lounge is west."

Cleanness is a number that varies. Cleanness is 0.
The hands are part of the player.

After entering your office:
  say "You usually make sure your hands are clean before you touch anything on your desk.";
  raise anxiety;
  now situational anxiety is 10;
  reset perseverence.

Instead of cleaning hands:
	if the player is not in employee bathroom:
		say "You have to go to the bathroom to wash your hands.";
	otherwise:
		say "You wash your hands.";
		if cleanness is less than 3:
			increase cleanness by 1;
		if cleanness is 3:
			say "Your hands should be clean now.";
			drop anxiety.
                        
Working is an action applying to nothing.
Understand "work" as working.
Understand "do work" as working.
work-score is a number that varies. work-score is 0.

Check working when the player is not in your office:
say "You have to be in your office at work to do work." instead.

Check working when cleanness is 0 and situational anxiety is greater than 0 and persevere count is less than 3:
  say "You refuse to touch your computer with dirty hands.";
  persevere instead.

Check working when persevere count is greater than 2:
  say "You realize that your hands are not that dirty at all and do work.";
  now situational anxiety is 0.

Check working when hungry is true:
	if a random chance of 1 in 2 succeeds:
		say "You feel hungry and cannot focus." instead.

Carry out working:
	say "You get some work done.";
	increase work-score by 1;
	if a random chance of 1 in 10 succeeds:
		say "Your hands are sweating.";
		decrease cleanness by 1;
		raise anxiety.

Chapter - Work (lunch)

Hungry is a truth state that varies. Hungry is false.

Every turn when the location is work:
If hungry is true and the remainder after dividing turn count by 5 is 0, say "You are hungry."

At 12:00 PM:
	say "It's lunch time. You are hungry.";
	now hungry is true;
	if the player is in work:
		say "You should go to the cafeteria."

At 1:00 PM:
	if the player is not in your office and the player is in work:
		say "You should be working now."

Employee cafeteria is a room in work. It is north of the employee lounge. "You are in the cafeteria. You can get food and eat here. The lounge is south."

A sandwich is a kind of thing. A sandwich is edible.

In employee cafeteria are 5 sandwiches.

Check taking sandwich when hungry is false:
	say "You are not hungry." instead.
Check taking sandwich when the player has a sandwich:
	if sandwich-suspicious is false:
		say "You already have a sandwich." instead.
Carry out taking sandwich:
	now sandwich-suspicious is false.

A sandwich has a number called examine-count. examine-count of sandwich is usually 0.
sandwich-suspicious is a truth state that varies. sandwich-suspicious is false.
Instead of examining sandwich:
	if the player has no sandwich:
		say "You have to take a sandwich to examine it closely.";
		try taking the noun;
	increase examine-count of the noun by 1;
	if a random chance of 3 in 4 succeeds:
		say "The sandwich seems clean...";
		if examine-count of the noun is greater than 3:
			say "You are sure the sandwich is clean now.";
			let n be a random number from 1 to 5;
			decrease anxiety by n;
	otherwise:
		say "Was that a blot on the [one of]lettuce[or]bread[or]cheese[at random]? You feel like taking a different sandwich.";
		now sandwich-suspicious is true;
		increase anxiety by 2.

Check eating sandwich:
	if the player does not have a sandwich:
		say "You don't have any sandwich in your possession." instead;
	otherwise if examine-count of the noun is 0:
		say "As soon as you think about eating the sandwich, you remember seeing a strand of hair inside a cafeteria sandwich once. You should examine the sandwich and make sure it's clean!";
		increase anxiety by 4 instead;
	otherwise if sandwich-suspicious is true:
		say "This sandwich seemed suspicious. You cannot eat it." instead.

Carry out eating sandwich:
	now hungry is false.

Before going south from employee cafeteria:
	if the player carries a sandwich, say "You throw away the sandwiches you haven't eaten before leaving.";
	while the player has a sandwich (called w) begin;
		try dropping w;
	end while;
	now cleanness is 0.

Chapter - intermittent phone calls (Adri)

The phone is a thing in your office. It is fixed in place.
The phone can be ringing. The phone is not ringing.
The phone can be dirty. The phone is dirty.

Every turn when the phone is ringing and the location is your office:
say "The phone rings."

Instead of cleaning the phone:
say "You take a tissue and give the phone a good wipe-down.";
now the phone is not dirty;
drop anxiety.

Answering is an action applying to one thing.
Understand "answer [something]" as answering.
Carry out answering: say "You can't answer that."

Check answering the phone when the phone is not ringing:
say "The phone is not ringing." instead.

Check answering the phone when the phone is dirty and persevere count is less than 1:
say "Ew. You don't want to touch that.";
decrease the time of day by 5 minutes;
persevere instead.

To answer the phone:
now the phone is not ringing;
now the phone is dirty.

Instead of answering the phone when the phone is ringing and the phone is dirty and persevere count is 1:
say "You ignore the perceived uncleanliness of the phone and answer it anyway. You have a brief conversation.";
answer the phone.

Instead of answering the phone when the phone is ringing and the phone is not dirty:
say "You pick up the phone and have a brief conversation.";
answer the phone.

Every turn when the location is your office and the phone is not ringing and murphy is not in your office:
	let n be a random number between 1 and 20;
	if n is 1:
		say "The phone rings. But you don't want to answer the phone until you wipe it down.";
		now the phone is ringing;
		raise anxiety;
		reset perseverence.
        
Chapter - Work (client)

At 2:50 PM:
	say "You have an appointment with an important client soon."

Murphy is a man.

At 3:00 PM:
	if the location is in work:
		say "Murphy, an important client for the company, has arrived at your office.";
	move Murphy to your office.

murphy-patience is a number that varies. murphy-patience is 3.

Every turn when Murphy is in your office and the player is not in your office:
	decrease work-score by 2;
	decrease murphy-patience by 1;

met-murphy is a truth state that varies. met-murphy is false.
murphy-progress is a number that varies. murphy-progress is 0.
murphy-previous is a number that varies. murphy-previous is 0.

Every turn when Murphy is in your office and the player is in your office:
	if met-murphy is false:
		now met-murphy is true;
		say "'Hello, nice to meet you.' Murphy extends his right hand to shake your hand as he introduces himself. You shake hands. You feel dizzy imagining all the germs on his hand swarming over to yours. You feel a strong urge to head to the bathroom to wash your hands.";
		raise anxiety;
		say "However, you should be talking to Murphy and discussing work.";
	otherwise if murphy-progress is murphy-previous:
		say "You should be talking to Murphy and making progress.";
		decrease murphy-patience by 1;
	now murphy-previous is murphy-progress.

Instead of talking to Murphy:
	if hungry is true and a random chance of 1 in 2 succeeds:
		say "You feel hungry and cannot focus.";
		decrease murphy-patience by 1;
		say "'Hello? Were you listening?' Murphy notices that you are not making much sense.";
	otherwise:
		say "You and Murphy talk business.";
		decay anxiety;
		increase murphy-progress by 1;
		increase the time of day by 10 minutes.
                        
Every turn when Murphy is in your office and the player is in your office:
	if murphy-patience is 0:
		decrease work-score by 4;
		say "Murphy becomes impatient with you and leaves.";
		remove Murphy from play;
	otherwise if murphy-progress is 3:
		increase work-score by 16;
		say "Murphy is done with his business here. He leaves pleased.";
		remove Murphy from play.

Book - Social Event

Before going west from office building:
say "You go to your after-work meetup. Nothing eventful happens on the way.";
if the time of day is before 6:30 PM, now the time of day is 6:30 PM;

After going west from office building:
move the player to the meeting room;

The meeting room is a room. "You are at a meetup after work. The exit is north."

After looking in the meeting room for the first time:
raise anxiety;
now situational anxiety is 1.

Every turn:
	if the location is the meeting room and situational anxiety is 1 and the remainder after dividing turn count by 3 is 0:
		say "[one of]You feel a compulsive need to call your mother and check in.[or]Really, you should call your mother.[or]Is your mother all right?[cycling]"

Calling mom is an action applying to nothing.
Understand "call mom" and "call mother" as calling mom.
Carry out calling mom:
say "[one of]You call your mom and make sure she's ok. She's just fine. You hang up.[or]You call your mom again. She's still ok. She's a little bit busy.[or]You call your mom yet again. You know she loves you and understands this is an issue for you, but she's getting a little exasperated.[or]You call your mom. She doesn't answer.[stopping].";

Calling later is an action applying to nothing.
Understand "call her later" or "resist" or "call mom later" or "call later" or "do not call mom" as calling later.
Carry out calling later:
say "You're quite certain your mother is fine. You will call her tonight.";
now situational anxiety is 0;
decay anxiety.

The pizza is an edible thing in the meeting room.
The cheese is part of the pizza.

Before eating the pizza for the first time:
say "Ew. You don't like the mouth-feel of melted cheese. You could remove the cheese and possibly embarrass yourself or just deal with it.";
raise anxiety instead.

Instead of taking the cheese:
say "You discreetly peel the cheese off your pizza and leave it on your plate. You get a few odd looks. But now you can eat the pizza.";
drop anxiety;
remove the cheese from play.

Instead of eating the pizza when the cheese is part of the pizza:
say "You suck it up and eat the pizza, cheese and all.";
decay anxiety.

The tall man is a man in the meeting room.

Talking to is an action applying to one thing.
Understand "talk to [someone]" as talking to.
Carry out talking to: say "There's nobody there."

Instead of talking to the tall man:
say "No. You are feeling too shy to talk to anyone else today."

The exitdoor is an open door and scenery. It is north of meeting room. Through it is the front lawn.

Before going from the meeting room:
say "After the meetup, you go straight home.";
if the time of day is before 9:55 PM, now the time of day is 9:55 PM.

Book - Bedtime (Bedding)

[clear away the spare clothing]
Before going to the bedroom when the time of day is after 6:00 PM:
	repeat with item running through things in the bedroom:
		move the item to the dresser.

Check sleeping when the time of day is before 10:00 PM:
say "It's not time for bed yet." instead.

Check sleeping when the location is not the bedroom:
say "You can only sleep in your bedroom." instead.

At 10:00 PM:
say "It's time for bed!";
now the bed is unmade.

After switching off the stove when the time of day is after 10:00 PM:
decrease situational anxiety by 1;
decrease persevere count by 1.

After locking the house door with the keys when the time of day is after 10:00 PM:
decrease situational anxiety by 1;
decrease persevere count by 1.

The bed can be made or unmade. A bed can be perfect or sloppy. The bed is made.

Check sleeping when the bed is unmade:
say "You can't sleep until you make the bed." instead.

Instead of making the bed when the bed is unmade:
say "You quickly make the bed.";
now the bed is made;
now the bed is sloppy;
now situational anxiety is 9;
reset perseverence.

Instead of making the bed when the bed is sloppy:
say "You make the bed, aligning every corner perfectly.";
increase the time of day by 15 minutes;
now the bed is perfect;
reset perseverence.

Check sleeping when situational anxiety is greater than 0 and persevere count is less than 6:
	if the bed is sloppy and persevere count is less than 3:
		say "You can't sleep until you make the bed perfectly.";
	otherwise:
		say "You can't sleep yet[one of]. Have you checked the stove?[or]. Have you checked the locks?[cycling]";
	persevere instead.

Check sleeping when situational anxiety is 0:
	say "Satisified, you are able to fall asleep.";
	end the story finally saying "You made it through an entire day! Hurray for you!"

Check sleeping when persevere count is 6:
	now anxiety is 1;
	say "You force yourself to go to sleep. The locks and stove are fine. Everything is just fine.";
	end the story finally saying "You made it through an entire day![if coping is greater than 0]  You even learned some new coping skills![end if] Hurray for you!"

Volume - Testing

Test me with "flick bug / north / take shower / out / out / out / out / south / open dresser / wear purple / wear blue / east / east / east / make breakfast / eat breakfast / west / west / south / south / south".
                
test train with "west / south / south / south / hold bar / resist / talk to man / sit / stand up".

