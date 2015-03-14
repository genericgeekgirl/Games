"Character Creator" by Erin Gigglecreek.

The story creation year is 2014.
The release number is 1.
The story headline is "A silly character creation toy".
The story genre is "TODO".
The story description is "This toy was created for Ectocomp 2014, an annual minicomp for games created in three hours or less. It's not so much a game as an experiment."

Requesting information is an action out of world.
Understand "about" and "credits" as requesting information.
Carry out requesting information: say "[story description] The author can be contacted at <gigglecreek@gmail.com>."

Use no scoring.

Chapter - Silliness

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Understand "plugh" or "say plugh" as casting xyzzy.
Understand "plover" or "say plover" as casting xyzzy.
Carry out casting xyzzy: say "A hollow voice says 'Ooh!'".

Dancing is an action applying to nothing.
Understand "dance" as dancing.
Carry out dancing: say "Mini dance break!"

Chapter - Environment

Dressing Room is a room. "This is the Character Creation room. Please customize yourself as you see fit. When you're done, simply QUIT the game."
The full-length mirror is in the Dressing Room. The description is "It's a full-length mirror in a wooden frame."

Looking in the mirror is an action applying to one thing.
Understand "look in [mirror]" as looking in the mirror.
Instead of looking in the mirror, try examining the player.

Chapter - Inventory

Instead of taking inventory: 
	now all things carried by the player are marked for listing; 
	now all things worn by the player are unmarked for listing;
	if no things carried by the player are marked for listing:
		say "You are not carrying anything.";
	otherwise:
		say "You are carrying: ";
		list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation, listing marked items only.

Book - Player's Avatar

Include Questions by Michael Callaghan.

When play begins:
say "Greetings! What should we call you?";
now the closed yes/no prompt is "Y/N? >";
now the closed menu prompt is "# >";
now stage is get-name;
follow the create new player rule.

Data is a kind of value. The data are get-name, confirm-nickname, confirm-name, complete.
Stage is data that varies.

Setup is a scene. Setup begins when play begins. Setup ends when stage is complete.

Chapter - Player's Name

The player's name is indexed text that varies. The player's name is "Alexandra".

Every turn when setup is happening (this is the create new player rule):
	if stage is get-name:
		now current question is "";
		ask an open question, in text mode;
	if stage is confirm-name or stage is confirm-nickname:
		now current question is "";
		ask a closed question, in yes/no mode.
                
A text question rule (this is the gather name rule):
	if setup is happening and stage is get-name:
		if the number of words in the current answer is greater than 2:
			now the player's name is word number 1 in the current answer in title case;
			say "Do you mind if I call you [player's name] for short?";
			now stage is confirm-nickname;
			exit;
		otherwise if the number of words in the player's command is 0:
			say "[line break]You must have a name. Since you didn't choose one, I am going to call you [player's name]. Isn't that a lovely name?";
			now stage is confirm-name;
			exit;
		otherwise:
			now the player's name is the current answer in title case;
			say "That is a wonderful name. '[player's name]'. It rolls easily off the tongue.[line break]";
			now stage is complete;
			say "[banner text][paragraph break]";
			try looking;
			exit.                        
                        
A yes/no question rule (this is the confirm nickname rule):
	if setup is happening and stage is confirm-nickname:
		if the decision understood is No:
			say "No, of course you don't. We're going to be really great friends, [player's name].[line break]";
			now stage is complete;
			say "[banner text][paragraph break]";
			try looking;
			exit;
		otherwise:
			say "Aww. I thought it was cute. Let's try that again.[line break]";
			now stage is get-name;
			exit.
                 
A yes/no question rule (this is the confirm name rule):
	if setup is happening and stage is confirm-name:
		if the decision understood is Yes:
			say "That makes me very happy![line break]";
			now stage is complete;
			try looking;
			exit;
		otherwise:
			say "Aww. But it's the name of our Creator! Let's try that again.[line break]";
			now stage is get-name;
			exit.

Rule for printing the banner text when stage is not complete: do nothing.
Rule for constructing the status line when stage is not complete: do nothing.
Instead of looking when stage is not complete: do nothing.

Chapter - Player's Appearance

The description of the player is "Your name is [player's name]. You have [a list of things worn by the player]."

A body part is a kind of thing. A body part is wearable.

A nose is a kind of body part.
An ear is a kind of body part.
A tail is a kind of body part.
A mouth is a kind of body part.
A skin-cover is a kind of body part. 
A fun-item is a kind of body part.

The player has a text called color. The player has a text called eye-color.
[The list of eye colors is {"red", "orange", "yellow", "green", "blue", "purple", "pink", "white", "black"}.]

Rule for printing room description details of a body bag: omit contents in listing.

A body bag is a kind of container. A body bag is fixed in place.

Instead of dropping a body part (called BP):
try taking off the BP.

Procedural rule while wearing something:
ignore the carrying requirements rule;
ignore the can't wear what's not held rule.

Instead of taking a body part (called BP):
	try wearing BP.

After wearing a body part (called BP):
	say "You now have [a BP]."
        
Check wearing a body part (called BP):
if BP is worn by the player, say "That is already a part of you!" instead.

Section - Eyes

Eye is worn by player. Understand "eyes" as eye. The printed name is "[eye_num in words] eye[if eye_num is greater than 1]s[end if]".

A beeker of eyes is a thing. It is fixed in place. The beeker of eyes is in Dressing Room.
The printed name is "beaker of eyes". Understand "beaker" as beeker of eyes.

Does the player mean examining the beeker of eyes: it is likely.

Adding an eye is an action applying to nothing.
Understand "take eye" and "add eye" and "wear eye" as adding an eye.

Eye_num is a number that varies. Eye_num is 2.

Carry out adding an eye:
increase eye_num by 1;
say "You take an eye from the beeker and affix it to your face.";
if eye_num is greater than 8, say "[line break]I'm not sure how you found room for that one, but carry on.";
if eye_num is 1, say "[line break]You can see again."

Removing an eye is an action applying to nothing.
Understand "drop eye" and "remove eye" as removing an eye.

Check removing an eye:
if eye_num is 0, say "You don't have any eyes to remove!" instead.

Check looking when eye_num is 0:
say "It is pitch black in here." instead.

Check examining something when eye_num is 0:
say "You can't see any such thing." instead.

Carry out removing an eye:
	decrease eye_num by 1;
	say "You pry out an eye and drop it back into the beaker.";
	if eye_num is 0, say "[line break]It is now pitch dark in here!".

Section - Nose
        
A bowl of noses is a body bag in Dressing Room.
A beak, a snout, a clown nose, a jingle bell, a triangular nose and a button nose are noses in the bowl of noses.
A humanoid nose is a nose worn by the player.
Understand "nose" as beak. Understand "nose" as snout.

After taking off a nose (called N):
move N to the bowl of noses;
say "You rip off [the N] and drop it back into the bowl."

Carry out wearing an nose when a nose (called the old nose) is worn by the player:
	try taking off the old nose.

Section - Tails

A baggy of tails is a body bag in Dressing Room.
A cotton tail, a long spiked tail, a long slender tail, a corkscrew tail and a demon tail are tails in the baggy of tails.
The printed name of cotton tail is "cottontail".

After taking off a tail (called T):
move T to the baggy of tails;
say "You yank off [the T] and drop it back into the baggy.";
stop the action.

Carry out wearing an tail when a tail (called the old tail) is worn by the player:
	try taking off the old tail.

Section - Ears

Does the player mean examining the basket of ears: it is likely.

A basket of ears is a body bag in Dressing Room.
Large round ears, ears like a rabbit, small round ears, large floppy ears, small pointed ears are ears in the basket of ears.
The printed name of large round ears is "large round ears". [It's printing with a capital L. Ugh.]
Understand "ear" as an ears. The indefinite article of an ears is "a set of".
A humanoid ears is an ear worn by the player.

After taking off an ear (called E):
move E to the basket of ears;
say "You pull off [the E] and drop them back into the basket."

Carry out wearing an ear when an ear (called the old ear) is worn by the player:
	try taking off the old ear.

Section - Extras

A bucket of extras is a body bag in Dressing Room.
A unicorn horn, mane, whiskers, a pair of antenna, a pair of antlers and a pair of horns are fun-items in the bucket of extras.
The indefinite article of unicorn horn is "a".

After taking off a fun-item (called X):
move X to the bucket of extras;
say "You take off [the X] and drop [if X is plural-named]them[otherwise]it[end if] back into the bucket."

Section - Coverings

A closet of coverings is a body bag in Dressing Room.
A fur coat, a feathered cloak, a suit of scales and a wool sweater are skin-covers in the closet of coverings.

After taking off a skin-cover (called SC):
move SC to the closet of coverings;
say "You take off the [SC] and put it back on the hanger."

After wearing a skin-cover (called SC):
	say "You pull on a [SC]."

Carry out wearing an skin-cover when a skin-cover (called the old skin-cover) is worn by the player:
	try taking off the old skin-cover.
        