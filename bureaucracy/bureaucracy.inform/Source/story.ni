"Bureaucrocy" by "Adri".

The story creation year is 2014.
The release number is 3.
The story headline is "A frustrating tale about paperwork".
The story genre is "slice of life".
The story description is "[story title] is based on a scene from [italic type]Glitch[roman type]"

[Release along with Cover Art, a "Quixe" interpreter and a "OneColumn" website]

Volume - Basic Setup

Book - Extensions

Include Punctuation Removal by Emily Short.
Include Case Management by Emily Short.
Include Plurality by Emily Short.
Include Commonly Unimplemented by Aaron Reed.
Include Questions by Michael Callaghan.

Book - Other Setup

Use American dialect, full-length room descriptions, serial comma and undo prevention.
Use no scoring.

When play begins:
	choose row with a final response rule of immediately undo rule in the Table of Final Question Options;
	delete the final question wording entry.

Book - Smarter Parser

The blank line replacement is "wait".

when play begins:
now corrections enabled is false;
now novice mode enabled is true;

Book - Parsing Commands

Requesting the about text is an action out of world.
Understand "about" or "credits" as requesting the about text.

Carry out requesting the about text: say "The author can be contacted at genericgeekgirl@gmail.com. Thank you to my beta-testers: Andrew Plotkin, Beth Skwarecki, and @dazyndara. And, of course, to Tiny Speck, for allowing me to make this game! The scene was taken directly from their game [italic type]Glitch[roman type], a wonderful MMO that shut down in 2012."

Casting xyzzy is an action out of world.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Understand "plugh" or "say plugh" as casting xyzzy.
Understand "plover" or "say plover" as casting xyzzy.

Carry out casting xyzzy: say "This game is too boring to contain magic."

Understand "* [text]" as a mistake ("Noted.").

Understand the command "q" as something new.
Understand the command "quit" as something new.
Fast quitting is an action out of world.
Understand "q" and "quit" as fast quitting.

Carry out fast quitting:
say "Wait! You were just about to win the game!";
follow the immediately quit rule.

After reading a command:
remove stray punctuation.

Instead of jumping: say "You jump in the air. Woo-hoo!!!!".

Volume - Environment

Gregarious Grange is a room. "The entrance to the subway is down a flight of stairs. You can also go inside Bureaucratic Hall."

Bureaucratic Hall is a room. "A sign proclaims this room to be the 'Department of Administrative Affairs - Ministry of Departments'. To the left is a waiting area with a water cooler and a bunch of hard, plastic orange chairs. To the right is a counter, behind which is a Bureaucroc. Another sign reads 'Please approach the counter for assistance.'"

A sign is scenery in Bureaucratic Hall. The description is "This sign reads 'Please approach the counter for assistance.'"

The BHDoor is an open unopenable door and scenery. It is inside from Gregarious Grange and outside from Bureaucratic Hall. The printed name is "Bureaucratic Hall".

Understand "Bureaucratic Hall" and "Hall" and "Bureaucratic" as BHDoor when the location is Gregarious Grange.

Instead of examining the BHDoor when the location is Gregarious Grange: 
say "It's a small squat building where the Bureaucrocs work."

Instead of examining the BHDoor when the location is Bureaucratic Hall: try looking.

Subway Station is a room. "This is the subway station below Gregarious Grange, Groddle Meadow. A flight of stairs leads up to the street."

The SSDoor is an open unopenable door and scenery. It is up from Subway Station and down from Gregarious Grange. The printed name is "Subway Station".

Understand "Subway Station" and "Station" and "Subway" as SSDoor when the location is Gregarious Grange.

Instead of examining the SSDoor when the location is Gregarious Grange:
say "It's the entrance to the Gregarious Grange Subway Station."

Instead of examining the SSDoor when the location is Subway Station:
try looking.

Book - Chair

A chair is an enterable supporter and scenery in Bureaucratic Hall. Understand "chairs" as chair.
The description is "This is the perfect chair for those who like the idea of sitting briefly and with utmost caution."

After entering the chair:
say "You take a seat on one of their uncomfortable plastic chairs."

Does the player mean entering the chair: it is very likely.

Instead of going up when the player is on a supporter: try exiting.

Understand the command "stand" as something new.
Standing is an action applying to nothing.
Understand "stand" and "stand up" as standing.
Understand the command "sit down" as "sit".

Instead of standing when the player is on a supporter: try exiting.
Instead of standing when the player is not on a supporter: say "You are already standing."

Book - Counter

The counter is scenery in the Bureaucratic Hall. The description is "It's a standard counter. You don't see anything special about it[if the player does not carry the pen]. There is a pen here, secured to the counter with a length of ball chain[otherwise], except, you know, for that length of ball chain to which a pen used to be attached[end if]." Understand "chain" as counter.

Book - Pen

The pen is scenery in the Bureaucratic Hall. The description is "This generic pen will let you write messages and notes."

Instead of dropping the pen:
say "You drop the pen and it immediately rolls away.";
move the pen to the Bureaucratic Hall.

Instead of taking the pen:
say "You cast a nervous look around you before yanking the pen hard enough to snap the chain. [A Bureaucroc] looks up at the sound, and you panic. You find yourself outside [Bureaucratic Hall].";
try going outside;
now the player carries the pen.

Writing is an action applying to nothing.
Understand "write" as writing.

Check writing:
	if the pen is not carried by the player:
		say "You don't have anything to write with!" instead.

Carry out writing:
say "You fiddle with the pen, and it leaks ink all over you."

Writing on is an action applying to one thing.
Understand "write on [something]" as writing on.
Carry out writing on: try writing.

Making papers is an action applying to nothing.
Understand "write papers" as making papers.
Carry out making papers: try writing.

Book - Water

A cooler is a container and scenery in Bureaucratic Hall. The printed name is "water cooler". Understand "water cooler" as cooler.

Instead of examining the cooler:
say "Water dispensing devices do not get more generic than this. It is as plain as could be. Were it possible for water to be beige,
beige this water would be."

Rule for printing room description details of the cooler: omit contents in listing.

Understand the command "dispense" as "take".

Before taking the cup of water:
	if the player carries the cup of water:
		say "You really don't need another cup of water." instead.

Instead of taking the cup of water:
say "A tiny conical cup of water cooler water is duly dispensed.";
now the player carries the cup of water.

Understand the command "spill" as "drop".

Instead of pushing or pulling or taking the cooler:
say "The water cooler appears to be cemented into place. You get the impression you're not the first person to try this."

Before dropping the cup of water:
	if the player does not carry the cup of water:
		try taking the cup of water.

Instead of dropping the cup of water:
	if the location is Bureaucratic Hall:
		say "You spill the cup of water, splashing water all over the rug. It is soaked up immediately.";
	otherwise:
		say "You spill the cup of water. It seeps into the ground.";        	
	move the cup of water to the cooler.

Does the player mean drinking the cup of water: it is likely.

A cup of water is a thing inside the cooler. The plural of cup of water is cups of water.
The description is "This water is so plain, it has no Brownian motion, but Beigien motion instead. Drink at own risk."

Before drinking a cup of water:
	if the player does not carry the cup of water:
		try taking the cup of water.

The trash can is scenery in the Bureaucratic Hall. The description is "It's just a trash can. It's not important."

Instead of doing anything except examining to the trash can: try examining the trash can.

Instead of drinking the cup of water:
say "You imbibe the plain water from the generic cone-cup. Ewww. That water tastes really... bureaucratic-y. You file the cup in the trash can.";
move the cup of water to the cooler.

Book - Subway Ticket Dispenser

A dispenser is a thing in Subway Station. It is fixed in place. The printed name is "ticket dispenser". Understand "ticket dispenser" as dispenser.
The description is "This machine dispenses subway tickets in exchange for 50 currants. Press the button to buy a ticket."

The button is part of the dispenser. The description is "It's a bright red button. Push it. Push the button."

A subway ticket is scenery in the Subway Station. The description is "You can't see any such thing. Because you haven't purchased a ticket yet."

Instead of taking a subway ticket:
try buying a subway ticket.

Instead of pushing the button:
try buying a subway ticket.

The subway is scenery in the Subway Station.

Understand "ride [subway]" as buying.

Instead of buying a subway ticket:
	if the qualification is not carried by the player:
		say "The [dispenser] says, 'Without [Papers], you may not use public transportation. You can get your [Papers] at [Bureaucratic Hall].'" instead;
	if the player carries the qualification and the qualification is not activated:
		say "The [dispenser] says, 'You have acquired your [Qualification], but you need to activate it. After that, return to [Bureaucratic Hall] and purchase and complete your [Papers].'" instead;
	if the qualification is activated and papers are not carried by the player:
		say "The [dispenser] says, 'You can get your [Papers] at [Bureaucratic Hall].'" instead;
	if the player carries papers and papers are not complete:
		say "The [dispenser] says, 'You have acquired and activated your [Qualification], and you have your [Papers] but you need to complete them.'" instead;
	otherwise:
		say "The [dispenser] says, 'Train tickets cost 50C. Which line would you like to ride?'";
		end the story finally saying "You won the game!"

The turnstile is scenery in the subway station. Understand "gate" as turnstile. The description is "There is a gate here blocking your way. It will open once you buy a ticket."
Jumping over is an action applying to one thing.
Understand "jump over [turnstile]" and "break through [turnstile]" and "jump [turnstile]" as jumping over.

Instead of attacking the turnstile:
try jumping over the turnstile.

Carry out jumping over:
say "You attempt to jump over the gate. You not only trip and fall on your face, but the de-imaginators show up and cart you off to Abbasid Jail.";
end the story saying "You are here because you were bad. Knock it off."

Volume - Paperwork

Book - Card-Carrying Qualification

Qualification is a thing. The printed name is "Card-Carrying Qualification". Understand "Card-Carrying Qualification" as qualification. The description is "This is the most basic, entry-level, bureaucratic item of all. Being qualified to carry cards is a prerequisite to becoming the sort of person who can have [Papers] at all, let alone [Papers] which are in order."The indefinite article is "a".

Item is a thing that varies. Item is Qualification.
Cost is a number that varies. Cost is 50.

Qualification can be activated or not activated. Qualification is not activated.

Obtaining qualification is an action applying to nothing.
Understand "obtain qualification" as obtaining qualification.

Carry out obtaining qualification: say "You will need to go to [Bureaucratic Hall] to do that."

Check obtaining qualification:
	if the qualification is activated:
		say "You have already qualified yourself to carry cards." instead;
	otherwise if the player carries qualification:
		say "You already have the qualification. Now you need to activate it." instead.

Activating qualification is an action applying to one thing.
Understand "Activate [Qualification]" as activating qualification.

Carry out activating qualification:
say "Congratulations! You have taken the first step toward Bureaucratic officialdom. As with all first steps, there is a second, a third... Once you learn Bureaucratic Arts, then get and complete your [Papers], you'll be able to use public transportation.";
now the qualification is activated.

Check activating qualification:
	if the qualification is activated:
		say "You have already qualified yourself to carry cards." instead.

To say qualification-reminder: say "Don't forget to activate this [Qualification] if you want to prove that you can carry cards."

Book - Your Papers

Papers is a plural-named thing. The description is "Here is a full yet incomplete set of all the papers a person might require in order that they may prove, justify or otherwise provide evidence that their papers are in order." The indefinite article is "your".

Papers can be complete or not complete. Papers are not complete.

Completing papers is an action applying to one thing.
Understand "complete [papers]" as completing papers.

Check completing papers (this is the must qualify to complete rule):
	if the qualification is not activated:
		say "You need the [Qualification] to use this." instead;

Check completing papers (this is the need a pen rule):
	if the pen is not carried by the player:
		say "You will need a pen in order to fill out your [Papers]." instead.


Getting papers is an action applying to nothing.
Understand "get papers" as getting papers.

Carry out getting papers: say "You will need to go to [Bureaucratic Hall] to do that."

Check getting papers:
	if the papers are complete:
		say "You have already completed your [Papers]." instead;
	otherwise if the player carries the papers:
		say "You already have your papers. Now you need to complete them." instead.
		
Check completing papers (this is the already completed rule):
	If papers are complete:
		say "You have already completed your [Papers]." instead.

Carry out completing papers:
say "You cross your 'i's and dot your 't's. Or maybe it's the other way around. In any case, you manage to complete your [Papers] without too much trouble.";
now Papers are complete;
say "Well done. Now go ride a subway!".

To say papers-reminder: say "Don't forget to complete your [Papers] to finish your qualifications for riding public transit."

Book - Bureaucratic Arts

A skill is a kind of thing. A skill can be learned or not learned. A skill is usually not learned.

Bureaucratic Arts is a skill and part of the player.

Learning is an action applying to one thing.
Understand "learn [Bureaucratic Arts]" as learning.

Rule for supplying a missing noun when learning: now the noun is Bureaucratic Arts.

Check learning (this is the proper order to everything rule):
	if bureaucratic arts is learned:
		say "There is nothing more for you to learn right now." instead;
	if the qualification is not activated:
		say "You cannot learn the Bureaucratic Arts until you have obtained and activated the [Qualification]. You can obtain the [Qualification] at [Bureaucratic Hall]." instead.

Carry out learning:
say "Well done: you can now obtain papers with only the requisite amount of hassle and annoyance.";
now Bureaucratic Arts is learned;
Now item is Papers;
Now cost is 100.

Volume - Player

The player is in Subway Station.

The description of the player is "You are a Glitch named [player's name]. You were imagined into existence by the eleven Giants of Ur."

Currants is a number that varies. Currants is 200.

Currant is a thing carried by the player. The description is "Currants make up the local currency." Understand "currants" as currant. The printed name is "[currants] currants".

Instead of eating the currant: say "You try to bite into one of the currants. It's hard as a rock."

Instead of dropping the currant:
say "You drop a handful of currants. Then you immediately pick them back up."

Book - Name

The player's name is an indexed text that varies.

When play begins:
now the command prompt is "What is your name? >";
now the closed menu prompt is "1/2?>";
now the closed yes/no prompt is "Y/N? >".

To decide whether collecting names:
if the command prompt is "What is your name? >", yes;
no.

After reading a command when collecting names:
	now player's name is "Alexandra";
	if the player's command does not match "Alexandra" and the player's command does not match "Adri":
		say "[line break]I don't know how to pronounce that. Your name will be [player's name].[paragraph break]";
	now the command prompt is ">";
	say "[banner text]";
	move the player to the location;
	reject the player's command.

Instead of looking when collecting names: do nothing.
Rule for constructing the status line when collecting names: do nothing.

Volume - Bureaucroc

A bureaucroc is a person and scenery in the Bureaucratic Hall. The bureaucroc can be helping or not helping. Understand "croc" as bureaucroc.
The description is "While this [Bureaucroc] can't be described as faceless, given the presence of a face, the fact that you can't tell any of them apart renders its face basically unnecessary. Charged with the granting (or not) of permits, this is a world of red tape and frustration in an ill-fitting suit, basically."

Bribing is an action applying to one thing.
Understand "bribe [bureaucroc]" as bribing.

Carry out bribing: 
say "You attempt to bribe a government official. He seems tempted, but before you can seal the deal, the de-imaginators show up and cart you off to Abbasid Jail.";
end the story saying "You are here because you were bad. Knock it off."

Bureaucroc_name is an indexed text that varies.

to say btitle: say "[one of]Prefect[or]Chamberlain[or]Deputy[or]Secretary[or]Assistant[or]Associate[or]Representative[or]Magister[or]Manager[or]Director[or]Overseer[or]Administrator[or]Probost[at random]".

to say bname: say "[one of]Smithe[or]Wigglesbottom[or]Apfer[or]Naraiwaddleappali[or]Snifflenose[or]Sharpburger[or]Tummyford[or]Piksnixson[or]Nuter[or]Innifekki[or]Candnot[or]Chucklesmouth[or]Earwick[at random]".

Volume - Helper

Before going to the Subway Station for the first time:
		say "As you make your way back down to the Subway Station, a Bureaucroc corners you on the stairs. He whispers, 'Psssst. Here'sss the deal. Getting your Card Carrying Qualification is the first step in the Bureaucratic Artsss. Yesss, and once you have it, you are on your way to being able to obtain Your Papersss (and all sorts of licenses and permits). It used to be you could acquire the bureaucratic documentsss directly from a friend--Oh, it'sss perfectly legal, mind you--but seemsss like you're the only one around. You'll have to go the official route and deal with the red tape. Head over to the Bureaucratic Hall on Gregariousss Grange and talk to one of my friendsss there. You'll get what you need.' And then he disappears as quickly as he appeared.[paragraph break]That was weird.";
		now the bureaucroc is helping.

Volume - Scenes

Bureaucracy is a recurring scene.
Bureaucracy begins when the location is Bureaucratic Hall.
Bureaucracy ends when the location is not Bureaucratic Hall.

Book - Initial Approach

Free to Leave is a recurring scene.
Free to leave begins when Bureaucracy begins.
Free to leave ends when ready is 1.

Ready is a number that varies. Ready is 0.

When free to leave begins: now ready is 0.

Approaching is an action applying to one thing.
Understand "approach [counter]" and "approach [bureaucroc]" and "talk to [bureaucroc]" and "speak to [bureaucroc]" as approaching.

Understand the commands "ask" and "tell" and "say" and "answer" as something new.
Understand "ask [text]" or "tell [text]" or "answer [text]" or "say [text]" as a mistake ("[talk to instead]").
Instead of asking someone to try doing something: say "[talk to instead][paragraph break]".
Instead of answering someone that something: say "[talk to instead][paragraph break]".

To say talk to instead: say "To talk to someone, just... 'talk to' them."

Rule for supplying a missing noun when approaching: now the noun is the bureaucroc.

Check approaching (this is the learn the arts rule):
	if the bureaucroc is not helping and bureaucratic arts is not learned:
		say "[The Bureaucroc] says, 'Go away. We don't have time to waste on people who have not learned any Bureaucratic Arts.'" instead.

Check approaching (this is the nothing left to do rule):
	if the player carries papers:
		say "[The Bureaucroc] says, 'Hmmm. I see your lips moving, but I don't understand the words. Maybe come back another time?'" instead.

Carry out approaching:	
	now ready is 1;
	if Limbo is happening:
		if the player is on the chair, try silently standing;
		now step is 1;
		now bureaucroc_name is "[btitle] [bname]";
		say "[The Bureaucroc] says, '[one of][player's name], as I understand, you are requesting [the item]. You will have to speak to [bureaucroc_name] about that. Please wait a moment[or]I understand you're hoping to attain [the item], [player's name]. That's a matter for [bureaucroc_name]. Let me find out if they're in the office this week[or]So you're requesting [the item] are you, [player's name]? [bureaucroc_name] is the official you need to speak to. Please bear with me a moment[or][player's name], your request for [the item] will have to be passed along to the correct department. Please wait while I ascertain the availability of [bureaucroc_name][or][player's name]? If you are seeking [the item], you must speak to [bureaucroc_name]. Please wait while I see if they're taking appointments today[or]You wish to be granted [the item] I understand, [player's name]. That is a decision for [bureaucroc_name], if they're in today. Bear with me please[at random].' Then he turns and shuffles away.";
	otherwise:
		say "[A Bureaucroc] says, 'We will be with you as soon as possible. Now please sit down and wait.' He then proceeds to ignore you."

Book - Intermission

[This is stupid, but makes things easier.]

Intermission is a recurring scene.
Intermission begins when free to leave ends.
Intermission ends when please wait begins.

Book - Waiting

Wait-count is a number that varies. Wait-count is -1.

Please wait is a recurring scene.
Please wait begins when the player is on the chair and intermission is happening.
Please wait ends when wait-count is 0. 

When please wait begins:
now wait-count is 5.

to say no sit: say "You would rather not sit in one of those chairs unless you absolutely have to."

Check entering the chair:
if intermission is not happening, say "[no sit]" instead.

When please wait ends:
now wait-count is -1;
say "[A Bureaucroc] calls out, [one of]'[player's name]! Your turn!'[or]'[player's name]! You're up!'[or]'NEXT, [player's name]!'[or]'[player's name]! Come forward!'[or]'[player's name]! Step up.'[or]'Ready for you now, [player's name]!'[or]'Attention, [player's name]! When you're ready?'[or]'Who's Next? [player's name]? Is [player's name] here?'[or]'[player's name]! Ready for you now!'[at random]".

Instead of doing anything except waiting or looking or examining or taking inventory when please wait is happening:
say "You can't do anything while waiting. Just WAIT.";
now wait-count is 5.

Every turn when please wait is happening:
decrease wait-count by 1.

Book - Limbo

Limbo is a recurring scene.
Limbo begins when please wait ends.
Limbo ends when approaching.

Every turn when Limbo is happening and step is 0:
say "[The Bureaucroc] calls out again, [one of]'[player's name]! It is now your turn. Come speak to me, or you will lose your turn.'[or]'[player's name]! Either come to the counter, or go to the back of the line.'[or]'I haven't got all day, [player's name]! You can take your turn, or someone else can take theirs.'[or]'Did you want something, [player's name]? Now is your chance. Use it or lose it.'[or]'[player's name]! Come and speak to me now, if you please. Time is currants, [player's name]!'[or]'[player's name]! Do you want to be seen today or not, [player's name]? Come speak to me if you do.'[or]'Time's a wasting, [player's name]! Come speak to me or lose your place in line.'[or]'[player's name]! If you want your documentation, you need to come speak to me.'[or]'Did you hear me, [player's name]? Come take your turn, or lose your turn. Your choice.'[at random]".

Book - Conversation

Being helped is a recurring scene.
Being helped begins when Limbo ends.
Being helped ends when the bureaucroc is useless.

Step is a number that varies. Step is 0.
The bureaucroc can be useful or useless. The bureaucroc is useful.

Instead of doing anything other than waiting or examining or looking when step is 1:
say "Don't move. Just wait."

Instead of waiting or examining or looking when step is 1:
say "Another [Bureaucroc], presumably [bureaucroc_name], approaches the counter. '[one of]Let's see here. You are interested in obtaining [the item], correct[or]I understand you're here to procure yourself [the item], is that right[or]What's this, then? You're hoping to acquire [the item], correct[or]I'm led to believe you're interested in receiving [the item], is that correct[or]What do we have here, then? I see. So, it's [the item] you're after, is it[or]Right then, let's see... You're here hoping to procure [the item], are you[at random]?' He stares intently at you.";
ask a closed question, in yes/no mode.

Answer one and answer two are indexed texts that vary.

A yes/no question rule (this is the confirm item rule):
	if the decision understood is No:
		say "[The Bureaucroc] says, 'Very well' and walks away.";
		now the bureaucroc is useless;
		exit;
	otherwise:
		now step is 2;
		exit.

Every turn when step is 2:
	now step is 3;
	choose a random row in the table of random questions;
	say "[The Bureaucroc] says, '[one of]I can probably deal with your application[or]I don't see why not[or]I imagine we can help[or]I may be able to help with that[or]I may be able to help you with that[or]I might be able to sign this off[or]I should be able to help with that[or]I should be able to rubber stamp this[or]Sounds reasonable[or]That should be possible[at random]. [qn entry]'[line break]";
	now current question menu is options entry;
	blank out the whole row;
	ask a closed question, in menu mode.
                
A menu question rule (this is the random question rule):
	let response be a random number between 1 and 10;
	if response is less than 3:
		now bureaucroc_name is "[btitle] [bname]";
		say "[The Bureaucroc] says, '[one of]I see. Perhaps you'd better talk to [bureaucroc_name] about this[or]Interesting. Perhaps you'd better talk to [bureaucroc_name] about this[or]Ah. In that case, you'll need to speak with [bureaucroc_name], this is outside my remit now[or]I see. It seems you'd be better off speaking to [bureaucroc_name] about this after all[or]Right. In that case, I think you'd better go speak to [bureaucroc_name] on this matter[or]Interesting. I believe the department you're looking for is that of [bureaucroc_name]. Good day[at random].' [The Bureaucroc] walks away without another word.";
		now step is 1;
	otherwise: 
		say "[The Bureaucroc] nods and says, '[one of]Very well. The fee is [cost] currants. We only accept cash[or]Acceptable. The fee is [cost] currants. Cash up front, please[or]That will do. Your fee is [cost] currants. Cash only[or]Excellent. The bureau charges [cost] currants. Cash only, I'm afraid[or]Very well. In that case, the fee is [cost] currants, and we only take cash[or]I'll take that. The fee is [cost] currants, and I'll take that, as well. In cash[at random].'[paragraph break]You count out a pile of currants, and [the Bureaucroc] hands over [the item].[paragraph break]'Thank you for your business. To conduct another transaction, you must exit and re-enter the Hall.'";
		decrease currants by cost;
		now the player carries item;
		now the bureaucroc is not helping;
		now the bureaucroc is useless;
	exit.

Chapter - Random Questions

Table of Random Questions
Qn	Options
"Before that, though, your favorite color?"	{"Beige","Not Beige"}
"Before we proceed, I must ask, which shelf-height do you prefer?"	{"High shelves","Ankle-height shelves"}
"But first, favorite noise?"	{"Duck","Not a Duck"}
"But first, one question. What's my square root?"	{"67","I prefer not to say"}
"But first, please choose between the following:"	{"Pirates","Ninjas"}
"But first, quick question: which number is better?"	{"631","11"}
"But first, which cloud is better?"	{"Cirrus","Cumulonimbus"}
"First, however, answer me this. What time is love?"	{"2pm","Before lunch"}
"First, however, one question:"	{"Innie?","Outie?"}
"One final question, which is optimal?"	{"Cake","Death"}
"One final question. Do you consider honey a dairy product?"	{"Yes","No"}
"One question first. Which came first?"	{"The Chicken","The Grain"}
"One thing: Your favorite fruit?"	{"Apples","Tomatoes"}
"Quick question first, though. Is it ever too late?"	{"Yes","No"}

Book - All done

All done is a recurring scene.
All done begins when being helped ends.
All done ends when the location is not Bureaucratic Hall.

When all done begins:
now the bureaucroc is useful.

To say try-again: say "To conduct another transaction, you must exit and re-enter the Hall"

Instead of entering the chair during all done:
say "[try-again]."

Instead of approaching during all done:
say "[try-again]."
        
Volume - Testing

Test intro with "up/down/up/in/approach".
Test wait with "sit/z/z/z/z/approach/z/y/1".
Test qual with "out/activate/learn/in/approach".
Test paper with "take pen/complete/down/buy ticket".
