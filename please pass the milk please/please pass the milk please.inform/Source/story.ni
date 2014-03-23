"Fingertips: Please Pass the Milk Please" by "Adri".

Volume - Basic Setup

Include Fingertips by Adri.

Release along with cover art, an interpreter and a "Genericgeekgirl" website.

Carry out asking for credits: say "'Please Pass the Milk Please' was written for the Apollo 18+20 tribute album. Thanks so much to Kevin Jackson-Mead for organizing the compilation and inspiring me to finally write my first (and second!) game. Thank you to everyone in PR-IF and on ifMUD for just generally being encouraging and helpful. Thank you to everyone who provided feedback on the game, especially cyberskunk, Lorenzo Batallones, Felix Plesoianu and jpt. And last, but not least, thanks to They Might Be Giants for making awesome music.".

The story creation year is 2012.
The release number is 3.
The story headline is "An interactive snack".
The story genre is "slice of life".
The story description is "A short piece of interactive fiction inspired by They Might Be Giants' 'Apollo 18' album".

When play begins:
say "[ITALIC TYPE]Please pass the milk, please.[LINE BREAK]Please pass the milk, please.[LINE BREAK]Please pass the milk, please.[ROMAN TYPE][LINE BREAK]"

Volume - Kitchen

The Kitchen is a room.

The chair is scenery in the kitchen. The description is "It's just a chair." The player is on the chair.

The table is a supporter and scenery in the kitchen. Instead of examining the table: try examining the tablecloth.

The tablecloth is part of the table. The description is "The blue and white checkered table cloth brightens up the room."  Understand "table cloth" as the tablecloth. The tablecloth is wearable.

Volume - Sam

Sam is a proper-named man in the kitchen. "Your brother Sam is sitting across from you." The description is "There are traces of chocolate on his cheeks. He seems to be waiting for something." Understand "brother" and "boy" as Sam.

Volume - Player

The description of the player is "You're wearing the 'Science is Real' t-shirt you got at the They Might Be Giants concert last summer."

The shirt is worn by the player. The description is "It's one of your favorites." Understand "t-shirt" as shirt.

The jeans are worn by the player. They are plural-named. Understand "pockets" and "pocket" as the jeans. The description is "They're just a regular old pair of blue jeans. There is nothing in the pockets. Not even a ball of lint."

Check taking off something (this is the no nudity rule):
	if the noun is worn by the player, say "You should probably keep your clothes on." instead.

Volume - Throwing Away

Throwing away is an action applying to one thing.
Understand "throw [something] away" and "throw away [something]" and "dump [something]" as throwing away.
Carry out throwing away: say "There's no need to do that."

Instead of throwing away the brownies:
say "You stand up, pick up the plate, and carry it over to the trash. Sam screams and propels himself into you, causing you to drop the plate. The brownies fly everywhere and the plate shatters. You had better clean up this mess before your parents get home.";
try failing.

Instead of throwing away the milk:
say "You stand up, pick up the milk and carry it over to the sink. Sam jumps to his feet immediately, but it's too late. You've already dumped the contents. Sam throws himself at the floor and throws a tantrum, the likes of which you have never seen before.";
try failing.
        
Volume - Vocalizations

Instead of crying: say "Sam blinks at you in surprise.".
Instead of shouting: say "Sam cringes.".
Instead of swearing obscenely: say "Sam's eyes go wide.".
Instead of talking: say "Sam just shakes his head and frowns impatiently."
Instead of singing, say "You hum a little tune. Sam actually smiles a little."

Volume - Other Commands

Instead of taking inventory: say "Your pockets are empty.".

Instead of casting xyzzy: say "A hollow voice says, 'Milk: it does a body good.'".

Instead of looking under: say "You don't find anything underneath [the noun].".

Instead of doing anything except examining to a picture: say "You can't see any such thing.".

Instead of dancing: say "You do a little dance in your seat. Sam giggles."

Instead of waiting: say "[one of]Sam picks up his cup and peers into it. He pouts and sets it back down.[or]Sam turns his cup over, giving it a little shake to remind you that it's empty.[or]Sam picks up his cup and bangs it on the table.[or]Sam reaches towards the milk, waving his arm wildly to make his point.[at random]"

Volume - Taking Things

Instead of taking the tablecloth:
	say "You pull the tablecloth off the table, spilling milk and brownies all over Sam. He's too shocked to say anything for a moment, and then he starts bawling.";
	try failing.

Volume - Wearing Things

Instead of wearing the tablecloth:
say "You pull the tablecloth off the table and wrap it around your shoulders like a cape. In the process, you spill milk and brownies all over Sam. He immediately starts screaming.";
try failing.

Check wearing something (this is the you can't wear anything that isn't clothing rule):
if the noun is not wearable, say "You don't know how to wear that!" instead.

Volume - Showing Things to Sam

Instead of pointing: try showing the noun to Sam.
Does the player mean showing something to Sam: it is very likely.

Instead of showing something to Sam:
	If the noun is the milk carton or the noun is the cup:
		say "You point at [the noun]. Sam gets really excited. He picks up his cup and bangs it on the table.";
	otherwise if the noun is Sam:
		say "You point at Sam. He points right back at you.";
	otherwise:
		say "You point at [the noun]. Sam points at the milk.";

Volume - Running
            
Running is an action applying to nothing.
Understand the command "run" as something new. Understand the command "run away" as something new.
Understand "run" and "run away" and "run around/in house" and "run around/in the house" as running.
Instead of running: say "You're not allowed to run in the house!"

Running with scissors is an action applying to nothing.
Understand "run with scissors" as running with scissors.
Instead of running with scissors: say "The last thing you need right now is a trip to the hospital. Also, you don't have any scissors."

Volume - (Not) Passing the Milk

Not passing the milk is an action applying to one thing.
Understand "don't pass [milk carton]" and "do not pass [milk carton]" as not passing the milk.
Report not passing the milk: try taking the milk.

Understand "please pass [something] to [someone]" or "please pass [something] to [someone] please" or "pass [something] to [someone] please" or "pass [something] to [someone]" as giving it to.

Volume - Giving Things to Sam

Understand the command "share" as "give".
Understand "share [something] with [someone]" as giving it to.

Understand "clear" and "clear [something]" as a mistake ("That's not a verb I recognize.")

Rule for supplying a missing second noun when giving: now the second noun is Sam.

Instead of giving the milk carton to Sam:
	say "You pour the milk into Sam's cup. He picks up the cup and takes a big gulp. He grins at you.";
	try winning;

Check giving something to Sam (this is the can't give a person away rule):
if the noun is Sam or the noun is the player, say "That's an odd thing to do." instead.
	
Instead of giving something (called S) to Sam:
	if S is:
		-- the glass:
		say "He already has a cup. He would probably break it anyway.";
		-- the cup:
		say "He already has that.";
		-- the brownie:
		say "He doesn't need another brownie. He needs a glass of milk.";
		-- the plate of brownies:
		try giving the brownie to Sam;
		-- otherwise:
		say "He doesn't need [the noun]."

Volume - Entering (Sitting) and Exiting (Standing)

Instead of going down: try entering the chair.

Instead of entering Sam: say "Sam pushes you away."
Instead of entering the player: say "No matter how you twist and turn, you can't seem to manage that."

Instead of going up: try exiting.

Rule for supplying a missing noun when entering: now the noun is the chair.
Does the player mean entering the chair: it is very likely.
Does the player mean entering Sam: it is very unlikely.

Instead of entering the table: say "Don't do that. You might make a mess."

Understand the command "sit" as something new.
Understand "sit" and "sit on [something]" and "sit down" as entering.

Instead of exiting:
	say "You stand up and walk away. Sam throws his cup at you.";
	try failing.

Volume - Counting

Counting nothing is an action applying to nothing.
Understand "count" as counting nothing.

Report counting nothing: 
	say "You forget all about the brownies and break into an impromptu game of hide-and-seek.";
	try failing.

Instead of counting the player, say "You are a unique and special snowflake."
Instead of counting Sam, say "There's only one of him. Thankfully."
Instead of counting the brownie: try counting the plate of brownies.
Instead of counting the plate of brownies, say "The plate contains 69,105 brownies."
Instead of counting something, say "There's just the one."
        		
Counting cups is an action applying to nothing.
Understand "count glasses" or "count cups" as counting cups.
Instead of counting cups, say "There are two: your glass and Sam's cup.".

Volume - Licking

Licking is an action applying to one thing.
Understand "lick [something]" as licking.

Instead of licking something: say "You pick up [if the noun is wearable]the edge of [end if][the noun], lick it, and put it back. Ew."

Instead of licking the table: try licking the tablecloth.

Instead of licking the player: say "You lick your arm. Sam just stares at you."

Instead of licking sam: say "You try to lick Sam on the cheek. He kicks you in the shin."

Volume - Eating

Understand the command "eat" as something new.
Understand "eat [something]" as eating.

report eating something: say "You can't eat that!" instead.
        
Understand "gnaw [something]" or "gnaw on [something]"as eating.
Understand "chew [something]" or "chew on [something]"as eating.

Does the player mean eating the brownie: it is very likely.

Instead of eating the player, say "You gnaw on your arm. Sam giggles."

Procedural rule while eating something:
ignore the carrying requirements rule.

Instead of eating something (called S):
	if S is:
		-- the brownie:
		try taking the brownie;
		-- the plate of brownies:
		try taking the plate of brownies;
		-- the table:
		say "You gnaw on the edge of the table. You must really be hungry.";
		-- Sam:
		say "You bite Sam's shoulder. He yelps and slaps you away.";
		-- otherwise:
		say "You pick up [if the noun is wearable]the edge of the [end if][the noun] and gnaw on it. Sam giggles.".

Volume - Throwing

Procedural rule while throwing something at something: ignore the carrying requirements rule.

Procedural rule while dropping something:
ignore the carrying requirements rule;
ignore the can't drop what's not held rule.

Understand the command "throw" as something new.
Throwing is an action applying to one thing.
Understand "throw [something]" as throwing.

Understand "throw [something] at [something]" as throwing it at.

Instead of throwing something: try throwing the noun at Sam.

Instead of throwing the player at Sam:
	say "You hurl yourself past Sam at the wall. Sam just stares at you as you limp quietly back to your seat.";

Understand the command "toss" and "hurl" as "throw".

Instead of throwing Sam at something: try taking Sam.
Instead of throwing Sam at Sam: try taking Sam.

Instead of throwing something at something: say "It's not nice to throw things!"

Instead of throwing something (called S) at Sam:
	if S is:
		-- the milk carton:
		say "You pick up the carton of milk and throw it at Sam. Milk flies everywhere. Sam is too startled to cry.";
		try failing;
		-- the plate of brownies:
		say "You throw the plate of brownies at Sam. Brownies fly everywhere and the plate shatters against the wall. You'd better clean up that mess before someone gets hurt.";
		try failing;
		-- the glass:
		say "You throw your glass at Sam. He ducks and it shatters against the wall. You'd better clean up that mess before someone gets hurt.";
		try failing;
		-- the cup:
		try taking the cup;
		-- the tablecloth:
		try taking the tablecloth;
		-- the table:
		try taking the table;
		-- the shirt:
		try dropping the shirt;
		-- the chair:
		say "Don't do that. Someone might get hurt.";	
		-- otherwise:
		say "You pick up [the S] and throw it at Sam. He catches it and tosses it back at you. It bounces off your shoulder."
		
Instead of taking the table:
say "You lift up your side of the table, spilling milk and brownies all over Sam. He's too shocked to say anything for a moment, and then he starts bawling.";
try failing.

Understand the command "flip" as "throw".

Volume - Smiling

Smiling at is an action applying to one thing.
Understand "smile at [something]" as smiling at.

Rule for supplying a missing noun when smiling at: now the noun is Sam.

Carry out smiling at something: say "You smile widely."

Instead of smiling at Sam: say "You smile widely. Also wildly. Sam scowls back at you."

Volume - Physical Interaction

Cleaning is an action applying to one thing.
Understand "clean [something]" as cleaning.
Report cleaning: say "There is no need to clean that right now."

Instead of cleaning Sam, say "You try to clean Sam's face, but he pushes you away."

Instead of taking Sam, say "You try to pick up Sam. He squirms away.";

Instead of poking the player, say "Ouch! That hurt."
Instead of poking Sam, say "You give Sam a sharp poke. He screeches at you and slaps your hand away."

Understand the command "tickle" as "touch".
Instead of touching Sam: say "You reach across the table and tickle Sam. He squeals and flails at you."
Instead of touching the player: say "You try to tickle yourself. You fail."

Instead of hugging the player, say "You give yourself a hug. You feel better.".
Instead of hugging Sam, say "You try to hug Sam, but he pulls away.".

Instead of kissing Sam, say "You smooch Sam on the cheek. He glares at you and wipes at his cheek.".
Instead of kissing the player, say "You kiss the back of your hand. Sam gives you a confused look.".

Instead of attacking Sam, try throwing the brownie at Sam.
Instead of attacking the player, try throwing the player at Sam.

Volume - Milk

The milk carton is a fixed in place thing on the table.
The description is "[one of]The carton reads 'Cowtown Dairy.' There's a drawing on the front of a cow grazing happily on some seaweed.[or]On the back is a photo of a sad-looking cat and the words 'Have you seen my C? Reward!!!'[cycling]".

A picture is scenery and a kind of thing.

The cow is a picture and part of the milk carton.
The description is "[fixed letter spacing]         (__)[LINE BREAK]         (oo)[LINE BREAK]   /------\/[LINE BREAK]  / |    ||[LINE BREAK] *  /\---/\[LINE BREAK]    ~~   ~~[LINE BREAK][variable letter spacing]".

The cat is a picture and part of the milk carton. The description is "[one of]It looks very sad.[or]Why would you want to see a picture of a sad cat?[or]=^..^=[cycling]"

The letter c is a picture and part of the milk carton. The description is "It's missing.".

Instead of looking under the milk carton:
	say "You pick up the milk and peek at the expiration date on the bottom. March 24. That's fine. 1992. Oh. You quickly put the milk back down.".

Understand the command "read" as something new.
Reading is an action applying to one thing.
Understand "read [something]" as reading.

Report reading: say "There is nothing there to read."

Instead of reading the milk carton:
	say "You glance at the nutritional facts. You're not really sure what all those numbers mean.".

Understand the command "spill" as something new.
Understand the command "push" as something new.
Understand the command "spill" and "push" and "push over" and "knock over" and "knock" as "drop".

Understand the command "pull" as something new.
Understand the command "pull" as "take".

Instead of dropping the milk carton:
say "You knock over the milk. Sam bursts into tears.";
try failing.

Before taking the milk carton:
       say "You pour the last of the milk into your glass. Sam looks like he's about to cry.";
	try failing.

A fluid is a kind of thing. The milk carton is a fluid.

Pouring it onto is an action applying to two things.

Understand "pour [fluid] in/on/into/onto [something]" as pouring it onto.
Understand "dump [fluid] in/on/into/onto [something]" as pouring it onto.

Check pouring something onto something:
    if the noun is not a fluid, say "You can't pour [the noun]." instead;
        if the noun is the second noun, say "You can hardly pour [the noun] onto itself." instead;

Carry out pouring it onto:
say "You pour [noun] onto [second noun]."

Rule for supplying a missing noun when pouring: now the noun is the milk carton.

Does the player mean pouring something onto the cup: it is very likely.

Rule for supplying a missing noun when drinking: now the noun is the milk carton.

Instead of drinking the milk carton: try taking the milk carton.

Instead of pouring the milk carton onto something:
	if the second noun is the glass:
		try taking the milk carton;
	otherwise if the second noun is the cup:                
		try giving the milk carton to sam;        
	otherwise:               
		say "You pick up the carton of milk and dump it all over [the second noun]. Sam shrieks angrily.";                
		try failing.

Instead of asking Sam for the milk carton:
	say "Sam just glares at you. He picks up his cup and bangs it on the table.".

Instead of asking Sam for the cup:
try asking Sam for the milk carton.
        
Volume - Brownies

The plate of brownies is a supporter on the table.
Rule for printing the name of plate of brownies:
say "plate of brownies";
omit contents in listing.
Instead of examining the plate of brownies: try examining the brownie.

The brownie is a fixed in place thing on the plate of brownies. The description is "Your mother makes the best brownies ever. These are chocolate fudge with chocolate chips and chocolate icing."

Instead of taking the plate of brownies:
say "You take the entire plate of brownies. Sam screams and jumps onto the table, knocking over the carton of milk. It spills all over the floor.";
try failing.

Instead of taking the brownie:
	say "You reach across the table to grab a brownie. Whoops. You bump the carton of milk and it spills all over the table.";
	try failing.
	
Volume - Glasses

A cup-item is a kind of thing.

A glass is a fixed in place cup-item on the table. The indefinite article is "your". The description is "It used to be a jelly jar. There's a wrap-around scene of a panda with an easel and a parade of penguins." Understand "my glass" or "my cup" as the glass.

A cup is a fixed in place cup-item on the table. The indefinite article is "Sam's". The description is "Sam's plastic cup has a robot on the front. It's empty." Understand "his cup" or "Sam's cup" as the cup.

Instead of taking the glass, say "You pick up your empty glass, peer into it, and immediately put it back down.".
Instead of taking the cup, say "Sam grabs his cup protectively.".

Volume - End Game

Winning is an action applying to nothing.

Failing is an action applying to nothing.

When play ends when the story has not ended finally:
	resume the story;
	say "[paragraph break]Please press any key, please.[paragraph break]";
	wait for any key;
	clear the screen;
	change turn count to 1;
	try looking.

Carry out failing:    
	say "[LINE BREAK][BOLD TYPE]*** You did not pass the milk. ***[ROMAN TYPE]";
	end the story.
	
Carry out winning:
        end the story finally saying "You passed the milk.".
	
Rule for amusing a victorious player:
	say "[LINE BREAK]Have you tried...	[LINE BREAK]- looking more closely at the milk carton?[LINE BREAK]--- looking at it twice?[LINE BREAK]--- reading it?[LINE BREAK]--- looking under it?[LINE BREAK]--- looking at the pictures?[LINE BREAK]- examining your surroundings?[LINE BREAK]- interacting with Sam?[LINE BREAK]- vocalizing?[LINE BREAK]- throwing, eating and counting various things?[LINE BREAK]- running with scissors?[LINE BREAK]- finding all sixteen endings?"

Rule for displaying endings:
	say "[LINE BREAK]- Passing the milk[LINE BREAK]- Not passing the milk[LINE BREAK]- Leaving the room[LINE BREAK]- Counting nothing[LINE BREAK]- Taking a brownie[LINE BREAK]- Taking all the brownies[LINE BREAK]- Pouring the milk on something[LINE BREAK]- Spilling the milk[LINE BREAK]- Taking the table[LINE BREAK]- Taking the tablecloth[LINE BREAK]- Wearing the tablecloth[LINE BREAK]- Throwing the milk at Sam[LINE BREAK]- Throwing the plate at Sam[LINE BREAK]- Throwing the glass at Sam[LINE BREAK]- Throwing away the brownies[LINE BREAK]- Throwing away the milk[LINE BREAK]".
	
	