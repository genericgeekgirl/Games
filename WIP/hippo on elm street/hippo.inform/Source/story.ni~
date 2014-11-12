"A Hippo on Elm Street" by "Adri".

The story creation year is 2014.
The release number is 1.
The story headline is "a not-so-scary story".
The story genre is "fantasy".
The story description is "'[story title]' was started for Ectocomp 2014, but failed to write itself in under three hours."

Part - Basic Setup
 
[Release along with cover art, an interpreter and a "Genericgeekgirl" website.]

Chapter - Extensions

Include Conversation Framework for Sand-dancer by Aaron Reed.
Include Case Management by Emily Short.
Include Punctuation Removal by Emily Short.
Include Reversed Persuasion Correction by Juhana Leinonen.
Include Smarter Parser by Aaron Reed.
Include Basic Help Menu by Emily Short.
Include Poor Man's Mistype by Aaron Reed.

Chapter - Help Menu

After printing the banner text:
say "[line break][as the parser]If you are unfamiliar with Interactive Fiction, type HELP for a quick introduction on how to play. [as normal][line break]"

Understand "menu" as asking for help.
Understand "credits" as asking for help.

When play begins:
choose row 1 in the Table of Basic Help Options;
change title entry to "About '[story title]'";
change description entry to "[story description] [author][line break][credits].";
choose row 2 in the Table of Basic Help Options;
change title entry to "How to Play".

To say author: say "The author can be contacted at <genericgeekgirl@gmail.com>."
To say credits: say "The house hippo was created by the Concerned Children's Advertisers, and appears here without permission."

Chapter - Parsing Commands

When play begins: now corrections enabled is false.

After reading a command: remove stray punctuation.

To say as the parser: say bold type.
To say as normal: say roman type.

Understand "* [text]" as a mistake ("Noted.").

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.

To decide what action-name is the action-to-be: (- action_to_be -).
Rule for printing a parser error when the latest parser error is the can't use multiple objects error:
	if the action-to-be is the examining action:    
		say "There is just so much to look at, you can't take it all in at once!" instead;
	otherwise:    
		say "One at a time! You are only a tiny hippo."

Chapter - Other Setup

Use American dialect, full-length room descriptions, and the serial comma.
Use no scoring.

When play begins: [TODO]
say "The humans of the household seem to be holding some sort of party. You're not quite sure what's going on, but you're determined to find out."

Part - Environment

Instead of going nowhere: say "Most of the activity is happening right here in the living room." [TODO]

Instead of examining a direction (called the direction looked):
	let the destination be the room-or-door the direction looked from the location;
	if the destination is a room:
		say "[destination] lies in that direction.";
	otherwise if the destination is a door:
		say "The [other side of the destination] lies in that direction.";
	otherwise:
		say "You don't see anything in that direction."


Chapter - Front Door and Porch

The Front Door is a closed, locked door. It is northwest of the Floor and south of the Porch.

The Porch is a room.

Chapter - Living Room

The Living Room is a region.

[ToDO]
[House is scary. Flashing lights, smoke machine. Lots of nameless, faceless people who are screaming and wearing scary costumes.]
[Fake spiderwebs with a giant spider. They can be climbed to reach something. What?]
[Maybe once you get the first piece of candy you decide that you have a new goal. Maybe you can climb the web and float through the air with the napkin to reach something else.]
[need to use napkin first though, because it becomes gross. Need another way to get up, maybe.]

Chapter - On the Floor

The Floor is a room in the Living Room.
The printed name is "Living Room".

[Instead of examining up when location is the Floor: say "The table is up there. You can't reach it from here."]

Chapter - Window Ledge

The Window Ledge is a room in the Living Room. The printed name is "On the Window Ledge."

The picture window is scenery in the Window Ledge.

Instead of opening the picture window: say "You couldn't possibly manage that on your own. Besides, it's very, very cold outside."

Understand "look out of [something]" and "look out [something]" as searching.
Instead of searching the picture window: say "[description of the porch]".

The spider web is scenery and an open, unopenable door. It is above the Floor and below the Window Ledge.
Instead of climbing the spider web, try entering the spider web.

Chapter - Under the Sofa
[Or some other beginning sort of place]

Chapter - Under the Table

Instead of looking under the shiny black fabric: move the player to Under-the-Table.

Under-the-Table is a room in the Living Room. The printed name is "Underneath the Table". "You are hiding underneath the table."

[block finding rooms through random trying of directions]
instead of going north from the Floor: try going down.

Instead of exiting from Under-the-Table: try going southwest.

After deciding the scope of the player while the location of the player is Under-the-Table:
place shiny black fabric in scope;
place table in scope.

Instead of examining the table when the location is Under-the-Table:
say "You gaze up at the bottom of the table, but it doesn't seem very interesting."

Chapter - Tablecloth and Table

The table is a backdrop in the Living Room. The initial appearance is "[if the location is the Floor]There is a table here, the top of which is somewhere high above your head. A length of black shiny fabric covers the table, reaching nearly to the floor. There is just enough clearance for a hippo of your size.[end if]". The description is "[if the location is the Floor]You can only imagine what wonders the table holds. All you can see from here is a curtain of black fabric[otherwise]The table is covered with treats of all sorts[end if]."

The shiny black fabric is an open unopenable door. It is northeast of the Floor and southwest of Under-the-Table. The description is "The [shiny black fabric] is made from some sort of shiny black material." Understand "tablecloth" as shiny black fabric. The printed name is "tablecloth".

Instead of climbing the table: try climbing the shiny black fabric.
Instead of climbing the shiny black fabric: say "The fabric is much too slippery for that."

Instead of taking the shiny black fabric:
say "You tug on the [shiny black fabric] with your teeth, but whatever is on the table is so heavy that it doesn't budge."

Instead of entering the table: try entering the shiny black fabric.

Instead of looking under the table: try looking under the shiny black fabric.

Chapter - Napkin

The napkin is a wearable thing in the Window Ledge. The initial appearance is "There is a crumpled paper napkin here." A thing can be soiled. The napkin is not soiled. The description is "[if the napkin is not soiled]Despite being crumpled up, it looks and smells clean[otherwise if the napkin is worn by the player]It has been fashioned into a house hippo-sized cape[otherwise]It is a disgusting used napkin[end if]."

Report wearing the napkin: say "You drape the napkin over your back like a tiny cape. Super Hippo!"
Report taking the napkin: say "You pick up the napkin in your mouth."

Chapter - Candy

The candy is an edible thing. The printed name is "partially-eaten lollipop." The description is "It's sticky, but looks awfully tasty. It's blue, which is your favorite color."

Instead of taking the candy: say "It seems to be stuck to the floor."

Instead of eating or tasting the candy:
say "Crunch crunch crunch.";
end the story finally saying "You have achieved candy nirvana."
          
Part - Player

The description of the player is "You are a very fine specimen of [italic type][if the napkin is worn by the player]Hippopotamus  heroica[otherwise]Felis terribulus[end if][roman type]."

Instead of tasting the player: say "Nope, you're still not able to lick your own ear."

Licking ear is an action applying to nothing.
Understand "lick ear" as licking ear.
Carry out licking ear: say "Almost. But not quite."

Chapter - Carrying Capacity

The carrying capacity of the player is 1.

Understand "take all" and "take everything" as a mistake ("You can only carry one thing at a time.")

Part - NPCs

Chapter - Child

The dragon is a woman. The initial appearance is "There is [a dragon] sitting under the table!" The description is "You've never seen [a dragon] this small before! Well, technically, you've never seen [a dragon] before. But you've heard stories and always envisoned them as being quite large. It's larger than [italic type]you[as normal], of course. But still. This one is about the size of a small human with orange wings and a long blue tail."

Instead of saying hello to the dragon: say "You murmur quietly at [the dragon]."

Instead of tasting the dragon: say "You give [the dragon] a tiny lick. It giggles."

[Child isn't crying. It's just hiding while it eats some candy. It is super sticky. Maybe it leaves you sticky and able to do something or other. You don't actually need to get rid of it? While sticky, roll around in feathers which DO grant you the ability to fly?]

[TODO]
Instead of showing or giving the napkin to the dragon:
say "You offer the napkin to the dragon. The dragon accepts the napkin, dabs its eyes, blows its nose and gives you a grateful smile. Then it crawls out from under the table, leaving behind the soiled napkin and the sticky remains of a lollipop.";
move the napkin to the location;
move the candy to the location;
now the napkin is soiled.

Chapter - Cat

The spider cat is an animal in the Floor. The description is "It smells curiously like the cat who owns the house, but it appears to be some sort of fluffy orange and black spider. It hisses at you. It [italic type]sounds[as normal] like the cat, too. As it starts to approach you, a black cat walking on two legs picks it up, clutching the spider to its chest. The spider cat yowls angrily as the larger cat carries it away. You almost feel sorry for it. Almost."

After examining the spider cat for the first time: remove the cat from play.

Instead of doing anything except examining to the cat: say "The strange-looking spider hisses at you. You decide to keep your distance."

Instead of saying hello to the spider cat: say "If it can understand you, it does not deign to respond."

Part - Assorted Actions

Chapter - Flying

Flying is an action applying to nothing.
Understand "fly" as flying.
Report flying: say "House hippos, like house pigs, cannot fly."

Instead of flying when the napkin is worn by the player:
say "You look quite dashing in your cape, but it has not, unfortunately, given you the ability to fly."

Chapter - Other

Dancing is an action applying to nothing.
Understand "dance" as dancing.
Carry out dancing: say "You do the Mash. You do the Monster Mash. It's a graveyard smash."

Mashing is an action applying to nothing.
Understand "do the mash" and "do the monster mash" as mashing.
Carry out mashing: say "It caught on in a flash!"

Instead of sleeping: say "You couldn't possibly fall asleep with so much excitement going on."

Instead of wearing something worn by the player: say "You are already wearing that."

Instead of listening: say "You hear [one of]gleeful laughter[of]a loud shriek[or]a creaking door[or]a moaning ghost[or]a slamming door[or]a low growl[or]a howling wolf[at random]."

Instead of eating something that is not edible: try tasting the noun.

Chapter - Magic Words

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Carry out casting xyzzy: say "A hollow voice says 'BOO!'".

Casting plugh is an action applying to nothing.
Understand "plugh" or "say plugh" as casting plugh.
Understand "plover" or "say plover" as casting plugh.
Carry out casting plugh: say "Gesundheit!"
	
Chapter - Interacting with Inanimate Objects

Instead of pushing or pulling or turning scenery: say "You try with all your might, but it barely moves."

Instead of taking scenery: say "There's no way you could lift that."

Understand "gnaw [something]" and "nibble [something]" and "nom [something]" and "chew [something]" as eating.

Understand "lick [something]" as tasting.
Instead of tasting: say "You give [the noun] a lick. [If noun is edible]Mmm.[else]Bleh! That doesn't appear to be food."

Section - Interacting with Animate Objects

Understand "pet [something]" as touching.

Instead of attacking a person: try growling.

Instead of attacking: say "There's no need to be so destructive!"

Copulating is an action applying to one thing.
Understand the command "screw" as something new.
Understand "screw [something]" or "fuck [something]" as copulating.
Report copulating: say "This isn't that sort of game.".

Part - Vocalizations

Chapter - General

Laughing is an action applying to nothing.
Understand "laugh" as laughing.
Carry out laughing: say "You giggle quietly to yourself, 'Hih hih hih.'"
        
Instead of singing: say "You bellow, 'This is Halloween, everybody scream.'"
	
Instead of swearing mildly: try swearing obscenely.
Instead of swearing obscenely: say "House hippos do not use such language."

Understand the command "shout" as something new.
Shouting is an action applying to nothing.
Understand "shout" and "scream" and "bellow" and "roar" as shouting.
Carry out shouting: say "You roar loudly."
	
Growling is an action applying to nothing.
Understand "growl" as growling.
Carry out growling: say "You growl menacingly at nothing in particular. You feel a little silly."

Hissing is an action applying to nothing.
Understand "hiss" and "hiss back" as hissing.
Carry out hissing: say "You are a house hippo. House hippos do not hiss."

Meowing is an action applying to nothing.
Understand "meow" and "mew" as meowing.
Carry out meowing: say "MEOW MEOW."

Razzing is an action applying to nothing.
Understand "stick out tongue" and "stick tongue out" as razzing.
Carry out razzing: say "You stick your tongue out at [the random visible thing]. The insult goes unnoticed."
	
Mumbling is an action applying to nothing.
Understand "hippo" and "mumble" and "murmur" as mumbling.
Carry out mumbling: say "Hippo. Hippo. Hippo."

Chapter - Conversation

Instead of saying hello to yourself: say "You mumble incoherently to yourself. It sounds suspiciously like 'hippo hippo hippo.'"

Does the player mean saying hello to the player: it is likely.

Before saying hello to someone when the greeting type is explicit: try quizzing the noun about the noun instead.

Before saying goodbye to someone when the greeting type is explicit: try quizzing the noun about the noun instead.

After saying hello to something that is not a person (this is the new can't greet inanimate objects rule):
say "[The noun] do[if the noun is not plural-named and the noun is not the player]es[end if] not respond. Because [if the noun is not plural-named]it is [a noun][otherwise]they are [noun][end if]."
