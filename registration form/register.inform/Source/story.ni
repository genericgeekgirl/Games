"Register" by Adri.

Volume - Basic Setup

Book - Extensions

Include Basic Screen Effects by Emily Short.
Include Questions by Michael Callaghan.

The display banner rule is not listed in the startup rulebook.
Rule for constructing the status line: do nothing.
The room description heading rule is not listed in the carry out looking rules.
Instead of looking: do nothing.

When play begins:
try switching the story transcript on;
now stage is get-name;
follow the create new player rule.

Section - Player's Name

Data is a kind of value. The data are get-name and get-email. Stage is data that varies.

The player's name is indexed text that varies.
The player's email is indexed text that varies.

Every turn (this is the create new player rule):
	if stage is get-name:
		now current question is "[line break]What is your name?";
		ask an open question, in text mode;
	if stage is get-email:
		now current question is "[line break]What is your email address?";
		ask an open question, in text mode;
                
A text question rule (this is the gather name rule):
	if stage is get-name:
		if the current answer is "transcript on":
			try switching the story transcript on;
		otherwise if the current answer is "quit":
			try quitting the game;
		otherwise:
			now the player's name is the current answer in title case;
			now stage is get-email;
		exit.                        

A text question rule (this is the gather email rule):
	if stage is get-email:
		now the player's email is the current answer;
		clear the screen;
		say "[line break]Thank you!";
		pause the game;
		now stage is get-name;
		exit.                        

Nowhere Special is a room.