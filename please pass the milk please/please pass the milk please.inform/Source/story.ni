"Fingertips: Please Pass the Milk Please" by "Adri".

Chapter - Basic Setup

Include Fingertips by Adri.
Include Punctuation Removal by Emily Short.

[Release along with cover art and an interpreter.]

Carry out asking for credits: say "'Please Pass the Milk Please' was written for the Apollo 18+20 tribute album. Thanks so much to Kevin Jackson-Mead for organizing the compilation and inspiring me to finally write my first (and second!) game. Thank you to everyone in PR-IF and on ifMUD for just generally being encouraging and helpful. Thank you to everyone who provided feedback on the game, especially cyberskunk, Lorenzo Batallones, Felix Plesoianu and jpt. And last, but not least, thanks to They Might Be Giants for making awesome music.".

The story creation year is 2012.
The release number is 3.
The story headline is "An interactive snack".
The story genre is "slice of life".
The story description is "A short piece of interactive fiction inspired by They Might Be Giants' 'Apollo 18' album".

Chapter - Play Begins

When play begins:
say "[ITALIC TYPE]Please pass the milk, please.[LINE BREAK]Please pass the milk, please.[LINE BREAK]Please pass the milk, please.[ROMAN TYPE][LINE BREAK]"
 
Chapter - Environment

The Kitchen is a room.

Sam is a man. It is in the kitchen. It is proper-named. The initial appearance is "Your brother Sam is sitting across from you.". The description is "There are traces of chocolate on his cheeks. He seems to be waiting for something.".
Understand "brother" and "man" and "boy" as Sam.

The description of the player is "You're wearing the 'Science is Real' t-shirt you got at the They Might Be Giants concert last summer. It's one of your favorites.".

The chair is a supporter. It is enterable. It is scenery. It is in the kitchen. The description is "It's just a chair.".

The table is a supporter. It is scenery. It is in the kitchen. The indefinite article is "the". 
Instead of examining the table: try examining the tablecloth. Understand "table cloth" as the tablecloth.

The tablecloth is scenery. It is on the table. The description is "The blue and white checkered table cloth brightens up the room."

The shirt is a wearable thing. It is worn by the player.
Instead of examining the shirt: try examining the player.
Understand "t-shirt" or "tshirt" or "clothes" or "clothing" as shirt.

Chapter - Vocalizations

Instead of crying: say "Sam blinks at you in surprise.".

Instead of shouting: say "Sam cringes.".

Instead of swearing obscenely: say "Sam's eyes go wide.".
	
[TODO: not sure how to handle the syntax "hello, Sam"]

Instead of talking: say "Sam just shakes his head and frowns impatiently."

Chapter - General Commands

Instead of waiting: say "[one of]Sam picks up his cup and peers into it. He pouts and sets it back down.[or]Sam turns his cup over, giving it a little shake to remind you that it's empty.[or]Sam picks up his cup and bangs it on the table.[or]Sam reaches towards the milk, waving his arm wildly to make his point.[at random]"



Instead of taking the tablecloth:
	say "You pull the tablecloth off the table, spilling milk and brownies all over Sam. He's too shocked to say anything for a moment, and then he starts bawling.";
	try failing.

Before wearing something:
	If the noun is the shirt:
		say "You're already wearing that!" instead;
	If the noun is the tablecloth:
		try taking the tablecloth instead;
	otherwise:
		say "You can't wear that." instead.

Instead of undressing: try taking off the shirt.
Instead of dropping the shirt: try taking off the shirt.

Instead of taking off the shirt: say "You should probably keep your clothes on.".

Instead of dancing: say "You do a little dance in your seat. Sam giggles.".

Pointing is an action applying to one thing.
Understand "show [something]" or "point at [something]" as pointing.

Instead of pointing: try showing the noun to Sam.

Before showing something to Sam:
	If the noun is the milk or the noun is Sam's cup:
		say "You point at [the noun]. Sam gets really excited. He picks up his cup and bangs it on the table." instead;
	otherwise if the noun is Sam:
		say "You point at Sam. He seems confused." instead;
	otherwise if the noun is the player or the noun is your glass or the noun is the shirt:
		say "You point at [the noun]. Sam doesn't seem to care." instead;
	otherwise if the noun is a treat or the noun is the plate:
		say "You point at [the noun]. Sam points at the milk." instead;
	otherwise:
		say "Sam doesn't seem interested in that." instead.

Rule for supplying a missing noun: now the noun is the brownie.

Does the player mean taking the brownie: it is very likely.

Understand the command "run" as something new.
Running is an action applying to nothing.

Understand "run" as running.
Understand "run around/in house" as running.
Understand "run around/in the house" as running.

Understand the command "run away" as something new.
Understand "run away" as running.

Instead of running:
        say "You're not allowed to run in the house!".

Running with scissors is an action applying to nothing.
Understand "run with scissors" as running with scissors.
Instead of running with scissors:
        say "The last thing you need right now is a trip to the hospital. Also, you don't have any scissors.".

Instead of taking inventory:
say "Your pockets are empty.".

Not passing the milk is an action applying to one thing.
Understand "don't pass [milk]" or "dont pass [milk]" or "do not pass [milk]" as not passing the milk.

Report not passing the milk:
	try taking the milk.

Understand the command "pass" as something new.

Passing is an action applying to one thing.
Understand "please pass [something] please" or "pass [something] please" as passing.
Report passing: try giving the noun to Sam.

Understand "please pass [something] to [someone]" or "please pass [something] to [someone] please" or "pass [something] to [someone] please" or "pass [something] to [someone]" as giving it to.

Rule for supplying a missing second noun when giving something to someone:
	now the second noun is Sam.
	
Before giving something to Sam:
	if the noun is your glass:
		say "He already has a cup. He would probably break it anyway." instead;
	otherwise if the noun is the shirt:
		try dropping the shirt instead;
	otherwise if the noun is sam or the noun is the player:
		say "That's an odd thing to do." instead;
	otherwise if the noun is sam's cup:
		say "He already has that." instead;
	otherwise if the noun is the brownies or the noun is the brownie or the noun is the plate:
		say "He doesn't need another brownie. He needs a glass of milk." instead;
	otherwise if the noun is the milk:
		say "You pour the milk into Sam's cup. He picks up the cup and takes a big gulp. He grins at you.";
		try winning;
	otherwise:
		say "He doesn't need [the noun]." instead.

Instead of doing anything except examining to a picture:
	say "You can't see any such thing.".


Instead of standing: try exiting.

Instead of standing on something:
	If the noun is Sam:
		say "You try to stand on Sam. He pushes you away.";
	Otherwise if the noun is the player:
		say "No matter how you twist and turn, you can't seem to manage that."
                
Instead of exiting:
	say "You stand up and walk away. Sam throws his cup at you.";
	try failing.

Instead of sitting: try sitting on the chair.

Instead of sitting on the chair:
say "You are already sitting."

Instead of casting xyzzy:
say "A hollow voice says, 'Milk: it does a body good.'".



Instead of looking under:
	say "You don't find anything underneath [the noun].".

Counting nothing is an action applying to nothing.
Understand "count" as counting nothing.

Report counting nothing: 
	say "You forget all about the brownies and break into an impromptu game of hide-and-seek.";
	try failing.
		
Carry out counting something: 
	if the noun is the brownies:
		say "There are 69,105 brownies here.";
	otherwise if the noun is Sam:
		say "There's only one of him, thankfully.";
	otherwise if the noun is the player:
		say "You are a unique and special snowflake.";
	otherwise:
		say "There's just the one.".
		
Counting cups is an action applying to nothing.
Understand "count glasses" or "count cups" as counting cups.

Instead of counting cups:
say "There are two: your glass and Sam's cup.".

understand the command "eat" as something new.
understand "eat [things]" as eating.

report eating something:
say "You can't eat that!" instead.
        
Understand "gnaw [something]" or "gnaw on [something]"as eating.
Understand "chew [something]" or "chew on [something]"as eating.

Does the player mean doing anything with the shirt: it is very unlikely.

Does the player mean eating the brownie: it is very likely.

Before eating:
	If the noun is the brownies:
		try taking the brownies instead;
	otherwise if the noun is the brownie:
		try taking the brownie instead;
	otherwise if the noun is the shirt:
		try dropping the shirt instead;
	otherwise if the noun is the tablecloth:
		say "You pick up the end of the tablecloth and gnaw on it. Sam giggles." instead;
	otherwise if the noun is the table:
		say "You gnaw on the edge of the table. You must really be hungry." instead;
	otherwise if the noun is the player:
		say "You gnaw on your arm. Sam giggles." instead;
	otherwise if the noun is Sam:
		say "You bite Sam's shoulder playfully. He slaps you away." instead;
	otherwise if the noun is not a thing:
		say "You must name something more substantial." instead;
	otherwise if the noun is a picture:
		say "You can't see any such thing." instead;
	otherwise:
		say "You pick up [the noun] and gnaw on it. Sam giggles." instead.

Chapter - Throwing

Does the player mean doing anything with the brownie: it is likely.

Procedural rule while throwing something at something: ignore the carrying requirements rule.

Understand the command "throw" as something new.
Throwing is an action applying to one thing.
Understand "throw [something]" as throwing.
Understand "toss [something]" as throwing.
Understand "hurl [something]" as throwing.
Report throwing: say "It's not nice to throw things!"

Understand "throw [something] at [something]" as throwing it at.
Instead of throwing something at Sam: try throwing the noun.

Instead of throwing something at the table: try dropping the noun.

Instead of throwing something (called S):
	If S is Sam:
		try taking Sam;
	Otherwise if S is the player:
		say "You hurl yourself at the wall. Sam just stares at you as you limp quietly back to your seat.";
	Otherwise if S is the milk:
		say "You pick up the carton of milk and throw it at Sam. Milk flies everywhere. Sam is too startled to cry.";
		try failing;
	Otherwise if S is the brownies or S is the plate:
		say "You throw the plate of brownies at Sam. Brownies fly everywhere and the plate shatters against the wall. You'd better clean up that mess before someone gets hurt.";
		try failing;
	Otherwise if S is your glass:
		say "You throw your glass at Sam. He ducks and it shatters against the wall. You'd better clean up that mess before someone gets hurt.";
		try failing;
	Otherwise if S is Sam's cup:
		try taking Sam's cup;
	Otherwise if S is the tablecloth:
		try taking the tablecloth;
	Otherwise if S is the table:
		say "You lift up your side of the table, spilling milk and brownies all over Sam. He's too shocked to say anything for a moment, and then he starts bawling.";
		try failing;	
	Otherwise if the noun is the shirt:
		try dropping the shirt;
	Otherwise if S is the chair:
		say "Don't do that. Someone might get hurt.";	
	Otherwise: [brownie]
		say "You pick up [the S] and throw it at Sam. He catches it and tosses it back at you. It bounces off your shoulder.".

Instead of taking the table:
	try throwing the table.

Chapter - Interacting with People

Cleaning is an action applying to one thing.
Understand "clean [something]" as cleaning.

Report cleaning:
say "There is no need to clean that right now."

Instead of cleaning Sam:
	say "You try to clean Sam's face, but he pushes you away."

Instead of taking Sam:
	say "You try to pick up Sam. He squirms away.";

Instead of touching or hugging Sam:
	say "You try to hug Sam, but he pulls away.".

Instead of poking Sam:
	say "You give Sam a sharp poke. He screeches at you and slaps your hand away."

Instead of touching or hugging the player:
	say "You give yourself a hug. You feel better.".

Instead of kissing Sam:
	say "You smooch Sam on the cheek. He glares at you and wipes at his cheek.".

Instead of kissing the player:
	say "You kiss the back of your hand. Sam gives you a confused look.".

Instead of attacking Sam:
	try throwing the brownie.

Instead of singing:
	say "You hum a little tune. Sam actually smiles a little.".

Chapter - Milk

The milk is a thing. It is on the table. It is fixed in place.

The printed name of the milk is "carton of milk". Understand "carton of milk" and "carton" as the milk. The description of the milk is "[one of]The carton reads 'Cowtown Dairy.' There's a drawing on the front of a cow grazing happily on some seaweed.[or]On the back is a photo of a sad-looking cat and the words 'Have you seen my C? Reward!!!'[cycling]".

A picture is a kind of thing. It is scenery.

The cow is a picture. It is on the milk. The description of the cow is "[fixed letter spacing]         (__)[LINE BREAK]         (oo)[LINE BREAK]   /------\/[LINE BREAK]  / |    ||[LINE BREAK] *  /\---/\[LINE BREAK]    ~~   ~~[LINE BREAK][variable letter spacing]".

The cat is a picture. It is on the milk. The description of the cat is "[one of]It looks very sad.[or]Why would you want to see a picture of a sad cat?[or]=^..^=[cycling]"

The letter c is a picture. It is on the milk. Understand "c" as c. The description of the letter c is "It's missing.".

Instead of looking under the milk:
	say "You pick up the milk and peek at the expiration date on the bottom. March 24. That's fine. 1992. Oh. You quickly put the milk back down.".

Understand the command "read" as something new.
Reading is an action applying to one thing.
Understand "read [something]" as reading.
Report reading:
say "There is nothing there to read."

Instead of reading the milk:
	say "You glance at the nutritional facts. You're not really sure what all those numbers mean.".

Understand the command "spill" as something new.
Understand "spill [something]" as dropping.

Instead of dropping the milk:
say "You knock over the milk. Sam bursts into tears.";
       try failing.

Before taking the milk:
       say "You pour the last of the milk into your glass. Sam looks like he's about to cry.";
	try failing.

Pouring is an action applying to one thing.
Understand "pour" as pouring.
Report pouring: say "You can't pour that."

Understand "pour [something] on/in [something]" as putting it on.
        
Does the player mean drinking the milk: it is very likely.
Does the player mean pouring the milk: it is very likely.

Instead of inserting the milk into something:
	try putting the milk on the second noun instead.

Instead of drinking the milk:
	try pouring the milk.
	
Instead of pouring the milk:
	try putting the milk on your glass.

Instead of putting the milk on something:
	if the second noun is your glass:
		try taking the milk;
	otherwise if the second noun is sam's cup:                
		try giving the milk to sam;        
	otherwise if the second noun is the milk:
		say "That's an odd thing to do.";
	otherwise:               
		say "You pick up the carton of milk and dump it all over [the second noun]. Sam shrieks angrily.";                
		try failing.

Instead of asking Sam for the milk:
	say "Sam just glares at you. He picks up his cup and bangs it on the table.".

Instead of asking Sam for sam's cup:
	try asking Sam for the milk.

Chapter - Brownies

A treat is a kind of thing.

The plate is a supporter. It is on the table. The printed name is "plate of brownies". Understand "plate of brownies" as the plate. 
Rule for printing the name of the plate: say "plate of brownies"; omit contents in listing.
Instead of examining the plate: try examining the brownies.

The brownies is a treat. It is plural-named. It is on the plate. It is fixed in place. The description is "Your mother makes the best brownies ever. These are chocolate fudge with chocolate chips and chocolate icing.".

The brownie is a treat. It is on the plate. It is fixed in place. Instead of examining the brownie: try examining the brownies.

Instead of attacking the plate:
	try throwing the plate.

Instead of taking the plate:
	try taking brownies.
	
Instead of taking the brownies:
	say "Don't be greedy! Save some for your brother."; 

Instead of taking the brownie:
	say "You reach across the table to grab a brownie. Whoops. You bump the carton of milk and it spills all over the table.";
	try failing.
	
Chapter - Glasses

A cup is a kind of thing. The plural of cup is cups. Understand "cups" or "glasses" as cup.

Your glass is a cup. It is on the table. It is fixed in place. The description is "It used to be a jelly jar. There's a wrap-around scene of a panda with an easel and a parade of penguins.".
Understand "my glass" or "my cup" or "your cup" or "your glass" as your glass.

Sam's cup is a cup. It is on the table. It is fixed in place. The description is "Sam's plastic cup has a robot on the front. It's empty.".
Understand "his cup" or "Sam's glass" or "his glass" as Sam's cup.

Before listing contents of the table: group cups together.
Rule for grouping together cups: say "two cups".

[TODO: is this really the best way to make this work?]
After reading a command: 
	let N be indexed text; 
	let N be the player's command; 
	replace the regular expression "," in N with "";
	replace the regular expression "his glass" in N with "Sam's glass";         
	replace the regular expression "my cup" in N with "your cup";
	change the text of the player's command to N. 


Instead of taking your glass:
say "You pick up your empty glass, peer into it, and immediately put it back down.".

Instead of taking Sam's cup:
say "Sam grabs his cup protectively.".

Instead of attacking your glass:
try throwing your glass.

Instead of attacking Sam's cup:
try taking Sam's cup.

Chapter - End Game

Carry out failing:    
	say "[LINE BREAK][BOLD TYPE]*** You did not pass the milk. ***[ROMAN TYPE]";
	end the story.
	
Carry out winning:
        end the story finally saying "You passed the milk.".
	
Rule for amusing a victorious player:
	say "[LINE BREAK]Have you tried...	[LINE BREAK]- looking more closely at the milk carton?[LINE BREAK]--- looking at it twice?[LINE BREAK]--- reading it?[LINE BREAK]--- looking under it?[LINE BREAK]--- looking at the pictures?[LINE BREAK]- examining your surroundings?[LINE BREAK]- interacting with Sam?[LINE BREAK]- vocalizing?[LINE BREAK]- throwing, eating and counting various things?[LINE BREAK]- running with scissors?[LINE BREAK]- finding all twelve endings?"

Rule for displaying endings:
	say "[LINE BREAK]- Passing the milk[LINE BREAK]- Not passing the milk[LINE BREAK]- Leaving the room[LINE BREAK]- Counting nothing[LINE BREAK]- Taking a brownie[LINE BREAK]- Pouring the milk on something[LINE BREAK]- Spilling the milk[LINE BREAK]- Taking the tablecloth[LINE BREAK]- Taking the table[LINE BREAK]- Throwing the milk at Sam[LINE BREAK]- Throwing the plate at Sam[LINE BREAK]- Throwing the glass at Sam[LINE BREAK]".
	