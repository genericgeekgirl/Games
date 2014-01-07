Fingertips by Adri begins here.

"This extension facilitates in the creation of a Fingertips-style single move game."

Chapter - Basic Setup

Use no scoring.
Use American dialect, full-length room descriptions, and the serial comma.

Section - Extensions

Include Basic Screen Effects by Emily Short.
Include Status Line Removal by Emily Short.
Include Conditional Undo by Jesse McGrew.	

Section - Blocking UNDO, SAVE, RESTORE

Rule for deciding whether to allow undo:
        if the turn count is greater than 0
        begin;
            say "There is no need to do that.";
            deny undo;
        end if.

Check saving the game: say "There is no need to do that." instead.
Check restoring the game: say "There is no need to do that." instead.

Section - Credits, Help

Understand "credits" as asking for credits.
Understand "about" as asking for credits.
Asking for credits is an action out of world.

Understand "help" or "hint" or "hints" as asking for help. 
Asking for help is an action out of world. 
Carry out asking for help: say "What's the name of the game?"

Section - Transcripting

Understand "* [text]" as a mistake ("Noted.").

Section - Fast Quitting

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.
		
Section - Table of Final Question Options
		
When play begins:
        choose row with a final response rule of immediately undo rule in the Table of Final Question Options; 
        delete the final question wording entry;
        choose row with a final response rule of immediately restore saved game rule in the Table of Final Question Options; 
        delete the final question wording entry;
        choose row with a final response rule of immediately quit rule in the Table of Final Question Options; 
        delete the final question wording entry.

Table of Final Question Options (continued) 
final question wording   	only if victorious   	topic   	final response rule   	final response activity   
"view available ENDINGS"   	true   	"endings"   	--	displaying endings
"QUIT"   	false   	"quit"   	immediately quit rule   	--   

Displaying endings is an activity.

Chapter - Ending the Game / Restarting on a bad ending

Winning is an action applying to nothing.

[Carry out winning:
	end the story finally saying "You made a new friend.".]
	
Failing is an action applying to nothing.

[Carry out failing:
	say "[LINE BREAK][BOLD TYPE]*** You did not make a new friend. ***[ROMAN TYPE]";
	end the story.]
	
When play ends when the story has not ended finally:
	resume the story;
     	wait for any key;
     	clear the screen;
	change turn count to 1;
     	try looking.

Chapter - Common Commands

Section - Magic Words

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Understand "plugh" or "say plugh" as casting xyzzy.
Understand "plover" or "say plover" as casting xyzzy.

Section - Naughtiness

Copulating is an action applying to one thing.
Understand "fuck [something]" as copulating.
Understand the command "screw" as something new.
Understand "screw [something]" as copulating.
Report copulating: say "This isn't that sort of game.".

Section - Movement

Understand "walk away" or "walk out" as exiting.

Instead of going: try exiting.

Understand the command "sit" as something new.
Sitting is an action applying to nothing.
Understand "sit" and "sit down" as sitting.

Sitting on is an action applying to one thing.
understand "sit on [something]" as sitting on.
understand "sit on top of [something]" as sitting on.
Report sitting on: say "You can't sit on that."

Understand the command "stand" as something new.
Standing is an action applying to nothing.
understand "stand" and "stand up" as standing.

Standing on is an action applying to one thing.
understand "stand on [something]" as standing on.
understand "stand on top of [something]" as standing on.
understand "step on [something]" as standing on.
Report standing on: say "You can't stand on that."

Instead of going down: try sitting.

Instead of going up: try standing.

Crawling under is an action applying to one thing.
Understand "crawl under [something]" as crawling under.
Report crawling under: say "You can't crawl under [the noun].".

Section - Other Commands

Undressing is an action applying to nothing.
Understand "undress" as undressing.

Understand the command "hug" as something new.
Hugging is an action applying to one thing.
Understand "hug [someone]" as hugging.

Counting is an action applying to one thing.
Understand "count [something]" as counting.
Report counting: say "There's just the one."

Understand "bite [something]" as eating.
Understand "chew [something]" and "chew on [something]" as eating.

Dancing is an action applying to nothing.
Understand "dance" and "do a little dance" as dancing.

Poking is an action applying to one thing.
Understand "poke [something]" or "jab [something]" as poking.
Report poking something: say "Keep your hands to yourself."

Section - Vocalizations

Understand "curse" or "swear" as swearing mildly.

Instead of swearing mildly: try swearing obscenely.

Understand "hum" as singing.

Crying is an action applying to nothing.
Understand "cry" as crying.

Understand the command "shout" as something new.
Shouting is an action applying to nothing.
Understand "shout" as shouting.
Understand "yell" and "scream" and "screech" as shouting.
Report shouting: say "It's not nice to yell!"

Shouting at is an action applying to one thing.
Understand "shout at [something]" as shouting at.
Understand "yell at [something]" and "scream at [something]" and "screech at [something]" as shouting at.
Report shouting at: say "It's not nice to yell!"

Section - Conversation (Blocking)

talking is an action applying to nothing.
understand "talk" or "speak" as talking.

talking to is an action applying to one thing.
understand "talk to [something]" as talking to.
understand "speak to [something]" as talking to.
understand "talk to [someone]" as talking to.
understand "speak to [someone]" as talking to.

report talking to something: say "It doesn't respond."

Understand the command "tell" as something new.
Understand the command "ask" as something new.
Understand the command "say" as something new.
Understand "say" or "tell" or "ask" as talking.

Talking about is an action applying to one topic.
Understand "say [text]" or "mention [text]" or "ask about [text]" or "tell about [text]" or "talk about [text]" as talking about.

Talking about to is an action applying to one topic and one thing.
Understand "say [text] to [someone]" or "mention [text] to [someone]" or "talk about [text] to [someone]" as talking about to.

Talking to about is an action applying to one thing and one topic.
Understand "ask [someone] about [text]" or "tell [someone] about [text]" or "talk to [someone] about [text]" as talking to about.

Instead of talking about: try talking.
Instead of talking about to: try talking.
Instead of talking to about: try talking.
Instead of talking to someone: try talking.

Fingertips ends here.
