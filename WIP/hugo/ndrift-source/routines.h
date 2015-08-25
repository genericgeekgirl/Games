
routine GoTo_Beadstore
{
	Corridor2 is visited
	Switch_Chapter(3)
	Barnaby is following
	Audrey is following
	MovePlayer(Corridor3)
	CancelScript(Gibs_Script_1)
}

routine Enter_Choad
{
	Switch_Chapter(4)
	Barnaby is following
	Audrey is following
	Casey is following
	MovePlayer(Corridor1)
	CancelScript(Gibs_Script_1)
	Security_Room is visited
	move phone to Duffy

	move Bead_monitor to Duffy
}

routine Enter_Security
{
	Switch_Chapter(4)
	Barnaby is following
	BO_Hall4_door is open, not locked
	MovePlayer(Security_Room)

}


routine Enter_Corridor4
{
	Switch_Chapter(4)
	MovePlayer(Corridor4)
}

routine Enter_JewelryStore
{
	Switch_Chapter(4)
	Audrey is following
	Barnaby is not following
	Casey is not following

	move Casey to MallStore2
	move Barnaby to MallStore2
	
	MovePlayer(Corridor3)

	Corridor2 is visited

	GameEvents[22] = 1	!GameEvents[22] = Whether Duffy has left Mallstore2 to the south 

	move wraith to kiosk
	move remote_wraith to MallStore4

	Security_Room is visited
	move phone to Duffy
	move xbox1 to Duffy
}



routine Enter_Level_One()
{
	Switch_Chapter(4)
	Audrey is following
	Barnaby is following
	Casey is following

	! Set Elevator's level 
	GameEvents[31] = 1

	MovePlayer(Corridor5)

	Security_Room is visited
	move phone to Duffy
}


routine Test_Ghast
{
	Switch_Chapter(4)
	MovePlayer(Corridor5)
	remove wraith
	wraith.hitpoints = 0

	kiosk is not locked
	kiosk is open 

	Corridor2 is visited

	Security_Room is visited
	move phone to Duffy
	move xbox1 to Duffy

	Move Audrey to Corridor5
	Move Casey to Corridor5
	Move Barnaby to Corridor5

	Audrey is following
	Casey is following

}

routine Enter_Nutrition
{
	Switch_Chapter(4)
	MovePlayer(Nutrition_Store)
	move lacrosse_stick to Duffy
	move Audrey to Nutrition_Store
	move Barnaby to Nutrition_Store
}

routine Enter_FoodCourt1
{
	Switch_Chapter(4)
	MovePlayer(Corridor8)

	Audrey is following
	Barnaby is not following
	Casey is not following

	move human_skull to Player
}

routine Enter_Candle
{
	Switch_Chapter(4)
	MovePlayer(Corridor9)

	Move Audrey to Corridor9
	Audrey is following
	Barnaby is not following
	Casey is not following
}

routine DoSwitchChapter2
{
	Switch_Chapter(2)
}


routine DoSwitchChapter3
{
	Switch_Chapter(3)
}

routine DoSwitchChapter4
{
	Switch_Chapter(4)
}

routine DoSwitchChapter5
{
	Switch_Chapter(5)
}


routine Last_Scene()
{
	Switch_Chapter(4)

	move lacrosse_stick to Player
	move garlic to Player
	move aged_text to Player
	move urn to Player
	move candle to Player
	move water_1 to urn
	move ghast_head to Mall_Exit

	move Vampire to Food_Court2
	move Casey to Food_Court2

	Barnaby is following
	Audrey is following

	MovePlayer(Food_Court2)

}

routine DetermineScore()
{
local i, j

	j = 0

	for (i=0; i< SCORE_OPTIONS; i++)
	{
		!j += ScoreArray[i]

		select(i)
			case 1: {
					if ScoreArray[i] = 1
					j+= 1
				}

			case 2: {
					if ScoreArray[i] = 1
					j+= 6
				}

			case 3: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 4: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 5: {
					if ScoreArray[i] = 1
					j+= 12
				}

			case 6: {
					if ScoreArray[i] = 1
					j+= 10
				}

			case 7: {
					if ScoreArray[i] = 1
					j+= 15
				}

			case 8: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 9: {
					if ScoreArray[i] = 1
					j+= 15
				}

			case 10: {
					if ScoreArray[i] = 1
					j+= 10
				}

			case 11: {
					if ScoreArray[i] = 1
					j+= 30
				}

			case 12: {
					if ScoreArray[i] = 1
					j+= 31
				}

			case 13: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 14: {
					if ScoreArray[i] = 1
					j+= 40
				}

			case 15: {
					if ScoreArray[i] = 1
					j+= 40
				}

			case 16: {
					if ScoreArray[i] = 1
					j+= 40
				}
			case 17: {
					if ScoreArray[i] = 1
					j+= 8
				}
			case 18: {
					if ScoreArray[i] = 1
					j+= 8
				}
			case 19: {
					if ScoreArray[i] = 1
					j+= 8
				}
			case 20: {
					if ScoreArray[i] = 1
					j+= 8
				}
			case 21: {
					if ScoreArray[i] = 1
					j+= 8
				}
			case 22: {
					if ScoreArray[i] = 1
					j+= 8
				}

			case 23: {
					if ScoreArray[i] = 1
					j+= 25
				}

			case 24: {
					if ScoreArray[i] = 1
					j+= 30
				}

			case 25: {
					if ScoreArray[i] = 1
					j+= 8
				}

			case 26: {
					if ScoreArray[i] = 1
					j+= 55
				}

			case 27: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 28: {
					if ScoreArray[i] = 1
					j+= 30
				}

			case 29: {
					if ScoreArray[i] = 1
					j+= 10
				}

			case 30: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 31: {
					if ScoreArray[i] = 1
					j+= 10
				}

			case 32: {
					if ScoreArray[i] = 1
					j+= 10
				}

			case 33: {
					if ScoreArray[i] = 1
					j+= 10
				}

			case 34: {
					if ScoreArray[i] = 1
					j+= 20
				}

			case 35: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 36: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 37: {
					if ScoreArray[i] = 1
					j+= 15
				}

			case 38: {
					if ScoreArray[i] = 1
					j+= 30
				}

			case 39: {
					if ScoreArray[i] = 1
					j+= 5
				}

			case 40: {
					if ScoreArray[i] = 1
					j+= 5
				}

	}
	score = j
}




routine Give_Rotting_Disease(target)
{
	if target is not rotting
	{
		if target = Duffy
		{
			Duffy is rotting
			"\nI feel awful after that last touch."
			Activate(Rotting_Disease)
		}
		else
		{
			target is rotting
		}
	}
	else
	{
		!"Trick code."
	}
}
	

		

routine Set_Volume()
{
local vol_number = 30


	if (vol_number < 101) and (vol_number > 0)
	{
		sound_volume = vol_number
		"\B[Volume set to ";
		print number vol_number ;
		" .]\b"
	}
	else
	{
		"\B[Volume must be between 1 and 100.]\b"
	}
}

routine DoMusicOff
{
	PlayMusic(MUSIC_STOP)
	MUSIC_OFF = TRUE
}

routine DoMusicOn
{
	MUSIC_OFF = FALSE
}


routine DoSoundOff
{
	PlaySound(SOUND_STOP)
	SOUND_OFF = TRUE
}

routine DoSoundOn
{
	SOUND_OFF = FALSE
}


routine DoAbout
{
	version

	"NECROTIC DRIFT was written between December of 2001 and May of 2004.\n"

	"Minimum Recommended Resolution: 1024x768x16b.\n
	Platforms Supported : All graphics-enabled Hugo platforms.\n"

	"Conversation and violence are oftentimes the key to solving problems in this game. You can instruct Duffy to speak with someone by typing 
	\"\BTALK\b to \Icharacter\i\" (or simply \BT\b \Icharacter\i, for short). The resulting menu
	allows the player to pick from a menu of what you'd like your character to say. The game will then
	respond with the NPC's response. For details on the game's combat system, consult the Help Menu.\n"
		
	"It is not possible to get the game in an completely unfinishable state. In certain situations, the player is allowed 
	to solve different puzzles at his/her leisure, and information pertaining to those unsolved puzzles will be repeated 
	when necessary to cut down on required player memorization. Please type \"\BHELP\b\" for a brief Command Summary, 
	further answers to common gameplay questions, and this ware's design notes & credits."
}



routine DoActivate
{
	"Hmm... that doesn't seem to work."
}


routine DoAnswer
{
	"I can't answer that."
}

routine DoApply
{
	"I can't apply that."
}

routine DoBlow
{
	"Puff, puff."
}

routine DoBreak
{
	if object is breakable and not broken
	{
		object is broken
		"Done."
	}
	else
	{
		"That doesn't seem to work."
	}
}

routine DoBuy
{
	"That doesn't seem to be for sale."

}

routine DoCredits
{
Version()

"Testing by James Bernoski, Jonathan Blask, Greg D'Avis, Joachim Froholt, Paul Kostock,   
Jacqueline A. Lott, Drew Mochak, Dayna Rich, Gunther Schmidl, Mike Sousa, Adam Thornton.\n"

"Acting by Lex Gray, Jamie Byrnes, Steve Oelheim, Jill Leckie, Tammy Bancroft, Jonathan Blask, 
Matthew Davis, Michael Sherwin, Joe Mason, Ben Parrish, Bryan Sailer, Jeff Kyle, Gerrit Hamilton, 
Adam Parcells, Laura Randall, Dayna Rich.\n"

"Music by Ben Parrish, Gerrit Hamilton."
}

routine DoDiagnose
{
        wound_level = Duffy.maxhitpoints - Duffy.hitpoints

	"I ";

	if wound_level = 0
	{
		"am in perfect physical health."
	}

	if wound_level > 0 and wound_level <=5
	{
		"have a few minor scratches but am otherwise fine."
	}

	if wound_level >5 and wound_level <= 10
	{
		"have a lot of minor scratches, but will be okay, since I still have my looks."
	}

	if wound_level >10 and wound_level <= 20
	{
		"have a light wound."
	}

	if wound_level >20 and wound_level <= 25
	{
		"have an assortment of light wounds."
	}

	if wound_level >25 and wound_level <= 30
	{
		"have a serious wound."
	}

	if wound_level >30 and wound_level <= 35
	{
		"have several serious wounds."
	}

	if wound_level >35 and wound_level <= 40
	{
		"have a critical wound."
	}

	if wound_level >40 and wound_level <= 45
	{
		"am on death's door, practically."
	}

	if wound_level >45 and wound_level <= 48
	{
		"have several critical wounds."
	}

	if wound_level >48 and wound_level <= 50
	{
		"have several critical wounds. I can not take another hit."
	}	

        return true
}

routine DoDriveVague
{
	"Be more specific about what I should drive."
}

routine DoDrive
{
	"I can't drive that."
}

routine DoFeed
{
	"I can't feed that."
}

routine DoFix
{
	"I can't fix that."
}

routine DoFuck
{
	"Now doesn't seem to be a good time for that."
}

routine DoHang
{
	"I can't hang that."
}

routine DoHide
{
	"I can not hide here."
}

routine DoHint
{
	"It is not possible to get the game in an unwinnable state. General advice would be to role play Duffy and make
	those choices that he faces which he is seemingly incapable of making on his own, as well as talk at length to the other characters
	that you will encounter."

	"\nFor more specific help and hints with the game, try the Usenet newsgroup \Brec.games.int-fiction\b -- the users of this group are 
	often able to help with quality hints and solid nudges. Additionally, you are invited to drop by the author's BBS at \Bhttp://www.joltcountry.com/phpBB2\b
	where he will be able to answer any and all questions."
}

routine DoIdentify
{
	Perform(&DoLook, object)
}

routine DoIndirectTouch
{
	"No effect."
}


routine DoKill
{
	"I can't kill that."
}

routine DoKnock
{
	"No response."
}


routine DoKrips
{
	"\BReviews From Trotting Krips\b\n
	http://www.joltcountry.com/trottingkrips\n
	Come and listen, as a bunch of demented individuals tell you all about interactive fiction... and life."
}

routine DoLift
{
	"That doesn't seem to work."
}

routine DoLeanOn
{
	"That doesn't seem to work."
}

routine DoLogon
{
	"I can't logon to that."
}

routine DoLookOver
{
	"I can't do that."
}

routine DoLoosen
{
	"That doesn't seem to have an effect."
}

routine DoLower
{
	"I can't lower that."
}

routine DoPlay
{
	"I can't play with that."
}

routine DoPlug
{
	"That doesn't seem to work."
}

routine DoPolish
{
	"Nothing happens."
}

routine DoPour
{
	"That doesn't seem to be feasible."
}

routine DoPutThrough
{
	"I can't do that."
}

routine DoRead
{
	"Hmm... doesn't seem to be readable."
}

routine DoRescue
{
	"\B[ Please be more specific in this case. ]\b"
}

routine DoScan
{
	"I can't scan that."
}


routine DoSell
{
	"I can't sell that."
}

routine DoShake
{
	"Nothing happens."
}

routine DoSmear
{
	"I can't run over that."
}

routine DoSpray
{
	"I can't spray that."
}

routine DoSprayOn
{
	"Nothing happens."
}

routine DoSprayIndirect
{
	"Nothing happens."
}

routine DoSpit
{
	"I try to keep the city clean, eh?"
}

routine DoSpitLiving
{
	if object.conscious = 0
	{
		"I hock a sizeable loogie and let go."
	}
	else
	{
		"Being brought up by the honorable Old Man Duffy gets in the way of spitting in a face."
	}
}

routine DoStrangle
{
	"I can't strangle that."
}

routine DoSwipe
{
	"I can't swipe that."
}

routine DoTaste
{
	print "It tastes totally inedible." 
}

routine DoToggle
{
	if object is Switchedon 
	{
		Perform(&DoSwitchOff, object)
	}
	else
	{
		Perform(&DoSwitchOn, object)
	}
}

routine DoUndress
{
	"Umm... that's not liable to end up well."
}

routine DoVagueTalk
{
	"\B[Please specify who should be spoken to.]\b"
}

routine DoVomit
{
	"There's no one to vomit upon here!"
}

routine DoVote
{
	if (Chapter < 4) or (Chapter = 5)
	{
		"There's nothing to vote on."
	}
	else
	{
		if GameEvents[52] = 0
		{
			GameEvents[52] = 1

			"Democracy means one man, one vote, right? Well, whatever's possessed Sydney is the one
			man, and it got the one vote."
		}
		else
		{
			"There's nothing democratic about my current situation."
		}
	}
}

routine DoVoteYes
{
	"There's nothing to vote on."
}

routine DoVoteNo
{
	"There's nothing to vote on."
}

routine DoVoteQuery(decision)
{
local temp

	if decision = nothing
	{
		COLOR LIGHT_CYAN
		"\BThe Call for Ejection has been made!\b\n"
		COLOR TEXTCOLOR
		"Press \B1\b to vote for the current movie."
		"Press \B2\b to vote for... \Iejection!!\i"
		">";

		input


		if word[1]
		{
	      		string(tempquip, word[1])
		}

		else
		{
       		string(tempquip, parse$)
		}

		temp = tempquip[0] - '0'

		if (temp ~= 1) and (temp ~= 2)
		{
		"\nI don't make a choice after all."
		selected = temp
		return
		}

		else
		{
		select(temp)
			case 1:
			{
				"\n\"Would you guys let it go and leave the thing alone?\" Pang and Criswell ignore me." 
			}

			case 2:
			{
				"\nI find myself putting my own thumb down. I'm almost ashamed to do it in front
				of Audrey, but I can't help myself."
			}
		}
	}
	elseif decision = true
	{
		"\"C'mon, knock it off you two,\" I say. \"Let the movie stay.\""
	}
	else
	{
		"I get a slight tingle from the inherent immaturity of it, but I put my thumb down for this one."
	}
}


routine DoWager
{
	"I can't place a bet here."
}

routine DoWatch
{
	"Nothing worth watching."
}

routine DoWipeOff
{
	if object is not living
		"Still just as filthy."

	else
		"Nothing really happens with the wipe."
	
}


routine DoXyzzy
{

	if GameEvents[2] = 1
	{
		"Told ya."
		GameEvents[1] = 2 
		GameEvents[2] = 2 
		return 
	}

	if GameEvents[1] = 0 
	{
		GameEvents[1] = 1 
		"Nothing happens.\n"
		"(Plugh doesn't do anything special either.)"

	}
	else
	{
		"\B[The word \"xyzzy\" is not recognized by the game.]\b"
	}
}


routine DoPlugh
{

	if GameEvents[1] = 1
	{
		"Told ya."
		GameEvents[1] = 2 
		GameEvents[2] = 2 
		return
	}

	if GameEvents[2] = 0 
	{
		GameEvents[2] = 1 
		"Nothing happens.\n"
		"(XYZZY doesn't do anything special either.)"

	}
	else
	{
		"\B[The word \"plugh\" is not recognized by the game.]\b"
	}
}

routine CPronoun(obj)
{
	AssignPronoun(obj)

	if obj.pronoun
		print capital obj.pronoun; " ";
	else
		print capital obj.name;
}


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Custom Routines
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
routine Determine_Followers
{

local x = 0
local charac

	for (x = 1; x < NUMCHARACTERS; x++ )
	{
		FollowingArray[x] = 0
	}


if location ~= old_location
	{

		for (x = 1; x < NUMCHARACTERS; x++ )
		{
			!print "The "; Characters[x].name; " is his name.";
			if Characters[x] is following
			{

				FollowingArray[x] = 1
			}
		}

		for (x = 1; x < NUMCHARACTERS; x++ )
		{
			if FollowingArray[x] = 1
			charac = Characters[x]

			! Don't have unconscious people follow 
			if charac.conscious = 1 and charac is not paralyzed
			{
			
				move charac to location

				!if charac is mummylike
				!	"The mummy continues following me!"
			}
			else
			{
				charac is not following
			}
		}

	}
return
}


routine DoGetMovie(x)
{
	if location ~= Academy_Videos
	{		
			if object = nothing
			{
				"That's not here."
			}
			else
			{
				move object to Player
				"Got it."
			}
	}

	else
	{
		remove green_movie
		remove blue_movie
		remove red_movie
		remove yellow_movie

		if x = 1 and DVD_case in Misc_rack 
		{
			"I empty out the rack, to the dismay of the clerk.\n"

			print "I grab a movie from the pile. ";
		}

		elseif DVD_case in Misc_rack
		{
			print "I grab a movie from the rack. ";
		}

		if DVD_case in Misc_rack
		{

			ScoreArray[1] = 1

			"And behold! It's \IThe Lord of the Rings.\i Why on earth the dip behind the counter would deign
			to keep it in \Ithis\i rack is beyond my comprehension. But it doesn't matter. I don't really possess 
			the discipline to go get something else."
		
			move DVD_case to Player
			remove Misc_rack
		}
		elseif DVD_case in Academy_Videos
		{
			"Done."
			move DVD_case to Player
		}
		else
		{
			"I've already encountered the beauty of \IThe Lord of the Rings.\i Let's be frank, now: there's no other movie 
			worth getting."
		}
	}

return true
}	

routine Zombie_Attacks_Car()
{
	select(GameEvents[19])
	case 0
	{
		GameEvents[19] = 1 
		"\nThe guy starts banging on my car!"

		return true
	}

	case 1
	{
		"\nThe guy keeps banging on my car!"

		return true
	}
}

routine DoDriveCar()
{
	Deactivate(Zombie_Gets_Back_Up)

	if (Zombiebot in Academy_Outside) and (Zombiebot.conscious = 1)
	{
		"I double-check to make sure everyone's into the car.\n"

		if GameEvents(19) = 0
		{
			"The guy from inside starts banging and clawing at the passenger side of my car.\n"
		}

		else
		{
			"The guy from inside keeps clawing away at the passenger side of my car.\n"
		}

		"\"Drive, dammit, \Idrive!\i\" screeches Criswell from the backseat. \"Get us outta here!\"\n"

		"I put the car in reverse and prepare to get the hell out of town. The guy staggers over and gets right
		in my path.\n"

		"\"Hit 'em, Duffy!\" Criswell's going crazy back there. \"Run him over!\"\n"

		"I put the car in first and stomp the accelerator more out of panic than anything else. The guy 
		doesn't move, flinch, anything. I ram him and he smacks right into the windshield, chipping it with 
		his elbow. He tumbles about and we hear him on the roof for a moment before seeing his face appear 
		on the back window, shocking the hell out of Pang and Criswell. I downshift from third gear back into 
		second for a moment which causes my car to red line and enough of a jolt for him to fall off completely.
		I see him, through the rear-view mirror, take a vicious fall onto the road, bouncing against it at 
		painful angles like a discarded rag doll.\n"

		"Nobody says anything for a second, until Criswell pops opens his mouth. \"That... man, that was
		\Iawesome!!\i\"\n"

		"\"You don't think I killed that guy, do you? Do you think he's OK?\"\n"

		"\"It was probably a bot,\" says Gibs. \"Look, he was trying to attack us, anyway.\"\n"
			
		"\"That's true,\" says Pang. \"Both items are totally true.\"\n"

		"I get us on the Interstate and head north, back towards home. ";
		
		if nailgun in Duffy
		{		
			"I chuck the gun out the window on the way back. ";
		}

		"Nobody says anything else until I drop Gibs off and get the rest of us back to the house..."

		Zombiebot.hitpoints = -101
		Deactivate(Zombie_Gets_Back_Up)
	}

	else !if (Zombie in Academy_Videos) or (Zombie in Academy_Outside and Zombie.conscious = 0)
	{

		if Barnaby not in Neon
		{
			"The other three guys hop in and ";
		}
		
		"I squeal the tires in an attempt to get out of the parking
		lot as quickly as possible.\n"

		"\"What the hell was that in there?!\" asks Pang, from the backseat.\n"

		"\"Aw, geez,\" says Barnaby, in a bit of a guilty rasp. \"It was \Iprobably\i just a bot. There is 
		a robotics plant in this town, and they will occasionally let one out for testing.\"\n"

		"\"What kind of test plan is that?\" asks Pang. \"'Kill ten people, \IHerr machinenmann\i, or else 
		your project's demoted back to schematics?\"\n"

		"\"I don't know... I'm just glad we're out of there.\" says Barnaby.\n"
				
		"I get on the Interstate and head back home. ";
		
		if nailgun in Duffy
		{		
			"I chuck the gun out the window on the way back. ";
		}
		
		"The rest of the ride goes by in silence..."

		Zombiebot.hitpoints = -101
		Deactivate(Zombie_Gets_Back_Up)

	}

	ScoreArray[30] = 1

	Switch_Chapter(2)

}


routine DoFixComputer()
{
	Bead_Computer is special
	GameEvents[6] = 1 

	if SOUND_OFF = TRUE
	{
	}
	else
	{
		PlaySound("ndmusic", "explosion", sound_volume, false, true)	
	}

	if MUSIC_OFF = TRUE
	{
	}

	else
	{
		PlayMusic("ndmusic", "Stoli", sound_volume, false, true)	
	}

				
	"I take a look at the back of the computer. The serial cable has been shoved into the back panel of the
	case. I'm not a hardware guru, but I can count pins and figure out where most stuff goes. I look over to
	the girls to tell them what the problem is, but they are holding one another's hands trying to engage
	in some pseudo-religious summoning ceremony. I fail at stifling an eye roll and give the serial cord
	a gentle tug. Nothing happens, as it's quite stuck. I pull a little harder, but still nothing. I decide
	to get a bunch of slack on the cord and give it a forceful yank -- \n"

	"The serial cord rips free from the back of the computer! I see, briefly, that it was attached to some sort
	of small plug-in card that was squirreled away inside the box."

	"\nThe force of pulling on the cord launches the card behind me. It falls into the pentagram that the girls and
	Gibs are around."

	Activate(Summoning_Aftermath)

	return
}


routine DoSummoningRitual()
{
local z

	!either a random snippet of code, or a very long daemon here...
	!Nysrogh, Verin, Valafar and Cyramoir.

	z = random(20)

	if z = GameEvents[42]
	{
		while z = GameEvents[42]
		{
			z = random(20)
		}
	}

	GameEvents[42] = z	

	select(z)
	case 1
		{
		"\nGibs starts quietly humming 'You Can Do Magic' by the old rock band America, to Sydney's annoyance."
		}
	case 2
		{
		"\n\"Nysrogh, o lovely dark lord, we beg so sincerely for your attention, for only a moment...\" chants Sydney."
		}
	case 3
		{
		"\n\"Verin, love, do not forget us this dark eve, we miss you so...\" chants Sydney, slowly."
		}
	case 4
		{
		"\n\"Valafar! Alack! Valafar! This eve, Valafar!\" chants Sydney."
		}
	case 5
		{
		"\n\"Sweet, sweet Cyramoir, how we long for thee...\" chants Sydney."
		}
	case 6
		{
		"\nSydney keeps mumbling in some sort of inane chant."
		}
	case 7
		{
		"\nAudrey begins chanting in some tongue or another. I really dig Audrey, but when she treats this D&D stuff as
		real, it's seriously unattractive."
		}
	case 8
		{
		"\nGibs opens his eyes for a moment to see if any of the girls have opened their eyes."
		}
	case 9
		{
		"\n\"Come back Verin, Prince of Hate, return to us this eve,\" chants Audrey."
		}
	case 10
		{
		"\n\"Nysrogh, we beg for your attention, Lord,\" says Audrey. Hey... that's not fair. She never begs \Ime\i for
		attention."
		}
	case 11
		{
		"\n\"Valafar! Cast your lone lovely eye this way this eve, Valafar!\" chants Audrey."
		}
	case 12
		{
		"\n\"Cyramoir, your attention please, Cyramoir, your quiet affection...\" chants Audrey."
		}
	case 13
		{
		"\nWith the girls' eyes closed, I take the opportunity to check out their bodies. These three can seriously fill
		out a costume."
		}
	case 14
		{
		"\nI briefly consider giving Audrey a quick grope while her eyes are closed during the whole chant, but that would
		probably mess up the foul idiocy -- I mean, sorcery -- afoot here."
		}
	case 15
		{
		"\n\"Nysrogh, we are not fit for your attention, milord,\" sings Casey, sweetly."
		}
	case 16
		{
		"\n\"Verin, remember us tonight, Verin!\" sings Casey."
		}
	case 17
		{
		"\n\"Valafar! Alas, Valafar! Recall, Valafar!\" sings Casey."
		}
	case 18
		{
		"\n\"Cyramoir, my heart sings for you, sweet Cyramoir,\" chants Casey."
		}
	case 19
		{
		"\nGibs feels it's his turn to say somebody's name, but he can't recall one correctly. He kind of mumbles a few
		likely syllables."
		}
	case 20
		{
		"\nThe girls continue their melodious chanting."
		}

}

routine DoCheckOnSydney()
{
	GameEvents[7] = 3		! Sydney is now the ghost
	LocationState[3] = 8		! change the room photo
					! change Sydney's picture as well

	SetQuip(10,3,0)
	SetQuip(10,4,1)
	SetQuip(10,5,1)

	if Player in BeadStore_floor
	{
		move Player to MallStore3
		"I get up off the floor and go ";
	}
	else
	{
		"I go ";
	}
		
	"over towards Sydney in an attempt to wake her up. I place my hand on her shoulder... and suddenly her eyes
	snap open. She recognizes me quickly and gives me a look which communicates that she could have me at \Iany time she 
	wished\i in a split-second.\n"
	
	"Her eyes begin to swirl. She begins to turn transparent, she starts to float... she rises off the ground, breaking the
	look of pure sex and hypnotism that she shared with me, and looking over the others.\n"

	"\"";
	
	COLOR LIGHT_MAGENTA

	"Always the inadvertent knight in shining armor, no, Jarret?";

	COLOR TEXTCOLOR	
	
	"\" she whispers. It's still Sydney's voice, but softer, much more melodic.\n"

	"\"Syd?\" asks Audrey. \"Are you --\"\n"

	"\"";
	
	COLOR LIGHT_MAGENTA
	
	"Oh, I feel \Iwonderful,\i";

	COLOR TEXTCOLOR	
	
	"\" she says, answering the question before Audrey can finish it. \"";

	COLOR LIGHT_MAGENTA
	
	"It has been so long since I have walked among you all... Too long. I have forgotten how good it feels to take a 
	breath of air rather than soot...";

	COLOR TEXTCOLOR

	"\"\n"

	"She crosses her legs and raises herself a bit higher. She begins to slightly glow."

	Sydney.noun #2 = "ghost"
	Sydney.noun #3 = "demon"
	Sydney.noun #4 = "spirit"

	!get the first monster in there
	DoSkeletonScript()
}

routine DoSkeletonScript()
{
	GameEvents[8] = 2

	move Skeleton to Corridor3

	Skeleton_Script_1

	Activate(Set_Skeleton_Article)
}


routine Ghoul_Dies()
{
	ScoreArray[9] = 1

	Audrey is following
	move Casey to Mallstore2

	SetQuip(3,24,1)

	LocationState[11] = 1

	"\nI hear a grotesque snapping sound coming from the thing. I completely
	flattened it on that last one!"

	if Barnaby is not paralyzed
	{
		Barnaby is paralyzed

		"\nThe force of my attack knocks the ghoul straight into Barnaby. Barnaby tries to brace
		himself in an attempt to get the thing off him, but touches his hands to the ghoul's
		bare skin in doing so.\n"

		"Barnaby begins to freeze up in paralysis. He lets loose half of a 'dammit' before his
		muscles tighten completely. I suppress a laugh, but only through extreme courtesy.\n"
		"\"Er, sorry about that, Gibs...\" I give him a shrug."
	}

	"\nI walk over to Audrey. She's shivering.\n"
	"\"Are you OK?\" She nods. \"Where did your coat go?\" She doesn't say. She shakes her head and melts
	into my arms. I hold her, hug her and bring her as close as I can. Her face is buried within my chest
	and I scratch the back of her head and feel her close-cropped hair on her neck flick through my
	fingers. I had no idea if I'd ever feel that again, or feel her body, alive and whole, this close
	to mine. \"I'll keep you warm,\" I say with a whisper.\n"
				
	"Casey enters from the entrance to the south. \"Ugh,\" she says, after spotting what's left of the ghoul.
	\"What on earth did you do to that thing?\""

	! Jarret's Response
	SetQuip(11,6,1)

	Player.attackadjust++

	ghoul is not following
}


routine MakeShadowAppear
{
	!GameEvents[26] = Whether the comb has been grabbed. (2 when the shadow scene completes) 
	if GameEvents[26] = 0		
	{
		GameEvents[26] = 1

		!GameEvents[58] = Don't want the shadow to appear after the wraith appears
		if GameEvents[58] = 0
		{
			!Don't want it to appear if the wraith has already been summoned
			Activate(Shadow_Appears)
		}
	}

return
}

routine Shadow_Dies
{
	"\nUpon coming in contact with the silver, the shadow halts in place and disintegrates -- it falls to the floor in a 
	little pile of soot-like dust. I get down and blow it away in order to properly scatter it into nothingness.\n"

	"I walk over towards Audrey. She's shivering. \"You OK, doll?\"\n"

	"\"Yes,\" says Audrey, quietly. \"It's just so cold in here. I'm sorry. I don't mean to complain.\"\n"

	"I embrace her for a few moments and rub my hands over her bare shoulders. \"I'll keep you warm...\" She nods. \"Silver
	definitely worked on the shadow,\" I muse. \"It used up the comb, however. But the same thing'll work on
	the wraith. We just need to find more of it. The girls that work here (presuming that they didn't rip the place off blind
	before calling it a night) keep all the jewelry locked up in the safebox.\" I point over towards the big locker-style
	cabinet against the western wall of the store. \"If we can get the temperature in here to be significantly colder,
	I'm betting that lock will pop.\"\n"

	"\"How do we do that?\" asks Audrey. She looks over towards the wraith. \"Oh, no. You don't mean -- \"\n"

	"\"Yes,\" I say quietly. \"Let's get the wraith in here.\"\n"

	"\"Jarret, no! You can't be serious!\""

	SetQuip(3,44,1)
	SetQuip(3,45,1)

	remove Shadow

	remove silver_comb 

	Player.attackadjust++
}

routine Wraith_Dies
{
	Deactivate(Wraith_Approaches)

	remove handful_rings

	remove wraith

	GameEvents[27] = 1	! Whether the wraith is dead

	GameEvents[40] = 2	! Jarret can kiss Audrey

	"\nUpon coming in contact with the charms, the wraith immediately atomizes, taking the silver with him
	into oblivion.\n"

	"\"That was my \ITreasure Type\i you were fucking with, creep!\" I say it even though the wraith is completely
	blinked out of existence. It takes me a fair trice to realize that thing is truly
	gone. \"Let's get out of here,\" I say to Audrey. \"Unless you want to get to work on raising the 
	temperature of the room with a little bit of body heat.\"\n"

	"To my surprise, she looks back at me with nothing but love. \"If I thought it could be done,\" she says,
	\"without it becoming a menage a trois with a lurking horror, or a four-way with an undead ettin... you know I 
	would.\" (An ettin is a two-headed beastie in D&D, which elicits a smile from me. That's my girl!)"

	Player.attackadjust++
}


routine Ghast_Dies
{
	"\nThat last one was a little too much for the ghast. It lets a little whimper and gurgle and falls
	hard to the ground.\n"

	if Barnaby.hitpoints <= 0
	{
		Barnaby.hitpoints = Barnaby.maxhitpoints
		Barnaby is following 

		"Gibs wakes himself up and blinks stupidly a couple times as he sees the ghast resting 
		peacefully on the floor. He winds up and kicks the thing's head clear off. It scuttles
		down the corridor."
	}

	else
	{		
		"Gibs calmly walks over and kicks the ghast in the head. To my surprise, the head comes clean
		off and goes bounding down the corridor."
	}

	move ghast_head to Mall_Exit

	Player.attackadjust++

	LocationState[16] = 0

	Ghast.hitpoints = -101

	ScoreArray[12] = 1
}


routine Vampire_Dies
{
	! Presume it was with a piercing weapon 

	Casey is not bitten

	"\n\I\"Suck this down, bitchtits!\"\i I impale the little Engrish-speaking whore up against the wall.\n"

	! Presume that Casey is in the room and hasn't been attacking 

	"Audrey goes over to Casey and feels the side of her neck, right below her left ear. \"She's been bitten,\" whispers 
	Audrey. She scratches Casey's right hand with a long fingernail and draws a bit of blood. \"We still have some time,\"
	says Audrey. \"There's still blood in her veins. The vampire did not drink much of it.\"\n"
	
	"\"Eventually the enzyme transmitted in the vampire's bite is going to turn it all to ichor,\" I say. \"We can maybe give
	her a transfusion, I don't know, though. Is that something you can do?\" I ask Audrey.\n"

	"\"I can do it,\" she says with strong resolve. \"But we'll need a lot of blood.\"\n"

	"\"She's practically brain dead,\" says Gibs. \"I'll carry her.\""

	LocationState[6] = 5 

	Casey is following 

	Player.attackadjust++


}


routine Sydney_Returns
{
	Sydney is following

	! Do the Score Array entry for this
	ScoreArray[27] = 1

	! Get Sydney's picture back to what it was... 
	GameEvents[7] = 0 

	! Cannot go se from here
	GameEvents[72] = 1

	! Can kiss Audrey
	GameEvents[40] = 3

	"The flame begins to dance a bit on the wick, and after a moment's hesitation something 
	beautiful happens.\n"

	"Fire billows up from the candle and strikes Sydney in the face. We all hear a horrible hiss and
	tears begin to streak down her face. Her eyes change back and forth between displaying possession
	and not. I walk over to the demon.\n"

	"\"It wasn't meant to be, was it, Jarret? My return?\" She looks so impossibly sad. Defeated.\n"

	"\"No,\" I say, softly.\n"

	"\"Why did you keep them alive? Why did you keep them safe? They... \" The demon convulses in a fit
	 of coughing. \"They only slowed you down...\"\n"

	 "\"Is that what you think? Really? I don't think you've noticed anything. You've picked my brain over
	 and turned it inside out. You resurrected a cacophony of terrible images to aid in your return, but you haven't
	 truly looked or listened... That's so sad.\" I don't say it to be mean. But it's true. The demon just 
	 seems piteous to me now. \"Thumping 'monsters' with a mace isn't why I play games like Dungeons & Dragons. 
	 It's a game about teamwork. It's a game about protecting your friends and having their back when you can, 
	 and surviving because they'll then be  around to have yours.\" I carefully avoid finding a cigarette.\n"

	 "\"Let me tell you a story. I used to play organized sports. I still like them. Some of them. But if you can't perform you're out. History.
	 At a professional level you're cut or waived or whatnot... and I understand the evolutionary aspects of them and
	 they're fine for that. But sometimes, Sydney, I want to revel in my humanity and play games revolving around compassion
	 and loyalty and teamwork.\"\n"

	 "\"And you think that it slows me down?\" The demon is running on fumes. Sinister, brimstone fumes, natch, but fumes
	 nevertheless. \"I needed Gibs's courage. Where would I have been without Audrey's intelligence? Trott's resourcefulness?
	 Casey's willpower?\"\n"	 
	 
	"The flame spreads and encompasses her entire body. It's a rebirth worthy of a phoenix.\n"	

	"A shockwave is released from Sydney's body -- the rest of us are knocked to the ground as she falls
	roughly to the ground. I feel the demon (no longer able to enter Sydney) attempt to enter my own body. I find
	myself covered in a black smog, but realize that it's Casey. She's just become gaseous. Two smokey fangs 
	protrude from the cloud and I hear thick snarling, throttling, chewing and smacking as the last of the 
	demon's soul is consumed...\n"

	"I crawl over to Sydney's body and wrap her up in my jacket. I stamp out the few remaining flames. She seems to be
	still with us, her skin cool to the touch. Casey turns back into corporal form.\n"
		
	"\"Let's get out of here,\" I say. \"This is our chance.\"\n"

	"An exit leads north out of the Mall."

	remove ghast_head
	
	! Determines if the crew can leave the mall or not 
	GameEvents[38] = 1 

	LocationState[19] = 2

	Activate(Banshee_Appears)

}


routine Randolph_Speaks()
{
local i

	i = random(10)

	select(i)
		case 1
			{
				CharExclaim(Randolph,ExclaimArray[1])
			}

		case 2
			{
				CharExclaim(Randolph,ExclaimArray[2])
			}

		case 3
			{
				CharExclaim(Randolph,ExclaimArray[3])
			}

		case 4
			{
				CharExclaim(Randolph,ExclaimArray[4])
			}

		case 5
			{
				CharExclaim(Randolph,ExclaimArray[5])
			}

		case 6
			{
				CharExclaim(Randolph,ExclaimArray[6])
			}

		case 7
			{
				CharExclaim(Randolph,ExclaimArray[7])
			}
		case 8
			{
				CharExclaim(Randolph,ExclaimArray[8])
			}

		case 9
			{
				CharExclaim(Randolph,ExclaimArray[9])
			}

		case 10
			{
				CharExclaim(Randolph,ExclaimArray[10])
			}

}

routine Attract_Wraith()
{
	if wraith not in kiosk and wraith not in Corridor4 and wraith not in MallStore4
	{
		"Nothing happens."
		return
	}

	else
	{
		if wraith in kiosk
		{
			! Remove this quip as something to talk to Audrey about 
			SetQuip(3,41,0)
			SetQuip(3,37,0)
			SetQuip(3,38,0)

			move wraith to Corridor4
	
			"I scream like a housewife in a 50s sitcom coming across a mouse. Like an English siren during the
			blitz. (Like Lorraine Williams surrounded by a bunch of pen & paper gamers, even.) And it works.
			The wraith turns round and passes right through the kiosk. It slowly begins to come near us."

			! Don't want the shadow to be able to come out now ... 
			GameEvents[58] = 1

			Activate(Wraith_Approaches)

			return
		}

		else
		{
			"I think I've already screamed quite loud enough to wake the dead.\n"
			"So to speak."
		}
	}
}
		

routine DoSpitOffLedge
{
	"I wind up and spit a little wad of saliva off the guardrail. It hits the floor below with a satisfying 'plop.'"
}

routine DoDropOffLedge
{
	if object = xbox1
	{

		if location = Corridor4 and ghast.hitpoints > 0  
		{
			"I heave the X-box off the ledge, but manage to time it perfectly for when the ghast 
			emerges from beneath the first level. The X-box hits it square in the back and manages
			to cave in its chest from behind. The ghast makes a sound not unlike a balloon deflating
			and is pulped into the hard floor of the Mall. The thing's head comes clean off and
			goes bouncing down the corridor\n"

			"\"Life is short,\" I say, somehow remembering what the old console's advertising slogan 
			was, \"So play hard, stinky.\""

			xbox1 is broken 
			move xbox1 to Corridor5
			remove remote_ghast
			ghast.hitpoints = -101

			ScoreArray[12] = 1

			move ghast_head to Mall_Exit


		}
		else

		{

			move object to Corridor5

			"I let it fly off the ledge, in a very Letterman-esque moment!"
		}
	}
	elseif object = perfume_bottle
	{
		
		ScoreArray[11] = 1

		if SOUND_OFF = TRUE
		{
		}
		else
		{
			PlaySound("ndmusic", "crash", sound_volume, false, true)	
		}
		
		"I toss the perfume off the ledge! It shatters, of course, releasing a giant pool of the only perfume
		that's ever really acted as an aphrodisiac on me. It'll just be my luck: whatever is rolling around down
		on the first level of the Mall will probably be coated in this stuff and give me a raging stiffie when I
		encounter it.\n"

		Corridor4 is not special
		
		remove perfume_bottle

		"The stench down there is already significantly masked by the perfume, and probably wouldn't physically
		repulse me like it would have before.\n"

		"\"Well,\" I say, \"We can probably now take the elevator down to the first floor without getting 
		sick all over each other.\""
	}
	elseif object is living
	{
		"That would be rather cruel."
	}
	elseif object is do_not_drop_off_rail
	{
		"I should probably hang onto that."
	}
	else
	{
		move object to Corridor5

		"I chuck ";
		Art(object)
		" off the rail. It hits the floor on the first level of the Mall";

		if object is breakable and not broken
		{
			object is broken 
			", and smashes apart."
		}
		elseif object is breakable and broken
		{
			", and smashes into further disrepair."
		}
		else
		{
			"."
		}
	}
		
}


routine DoThrowAtFarHallway()
{
	ScoreArray[11] = 1

	"I toss the perfume into the hallway. It shatters, of course, releasing a giant pool of the only perfume
	that's ever really acted as an aphrodisiac on me. It'll just be my luck: whatever is rolling around down
	here will probably be coated in this stuff and give me a raging stiffie when I encounter it.\n"

	Corridor4 is not special
	remove perfume_bottle

	"Anyway, the stench down there is now significantly masked by the perfume, and probably wouldn't physically
	repulse me like it would have before."
}


routine DoThrowAtStatue()
{
	ScoreArray[11] = 1
	Corridor4 is not special
	remove perfume_bottle

	"I toss the perfume bottle at the statue. It shatters, natch, and releases a giant pool of stench-killing
	fumes into the area below."
}

routine DoThrowPerfumeGeneral()
{
	ScoreArray[11] = 1
	Corridor4 is not special
	remove perfume_bottle

	"Well, all my goofing around has finally caught up with me. I throw the perfume and it goes sailing on off the ledge. It
	hits the floor below and shatters.\n"

	"(On the other hand, I imagine it smells a fair bit nicer down there.)"

	CharExclaim(Audrey, ExclaimArray[16])
}


routine Casey_Lives_1()
{

	ScoreArray[29] = 1

	cls
	
	"\nI kick open the first set of exit doors, enter the airlock-like structure (or whatever on earth its proper term is)
	and push open the second set. The sky is completely black. It's still night, and it appears that the first
	wash of daylight is still hours away.\n"

	"My friends all follow me into the parking lot. Gibs and Trott both help to carry Casey, 
	who is still in a mindless daze and completely unresponding to stimuli.\n"

	"\"We don't have \Ithat\i long for Casey,\" says Gibs.\n"

	"\"Can we get her to a hospital?\" asks Audrey. \"There's got to be one here in New Haz someplace, right?\"\n"
	"Trott shakes his head. \"I've been working in this town for a couple years now. The funding for all social
	services ended a while ago. The ambulances just drive everyone up to the Fort. Your best bet when it comes to getting 
	hurt in this city is to find some morphine or rub some dirt on it. Won't work for her, I don't think.\"\n"

	"They are all facing me, their backs turned away from the Mall. They don't see the spectre materialize behind them. They
	do see my face suddenly distort with fear and disperse based on that, though.\n"

	"I take mental inventory of all the items we've got available, decide that they are all worthless pap and begin to run away 
	when it telejumps directly in front of my path.\n"
	
	"It is holding the bag of blood I gave it earlier. It drops it at my feet.\n"

	"\"Delicious,\" it says in a horrible, baritone voice. \"Thank you.\" The spectre vanishes. I pick up the bag. It's still cold.\n"
	
	"I know that Audrey knows how, intellectually, to perform a transfusion, but I honestly can't remember if she's ever
	done it. The group slinks back together again, and I ask her.\n" 
	
	"\"Can you do a transfusion? This stuff is type O negative. That's the universal donor type, right?\"\n"

	"\"Yes. But I don't know if I can,\" she says.  \"I mean, I \Ithink\i I could. I know what to do, but it's not something that
	I've had to do on my own with a real person -- and where are we going to find a place sufficiently secluded and dark
	so that she does not disintegrate when the sun -- \"\n"

	"I recall that the video store is probably empty. \"Don't worry about that. I know where we can go.\" I take Casey's hand. It's slightly
	cool to the touch, but not quite near room temperature. Gibs and I get her into my car. Trott hops into his sled with Audrey and
	Sydney and they follow us down the street.\n"

	"We arrive at the entrance of the Academy Videos store. Gibs kicks in the front door and we take everything off
	the counter. Trott lowers the blinds and we hoist Casey up and lay her on her back.\n"

	"\"I need some tubes, and a needle, to begin with...\" says Audrey. I look down underneath the counter and find a 
	little backpack. I open it up and find, amongst some junk (a copy of \ICasablanca\i, a few bad video games
	and two hypercolor tees) a needle and some heroin. I put the drugs and other crap aside and hand the needle to
	Audrey. I take a look at the bag of whole blood, and we see that there are tubes included in the package. 
	She begins the transfusion on Casey.\n"

	PictureinText("mall", "pause01", 15, 11, true)

	pause

	cls

	"It takes about two and a half hours, but the transfusion is finally complete. Audrey used the bunch of us as nurses to
	help out the process, with Gibs leaving only for a moment to pleasure himself because he said he never found himself
	sexier. Audrey managed to deposit the ichor that was in Casey's body into the cash register, which will no doubt provide a few 
	moments of quizzical contemplation when the clerk arrives to open the store later in the day. Casey woke up and stirred 
	for a bit with the last of the vampire's blood removed from her body and opened her eyes. She gave us all a
	faint, confused smile before falling back asleep and we exploded into a rousing chorus of cheers.\n"	
	
	"Audrey and I drove Casey up to the Fort and arranged a hospital stay for her so that she could be properly looked after.
	Aside from two bite marks on her neck and the very slight dropping of her incisors, it looked like there was no
	permanent damage done. I got a chance to finally speak with Audrey when I dropped her off at home.\n"
	
	"\"You were incredible, the way you took charge and saved her before the sun came up.\"\n"
	"\"I didn't think it would work. She would have been dead or worse if it didn't.\"\n"
	"\"Well, if the sun came up when she was like that you would be set for kitty litter for a few weeks.\"\n"

	"She changed the subject. \"Did you start smoking again tonight?\" She asked completely out of concern, like she was
	on the same side as me in my attempt to quit.\n"

	"\"I went the whole night without. Why?\"\n"

	"\"Did you get those terrible cravings again? For nicotine?\" She introduced not only this question to the proceedings, but
	a very wicked little smile.\n"

	"\"Not really. I had too much to do. I think I might be cured. I don't know for certain, though.\"\n"

	"\"Well, let's find out. I can think of a very true litmus test.\" She drew me in closer as she opened
	the door and kissed me and I told her I loved her and her lips were right against my ear and she said the
	same.\n"

	"We entered her apartment and didn't even fully shut the door. The early morning melted away into a blur
	and the heat in her apartment decided to work for the first time in a month and we slept together in each
	other's arms. I could barely get the words into my head so I could remember the moment before it began
	to slip away. We were passed out together and I never wanted anything to last as much as that.\n"

	"(I didn't need the cigarette after all.)"

	Switch_Chapter(5)
}

routine Casey_Dies_1()
{

	cls

	"\nI kicked open the first set of exit doors, entered the airlock and pushed open the second set.
	I held it as all my friends made it out. The sky was completely free from clouds and had the slightest 
	hint of azure swirling within its fair blue mix. The sun hadn't yet crept up over
	the plains and scrub to the east, but it was only going to be moments before we started to see the first
	few beams.\n"

	PictureinText("mall", "pause01", 15, 11, true)

	pause

	"Audrey desperately looked for some cover from the sun for her friend. She spotted the group of the anonymously 
	parked lorries sitting in the lot and ran towards one. ";

	if bloodbag in Duffy
	{
		"I dropped the bag of blood as it had spoiled and was now useless
		for anything. ";
	}
	
	"I took Casey's hand and brought her to them. The van would give us
	a few extra seconds relief from the daylight that would kill her.\n"

	"I brushed Casey's hair away from her face. I couldn't help a tangential glance at the bite marks on her neck.
	They were terrible, fascinating... beautiful. Members of my generation have had hundreds of thousands of tattoos
	and this was more striking than any of them.\n"
	
	"\"I'm not going to give up on you, Casey,\" I whispered to her. She offered
	no response. Trott, Gibs and Sydney joined us. I tossed my keys to Trott and told him to bring my car around.
	Casey hadn't made a sound since we had left the Mall. \"I'll get some blankets for you,\" I told her. \"We'll
	cover you up, get you to a hospital, get you a transfusion...\" Audrey let out a little sound of a cry. I saw
	that her cheeks were streaked with tears. She had been so silent I hadn't noticed.\n"

	"I jumped flat-out of my skin when Casey grabbed my arm. She opened her eyes. They were blank, as if her eyes 
	had rolled to the back of her head. But she was still able to lock onto me and stare right through me.\n"

	"\"I don't want to live like this,\" she said. Her voice was so soft, but her grip -- her nails were digging
	through the sleeves of my jacket, almost breaking the skin on my wrist.\n"

	"\"I won't live like this,\" she said. \"You already all look so tempting. You, Jarret... I can't stop thinking of what it
	would be like to just take the littlest sip from you...\" She released her grip on her own. She was still in control of 
	herself, albeit barely. \"And you,\" she said, a wry smile forming on her lips as she looked up at Gibs, \"You would 
	have been \Idelicious...\i\"\n"

	"\"That's not the vampirism talking,\" whispered Gibs.\n"

	"Casey turned slightly and faced me again. \"The sun. I feel can feel it already. I won't be able to make this 
	decision tomorrow night. Tomorrow will be too late.\" She rose until she stood, giving no pause to worry about leverage or
	looking slightly awkward as she took to her feet. She hugged me. She hugged us all, one by one, until only
	Audrey was left. Casey gave her a kiss on her cheek and Audrey finally broke down. They embraced. And as terrible
	as I felt for Casey, it was killing me that my girl was having to go through the mechanics of saying
	goodbye forever to her best friend.\n"

	"\"There is no other group that I would like to spend my final moments with,\" said Casey. \"I will miss you all.\"\n"

	"I took Casey's hand and pulled her up as we climbed on top of the truck. I tried to tell her
	that I could find a way to heal her, to fix her -- that there was still time. But she was staring straight ahead. 
	The sky continued to turn brighter. We were up there for less than a minute, but it felt like I had tried to argue
	with her and talk her down for ages\n"

	"At exactly 7:21am she briefly turned to me with a sad smile and stretched her arms out as wide as they would go. I grabbed
	hold of her in an attempt to drag her down, but daylight peeked out over the horizon and instantly vaporized her. 
	She disintegrated away into a whiff of dust and only the smallest bit of her was left in my hand. Her clothes fell to
	the top of the van. I heard Audrey shriek from below. I picked up Casey's clothes and hopped down to the ground.\n"

	"I opened the passenger door to my car and directed Audrey in. The rest of us dispersed and went our separate ways. 
	I drove up to the Fort, expecting to drop Audrey off and go home. She brought me inside and together we both crawled
	into her bed. She fell asleep quickly, and within moments I was hypnotized by her rise and fall. We both slept for 
	most of the rest of the day.\n"

	"After about twelve hours I fell back into consciousness. I kissed my girl on the lips, but she only
	stirred, smiled faintly, and fell back into sleep without ever opening her eyes. In the modern mythology 
	I \Idon't\i follow, a kiss on that is supposed to wake up the girl when it's delivered by her own Prince Charming.\n"

	"It just made it all the more obvious that I've never been that guy for her.\n"
	
	"I slipped out of her room and drove myself home.\n"

	Casey.hitpoints = -101

	Switch_Chapter(5)

	
}


routine End_Game
{

	"\nI think about this for a second. The vision \Idistinctly\i showed a plus on that test. And that was definitely Audrey.
	I was just too dense to realize what Audrey was really telling me.\n"

	"\"Gibs... \IBarnaby.\i Do you think I could do your radio show with you over the net? As like a full-time job. From
	anywhere?\"\n"

	"\"Well, yeah, Duffy,\" says Gibs. \"From any city in the country. You just need to keep up on events, so if you can
	get a newspaper in Cowhump, Colorado or wherever you want to go then you'd be set. Hey, are you sure that you 
	wanna do this? It doesn't pay all that much, and -- \"\n"

	"\"I'm making $5.51 an hour currently. And I am just coming off a mediocre performance review because I can't sell stripper
	paraphernalia very well.\"\n"

	"\"Oh.\" Gibs straightens up. \"Well, we certainly pay more than that. Geez, man... did you get a set of shackles
	when you applied for this shitty job?\"\n"

	"\"Nah,\" says Trott, \"They're the worst monthly deduction. That and AARP.\"\n"

	"\"FIC?\" says Gibs.\n"

	"\"Yeah.\" Trott goes back to scanning the want-ads.\n"

	"\"I've got to make a call,\" I tell my friends. I grab the phone from the counter and head into the back room. 
	I have no easy access to a way to tell them that I'm a daddy. Somebody's father! Sweet Christ! I'm not sure why 
	Audrey didn't mention it... but I'm going to find out.\n"

	"It takes me a minute to work up the courage, but I dial Audrey's phone number. (A minute real time. Not a
	minute having-sex-with-someone time. A true, honest, minute.) Nobody answers. I get her machine and decide, 
	after four months, to finally just leave a message.\n"

	"\"Audrey... hey, look, it's Jarret. I just wanted to give you a call and see how you've been. It's been too long since 
	I've heard from you. I, ah... had a bit of an epiphany today. A customer came into the store and started giving Trott 
	and I some shit. A fight broke out. Events and situations along lines like that have pretty much been the norm in 
	this place lately.\"\n"

	"\"Anyway, look, the reason I'm calling: I took a job with Gibs in radio. I can do it anywhere. The pay isn't great, 
	apparently, and I have to interview for it still, but it's more jink than I'm getting in this cesspit of failed dreams. 
	Benji wants everyone who works for him offering lap dances to the customers. I don't even -- er, even if it 
	doesn't work out...\"\n"

	"\"Look, I know what the plus sign on the pregnancy test means. I didn't back then, honestly, but in retrospect even having 
	to ask probably speaks volumes about how prepared I was, or how serious I was taking things. We haven't spoken 
	about that night since it happened, and I would really like a chance to talk to you about it. I understand where you were 
	coming from and why you wouldn't tell me about, well, about \Bit\b and all -- I don't want to be a kid any more. 
	I just want to let you know that I am prepared to do a lot of growing up and do it very quickly. I don't 
	want you to have to go through raising a child by yourself, without me -- \"\n"

	"There's a squeak on the phone. Feedback from her ancient answering machine as she picks up the receiver.\n"

	"\"Jarret?\" It's her. Everything is unknown. I'm terrified. More nervous than I've ever been.\n"

	"\"Yeah. Hey... How are you? I, well -- \"\n"

	"\"I'm so sorry that I haven't called you back,\" she says in a nervous, rushed tone. \"I keep meaning to. I keep hoping 
	to see you on-line, but I don't. I've been so busy here, finishing up the last semester and everything.\" My God, it's 
	so good to hear her voice again. I feel like a battery getting refreshed just listening to her.\n"

	"\"Jarret... I don't know just how to tell you this. I didn't want to tell you, I didn't want to hurt you... but I had 
	an abortion three months ago. I'm so sorry that I didn't tell you and that I didn't call you, but I \Itried\i to reach 
	out to you, to get you to think about your future and our future, but you just seemed so cemented in your ways 
	that I didn't know how you'd react and I didn't want to -- \"\n"

	PlayMusic(MUSIC_STOP)

	PictureinText("mall", "pause01", 15, 11, true)

	pause

	if MUSIC_OFF = TRUE
	{
	}

	else
	{

		PlayMusic("ndmusic", "funeral", sound_volume, false, true)	
	}

	"I turn the phone off. I place it down carefully on the shelf. I gather my jacket and put on my sunglasses so Trott, Gibs
	and whatever various creatures and monsters that have wandered aimlessly into the store can't see the tears that start welling
	up and flooding my eyes and my cheeks and my face. I leave the back room and head out into the main
	section of the store. Trott's tidying up the store, getting ready to close.\n" 

	"\"You all right, man?\" asks Trott. \"What happened? You look like you saw a... \" Trott stops himself. He knows I'm somebody
	who \Ihas\i seen a ghost. \"You want to talk about it?\"\n"

	"\"Yeah... Yeah, I'm done here. Tell Benji the next time that you see him that I've quit. I'm moving. Out of state.\"\n"

	"\"Sure, man. You bet.\"\n"
	
	"Gibs claps me on the back. \"You all right? You want to go get some drinks or something?\"\n"

	"I shake my head. \"I've got a case of Mountain Dew and a bottle of vodka in my car. Call up the gang. Let's get a 
	game on. I've got about a thousand miles to think of a way to get my girl back for the final time,  
	ace an interview and then fix my life enough to make up for the all-too-soon death of my kid... that I didn't 
	even \Iknow I had\i. I've got one last free night before I become an adult and say goodbye forever to nights 
	that roll over and end when the sun has begun setting again.\"\n"
	
	"I turn off the lights and drop the gate. Gibs, Trott and I hurry on out. They have a million questions but 
	hold off on asking them, knowing it'll all come out in the gaming session to follow.\n"
	
	"They're the best friends I've ever had. They pile into my car, and I turn round to see them, all lit up in dramatic
	fashion under the floodlights. I pull out of the parking lot and leave the mall for the very last time. I smile as
	best I can under the circumstances.\n"
	
	"\"Let's go fucking play some D&D.\"\n"

	endflag = 1
	
}



routine QuipsKiller(a,x,y,z)
{
! a = number of turns till quip is killed
! x = character to have his quip killed
! y = which quip to be killed
! z = 0 to turn it off, 1 to turn it on 

	QuipsKiller_Timer		= a
	QuipsKiller_Char[a]	= x
	QuipsKiller_Quip[a]	= y
	QuipsKiller_Set[a]		= z

	!d_QuipKiller.timer = QuipsKiller_Timer
	
	Activate(d_QuipKiller)
}

daemon d_QuipKiller
{
! Note when QuipsKiller was used here
!

timer 0
}

event in d_QuipKiller
{
	self.timer++

	!print number self.timer 

	if (self.timer) = QuipsKiller_Timer
	{
		!"Killed the quip"
		SetQuip(QuipsKiller_Char[QuipsKiller_Timer], QuipsKiller_Quip[QuipsKiller_Timer], QuipsKiller_Set[QuipsKiller_Timer])
		Deactivate(self)
	}
	else
	{
		!"Didn't kill the quip."
	}
}
	



	











