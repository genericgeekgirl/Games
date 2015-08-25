
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!Daemons
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
daemon Checking_Followers
{
timer 0
}

event in Checking_Followers
{
	select(self.timer)
	case 0:
		{
			Determine_Followers()
		}
}

daemon Academy_Daemon
{
timer 0 
}

event in Academy_Daemon
{
if Chapter = 1
{

	self.timer++
	select(self.timer)

	case 2
		{
			SetQuip(2,1,1)
			SetQuip(2,2,1)
			SetQuip(2,3,1)

			LocationState[1] = 3

			"\n\"So...\" says Gibs, as he scans the movies half-heartedly, \"You and Audrey are on the 
			rocks again, eh, Duffy? What happened this time, did she get you enrolled into MIT?\""
		}
	case 3
		{
			LocationState[1] = 2

			"\nPang clears his throat and holds up a copy of \IBlade\i. \"I have found the movie for us all tonight,\"
			he states, with an annoying authority. \"It has electronica and vampires, as all classics should.\"\n"

			"\"\IBlade?\i\" screeches Criswell. He's another one of my roommates. \"They merged techno music 
			and goths for that one. No chance. No way. And if you pick out one that merges country music with
			the French art film or opera with a Pixar kiddie flick I will drop trou and take a crap on the TV
			while it's playing.\"\n"
			
			"Criswell's only half joking, as he's demonstrated his willingness to do that before. When his favorite
			CFL football team lost in the finals last year he was so pissed off at the TV for depicting it that
			he grabbed a chair from the kitchen, got up and plopped a steaming load on top of the set. Worse, it 
			was two weeks before anyone cleaned it up. We had a veritable bumper crop of flies around the house 
			that year."
		}

	case 4
		{
			LocationState[1] = 4



			SetQuip(2,1,0)
			SetQuip(2,2,0)
			SetQuip(2,3,0)

			SetQuip(2,4,1)

			! Set the clerk's quip 
			SetQuip(7,1,1)

			if (GameEvents[4] = 0)
			{
				SetQuip(2,5,1)
			}
			else
			{
				SetQuip(2,6,1)
			}

			"\n\"OK, I'm set,\" says Criswell. \"\ITruman Show\i\. Jim Carrey is the funniest man alive. This'll be a 
			\Igem\i. Hey, Duffy, you bringin' that chick you hang around with over tonight? Well, thank me later,
			man, 'cos she'll be all out of giggles by the time you pull off your pants. For once, anyway.\"\n"

			"Barnaby idly toys with a movie and then puts it back on the shelf. \"There were some real hotties at
			that Bead Store, the other day,\" he says to me. \"Cute, but not so cute that they would have nothing to do
			with you, I mean.\""
		}

	case 5
		{
			if (DVD_case in Misc_rack)
			{
				 Activate(Academy_Idle)
			}

			"\n\"Yo, fruit loops,\" says the clerk to the lot of us, \"I'm shutting this store down to go get a
			full body massage from the Taiwanese Parlor down the street. \IPronto.\i Get your movies and get out.\"\n"

			"\"Full-body?\" asks Barnaby. \"That means they give you a hand job, right?\" The clerk perks up and nods gleefully. 
			\"Hey, I've always wondered...\" Barnaby decides exactly how he wants to phrase it. \"Is it customary to let 
			them know when you're about to come? Like, a warning? Or do you not have to do that because they are professionals?\"\n"

			"Nobody says anything for a few moments. I shrug. \"I guess it depends on whether you're a sprayer or a lumper,\"
			I say."
		}
	case 6
		{
			SetQuip(7,1,0)

			move nailgun to Academy_counter

			"\n\"Anyway, I wasn't kidding around. Get your movies and get lost,\" repeats the clerk. The clerk continues to get
			ready for his little excursion. He places his armament upon the counter."

			if (DVD_case not in Misc_rack)
			{
				"\n\"Yeah, yeah! I'm thinkin', I'm thinkin'...\" says Criswell. I'm all set, but it looks like we'll have to wait for
				him or Pang now."
			}

			
		}

	case 7
		{

			if (DVD_case in Misc_rack)
			{
				self.timer--
				return
			}
	
			else
			{

				!Get rid of their pre-zombie quotes
				SetQuip(2,1,0)
				SetQuip(2,2,0)
				SetQuip(2,3,0)
				SetQuip(2,4,0)
				SetQuip(2,5,0)
				SetQuip(2,6,0)

				SetQuip(4,1,0)
				SetQuip(5,1,0)

				SetQuip(7,1,0)


				Deactivate(Academy_Idle)

				move Zombiebot to Academy_Videos

				LocationState[1] = 7

				move muddy_streaks to Academy_Videos

				"\nA grime-encrusted area denizen slams his hand on the door and the clerk reluctantly lets him in.
				The thing shambles his way into the video store. He leaves muddy 
				streaks upon the entrance door, drawing the further ire of the clerk.\n"

				"\"Hey, what the hell is the matter with you, cracky?\" I suppose that I disagree that 
				the new denizen is a crackhead (he meanders more in his movement than he shakes, I mean). 
				But I don't say anything. The clerk points a stern finger at him from across the counter. 
				\"Can't you read? We're closed! Get out of here!\""
			}
		}

	case 8
		{
			if zombiebot.conscious = 1
			{
				"\nThe area denizen grabs at the clerk's neck! He gets two hands round the clerk's esophagus, and begins 
				choking the life right out of him!\n"

				"The clerk gurgles in pain! I hear a guttural moaning sound coming from the attacker. The violence causes 
				Pang and Criswell to hide in the back of the store.\n"
	
				"\"Hey!\" says Barnaby, \"Knock it off! Let him go!\""
			}

		}

	case 9
		{
		if zombiebot.conscious = 1
			{

				LocationState[1] = 5
	
				"\nThe grimy denizen throttles the clerk!\n"
				"The clerk slumps to the floor, disappearing behind the register counter.\n"

				Clerk.hitpoints = 0 

				Academy_Door is open
				Academy_Door is openable

				if nailgun in Duffy
				{
					"\"Shoot the goddamn thing, Duffy!\" screams Barnaby. He kicks open the door to the outside
					and gets into a defensive posture."
				}
			
				else
				{
					"\"Christ, Duffy, get the goddamn gun!\" screams Barnaby. The guy (creature, whatever it is)
					is between the gun and Barnaby. It emits a throaty snarl and slowly shambles toward him.
					Barnaby gives the door a couple solid kicks and opens it."
				}
			}


		}

	case 10
		{
		if ((zombiebot.conscious = 1) and (zombiebot in location))
			{

				LocationState[1] = 6

				"\nBarnaby takes a swing at the filthy mound. He connects to its sternum (a solid blow) but the guy / creature
				is not stunned, not driven back, not nearly phased by it at all.\n"

				"\"Shoot the damn thing, Duffy!\" yells Barnaby. \I\"Now, goddammit!\"\i"
			}

		}


	case 11
		{
		if ((zombiebot.conscious = 1) and (zombiebot in location))
			{
				"\nBarnaby takes a swing at the filthy mound. He connects to its sternum (a solid blow) but the guy / creature
				is not stunned, not driven back, not nearly phased by it at all.\n"

				"The creature gropes at Barnaby's face, tearing at it with jagged, yellowed nails.
				Barnaby's screams set off a series of cries and tears in Pang and Criswell, and I fall onto one knee, paralyzed 
				with shock and fear. The creature wraps its hands around Barnaby's skull and splits it open with
				a deft strike onto the hardwood floor. It begins to sloppily devour the spongy chunks of his brain but hardly
				finishes before noticing \Bme\b.\n"

				"I scream, I burst my own ability to hear before it pounces upon me. I am not here, I am anywhere else, how
				I believe it so.\n"

				"It feeds."

				Duffy.hitpoints = -100
			}

		}
}

return
	
}

daemon Academy_Idle
{
timer 0
}

event in Academy_Idle
{
local tempnum

	self.timer++
	select(self.timer)

	case 2
		{
			tempnum = random(3)
			if tempnum = 1
			{
				self.timer = 0
			}
		}

	case 4
		{
			self.timer = 0 

			tempnum = random(13)

			select(tempnum)
			case	1
					{
						"\nPang starts scratching the back of his pants in an incomprehensibly unattractive manner."
					}
			case	2
					{
						"\nBarnaby idly checks out the contents of one of the racks."
					}
			case	3
					{
						"\nCriswell sneezes, and wipes the residual sleaze all over one of the racks."
					}
			case	4
					{
						"\n\"Who are we waiting for?\" asks Criswell. \"Get a movie,\" he says to me."
					}
			case	5
					{
						"\nPang quickly moves away from the area that he was previously, which probably means that he generated
						some bad air."
					}
			case	6
					{
						"\nCriswell studies one of the DVDs intently."
					}

			case	7
					{
						"\nBarnaby whistles a tuneless little riff."
					}
			case	8
					{
						"\n\"This place is a dump,\" says Criswell, to nobody in particular."
					}
			case	9
					{
						"\n\"What do you know about this flick?\" says Criswell to Pang. He's holding up a copy of \IStarship Troopers.\i\n"
						"\"It's got more bugs than a tropical swamp,\" says Pang."
					}
			case	10
					{
						"\n\"I'm hungry,\" whines Criswell."
					}
			case	11
					{
						"\n\"I'm sooooooooooo hun-greeeeee,\" mewls Criswell."
					}
			case	12
					{
						"\n\"Who are we waiting for? Seriously?\" asks Criswell, to nobody specifically."
					}
			case	13
					{
						"\n\"Go get a movie,\" says Criswell to me. \"Do you have one? Go get one.\""
					}
			}
}


daemon Zombie_Gets_Back_Up
{
timer 0
}

event in Zombie_Gets_Back_Up
{
	self.timer++
	select(self.timer)

	case 3
		{
			if Zombiebot in Academy_Videos
			{
				move Zombiebot to Academy_Outside

				"\nThe thing from inside breaks through a section of the door!"

				Academy_Door is broken 
			}
			else
			{
				"\nThe creature struggles up off the ground and starts slowly pacing forwards towards me!"
			}


			Zombiebot is following

			Zombiebot.hitpoints = Zombiebot.maxhitpoints
			
		}
	case 4
		{
			Zombiebot.peaceful = false
			fight_active = 1 
		}

}


daemon Audrey_Arrives
{
timer 0
}

event in Audrey_Arrives
{

	self.timer++
	select(self.timer)

	case 3
		{
			porch_door is openable

			move Audrey to Front_Porch

			"\nThere's a knock at the door. It's probably Audrey."
		}

	case 4
		{
			if (Duffy not in Living_Room) 
			{
				"\nI call out to one of my roommates to get the door.\n"
				"\"Criswell!\" I hear a faint mumble of dependant acknowledgement.\"Can you get the door?\"\n"
				"\"It's Audrey!\" says Criswell, from the living room.\n"
				"\"Yeah, no kidding! Can you answer the door?\"\n"
				"\"Nuts to your door!\""
			}
			else
			{
				"\nThere's another knock on the door. I should probably get that."
			}

		} 

	case 5
		{
			if (Duffy not in Living_Room) and (Duffy not in child(Living_Room)) and GameEvents[3] = 0
			{
				move Audrey to Living_Room
				GameEvents[3] = 1		!Audrey let into Living_Room
		
				! Get rid of Pang's quips here
				SetQuip(4,2,0)
				SetQuip(4,3,0)

				Porch_Door is not open
				Porch_Door is not openable
				Porch_Door is locked
				Porch_Door is not lockable

				"\nI hear Audrey let herself into the Living Room. She doesn't have a key or anything;
				we don't do a very good job of locking this dump up. If anything, the city should be
				barring it from the outside so that we don't get \Iout\i."
			}
			else
			{
				! Get rid of Pang's quips here
				SetQuip(4,2,0)
				SetQuip(4,3,0)

				move Audrey to Living_Room
				GameEvents[3] = 2		!Audrey let into Living_Room

				Porch_Door is not open
				Porch_Door is not openable
				Porch_Door is locked
				Porch_Door is not lockable

				"\nAudrey lets herself into the room. (She doesn't have a key or anything, we aren't
				particularly vigilant about keeping this dump locked up.)\n"

				"\"Thanks for getting the door, jerk,\" she says. Ouch. This isn't good, I've managed
				to come off as irritating before she'd even entered the house. I usually have ten minutes
				of grace period.\n"

				"\"I was in the bathroom, brushing my hair so it would look stylish for you,\" I say
				with a shrug.\n"

				"\"It's a brush. Not a magic wand. You know... I've never met a man who was so obsessed with 
				his hair. It's sad, really. Anyway. What are we doing tonight?\""
			}

		}
	case 6
		{
			Deactivate(Audrey_Arrives)
		}
				
}


daemon Movie_Night
{
timer 0
}

event in Movie_Night 
{
	self.timer++
	select(self.timer)

	case 1
		{
			if dvd_blade in Player
			{
				"\n\"Hey, give me that,\" says Pang, as he takes the \IBlade\i DVD."
			}

			"\nPang puts the copy of \IBlade\i into the DVD player."

			move dvd_blade to dvd_player

			television.noun #6 = "movie"
			television.noun #7 = "dvd"
			television.noun #8 = "film"

		}


	case 2
		{

			LocationState[2] = 2 

			Move Criswell to Living_Room

			SetQuip(3,26,1)
			SetQuip(3,27,1)


			"\n\"What.. aw, hell, what the hell is this, Pang?\" asks Criswell, as he enters. ";

			if GameEvents[60] = 0
			{
				"\"Oh, hey, by the way, I don't think we're gonna be able to keep beers at the neighbor's house any
				longer. Someone has begun the moving-in process. Wait, did you end up getting this fucking ";
			}

			else
			{
				"\"Did you end up getting this fucking ";
			}
				
			"\IBlade\i thing? Oh, Kee-\Irist!\i\"\n"

			"I don't understand why Criswell is so against this movie. I guess I could ask him, or something, if I 
			really cared. Only I don't. I just want him gone.\n"

			"\"Just watch the movie,\" says Pang.\n"

			"\"No!\" exclaims Criswell. \"I'm gonna make The Call!\"\n"

			"\"You're not going to have a quorum,\" says Pang."

		}

	case 3
		{
			LocationState[2] = 3 

			Move Leary to Living_Room

			SetQuip(5,3,1)
			SetQuip(5,4,1)
			SetQuip(5,5,1)

			GameEvents[53] = 1

			"\nLeary walks down the stairs. He gives everyone a 'hey' and waves to Audrey.\n"
			"\"Yo, Leary, what's your take on \IBlade\i?\" asks Criswell.\n"
			"Pang's not thrilled about opinions being offered up on his choice before the opening credits are even 
			finished.\n"
			"\"Ehh,\" says Leary as he picks up the phone to make a call. \"Not my thing. Nothing personal, Panger.\"\n"
			"\"Damn fuckin' straight!\" says Criswell. \"I'm makin' the call! The Call for Ejection! Duffy? What're 
			you saying?\"\n"
			"I don't know how to go with this one. On one hand, it could mean that my movie will get played and these 
			two morons will leave out of boredom. On the other hand -- just how freaking immature am I going to come across?"
		}
	case 4
		{
			LocationState[2] = 4 

			SetQuip(5,3,0)
			SetQuip(5,4,0)
			SetQuip(5,5,0)

			SetQuip(3,26,0)
			SetQuip(3,27,0)

			SetQuip(3,28,1)
			SetQuip(3,29,1)

			GameEvents[53] = 0


			move dvd_blade to Living_Room_Table
			!move dvd_truman to Living_Room_Table

			"\n\"The thumb points down, bitchkin!\" says Criswell to Pang. It was inevitable that he was going to
			pull the movie no matter what popular choice happened to be. Criswell hops over to the DVD player 
			and ejects the disc. ";

			if dvd_truman in Player
			{
				"He takes \The Truman Show\i DVD from me. ";
			}
			else
			{
				"He places \IThe Truman Show\i in. ";
			}
			
			move dvd_truman to dvd_player

			"\"We're now starin' down the barrel of a whole lotta giggles,\" he says to Audrey.\n"

			"I keep one eye trained underneath the sofa in case Audrey's rolling eyes pop out of her head.\n" 
			"\"What are you talking about?\" she says. Audrey has never, ever liked Criswell. \"This is a drama, not a ninety
			minute episode of 'White Guys Gone Jostling.'\" Criswell's head strains to the side as he simultaneously doesn't
			believe her and doesn't comprehend her.\n"
			
			"Audrey continues. \"You know what drama is, right? It's the name given to a movie that \Badults\b tend to 
			enjoy, as well as being the standard root cause of every Linkin Park song.\"\n"			

			"\"Yeah, whatever.\" Criswell shrugs. \"I bet you Truman here is making like he's talking out of his ass 
			before the opening credits are finished.\""
		}

	case 5
		{
			SetQuip(3,28,0)
			SetQuip(3,29,0)

			SetQuip(3,30,1)

			LocationState[2] = 5 

			GameEvents[53] = 1

			"\nFive minutes elapse. The only possession Criswell has left is the dumbfounded look upon his face.\n"
			
			"Minute seven comes and Pang can't help himself any longer.\n"

			"\"You stupid, simple... \Ichild\i,\" he says, quietly. \"Next week go get \IGood Will Hunting\i -- Robin 
			Williams is hilarious in it.\" Pang points his thumb down." 
		}

	case 6
		{
			LocationState[2] = 6 

			SetQuip(5,2,0)


			move dvd_truman to Living_Room_Table
			move dvd_rings to dvd_player

			"\nLeary turns around from his phone call and squints a bit at the TV. He chuckles, points his own thumb down for a second 
			and then turns back away from the living room. Pang wiggles the Vecna's Hand toy around with its thumb pointing down in
			order to taunt Criswell just a bit more.\n"

			"Pang gets up to change the movie.\n"

			"He places in \ILord of the Rings\i, apparently without really recognizing what it is. The intro starts. Audrey lets out a
			sigh. I have no idea if I'm correctly interpreting it, but I'm guessing that she's resigned herself to at least watching the
			movie on the TV screen.\n"
			"\"What the shit is this?\" asks Criswell. \"More fuckin' ghouls and orcs and shit?\""
		}

	case 7
		{
			LocationState[2] = 0

			move Pang to Living_Room

			blue_couch is hidden, quiet

			! Criswell and Pang can be hit now 
			GameEvents[51] = 1 

			! Make it so that Duffy can't vote no from here on out
			GameEvents[53] = 0

			Pang is not hero
			Criswell is not hero

			SetQuip(3,30,0)

			SetQuip(4,4,1)
			SetQuip(4,5,1)

			SetQuip(5,6,1)
			SetQuip(5,7,1)

			move Audrey to Duffy_Bedroom

			Audrey is hidden

			remove Leary

			"\nPang and Criswell both put their thumbs down as Leary leaves.\n"
			"\"What are you two doing?\" I ask. \"There aren't any other movies. We didn't get any.\"\n"
			"\"Someone has forgotten our massive porn collection,\" says Pang, matter-of-factly.\n"
			"\"Oh, for Heaven's sake,\" says Audrey. She gets off the couch and leaves the room, heading towards my 
			bedroom. Not, I should say, in a 'let's go make out' way or a 'we need to talk' way but in a pre-emptive 
			strike on a fight way.\n"
			"\"What's her problem?\" asks Criswell, to Pang. \"We've got chick-on-chick stuff.\"\n"
			"I've got a fairly high boiling point, but I've absolutely had it with these two. The frustrations 
			concerning the fact that my bad decisions and sloth have forced me into this decision boils right over. 
			I decide it's time to probably let them have it."

			television.noun #6 = ""
			television.noun #7 = ""
			television.noun #8 = ""
		}
}

daemon Audrey_Leaves_Bedroom
{
timer 0
}

event in Audrey_Leaves_Bedroom
{

	self.timer++
	select(self.timer)

	case 1
		{
			GameEvents[32] = 1

			move Audrey to Living_Room

			GameEvents[67] = 1

			remove Leary

			Bedroom_Door is open
			Bedroom_Door is not locked
			Bedroom_Door is not lockable 
			Bedroom_Door is openable

			SetQuip(4,4,0)
			SetQuip(4,5,0)

			SetQuip(5,6,0)
			SetQuip(5,7,0)

		}

	case 2
		{
			! Have her exclaim because of what Criswell is doing to the tv

			! Put the up the colorless version of Duffy's Room
			LocationState[4] = 2

			! Put up the picture of Criswell crapping on the TV 
			LocationState[2] = 7

			CharShout(Audrey,ShoutArray[2])

		}

	case 3
		{
			! Have her leave the room

			if location = Living_Room
			{
				"\nAudrey opens the door to the Front Porch, leaves, and slams it behind her."
			}

			else
			{
				"\nI hear the Front Porch door slam. I can't imagine what Criswell and Pang did to upset
				her."
			}

			remove Audrey

			Porch_Door is open
			Porch_Door is openable
			Porch_Door is not locked
			Porch_Door is not lockable

			GameEvents[16] = 1 
		}

	case 4	{ 
			! Have Criswell laugh, have Duffy get angry
			! This denotes that Duffy can leave if he wants

			GameEvents[16] = 1 


		}
}


daemon Cold_Counter1
{
timer 0
}

event in Cold_Counter1
{
	self.timer++
	select(self.timer)

	case 1
		{
			GameEvents[24] = 1
		}

	case 2
		{
			if big_gulp in GameStore_Counter
			{
				GameEvents[24] = GameEvents[24] + 1
			}
		}

	case 3
		{
			if big_gulp in GameStore_Counter
			{
				GameEvents[24] = GameEvents[24] + 1
			}
		}

	case 4
		{
			if big_gulp in GameStore_Counter
			{
				GameEvents[24] = GameEvents[24] + 1
			}
		}
	case 5
		{
			if big_gulp in GameStore_Counter and GameEvents[24] >= 3
			{

				GameStore_counter_lock is special
				GameStore_counter_lock is open
				GameStore_counter_lock is not locked 
				
				if Duffy in MallStore1
				{
					"\nI hear a 'pop' sound come from near the counter."

					CharExclaim(Trott, ExclaimArray[2])
				}
			}

			else

			print number GameEvents[24]
		}
}
			

daemon Lights_Go_Out
{
timer 0
}

event in Lights_Go_Out
{

	self.timer++
	select(self.timer)

	case 2
		{
			if SOUND_OFF = TRUE
			{
			}
			else
			{
				PlaySound("ndmusic", "castlethunder", sound_volume, false, true)	
			}

			"\nThere is a strong shock of sound from above! It roars as if lightning struck directly above the Mall!"

			CharExclaim(Audrey,ExclaimArray[2])

			SetQuip(3,34,1)
			GameEvents[40] = 1 

			!move vecna_hand to Player

			if Audrey not in location
			{
				CharExclaim(Barnaby, ExclaimArray[29])
			}

			"\nThe lights go out in the Mall!"

			SetQuip(2,20,1)
			SetQuip(3,46,1)


			Corridor1 is not light
			Corridor2 is not light
			Corridor3 is not light
			MallStore1 is not light
			MallStore2 is not light
			MallStore3 is not light

			location is not light

			LocationState[12] = 2 
			LocationState[7] = 2 

			FindLight(location)
			
		}
	
	case 4
		{
			! Kill the quip talking about the lights going out to be safe 

			SetQuip(3,34,0)
			GameEvents[40] = 0

			Corridor1 is light
			Corridor2 is light
			Corridor3 is light
			MallStore1 is light
			MallStore2 is light
			MallStore3 is light

			location is light

			FindLight(location)

			LocationState[12] = 1
			LocationState[7] = 1			

			"\nThe lights come back on, albeit it slightly dimmer than before."

			SetQuip(2,20,0)
			SetQuip(2,46,0)
		}
}


daemon Ghost_Summons
{
timer 0
}

event in Ghost_Summons
{
	self.timer++
	select(self.timer)

	case 2 {
			if location ~= MallStore3
			{
				self.timer--
			}
			else
			{
				Barnaby is not following
				Audrey is not following 

				"\nCasey and Sydney hold each other's hands along the edge of the pentagram. I give Gibs
				a nudge and a thumbs-up sign."

				CharExclaim(Casey,ExclaimArray[1])
	
				CharExclaim(Barnaby,ExclaimArray[3])

				! Remove Casey and Sydney's initial greeting quips 

				SetQuip(11,5,0)
				SetQuip(10,1,0)
				SetQuip(10,2,0)
			}
		}
	
	case 3	{
			if location ~= MallStore3
			{
				self.timer--
			}

			else
			{
				"\nThe blonde (Sydney) gets Audrey, Gibs and Casey situated just how she wants them. \"I
				memorized the passage we need to incant,\" she says to them. \"You, the new guy, just 
				don't speak out of turn. There are four names you need to remember. They are Nysrogh,
				Verin, Valafar and Cyramoir. We say them in an order based on just who we are trying
				to raise. Can you remember those names?\"\n"

				"\"He's a sports geek,\" says Audrey, \"He can remember the average number of cup adjustments 
				a player for the Nukes makes in a game -- He can remember this.\"\n"

				"\"I'll be fine,\" beams Gibs."
			}
		}

	case 4	{
			if location = MallStore3
			{
				"\nThe girls and Gibs continue the summoning ritual..."

				DoSummoningRitual()

				if GameEvents[6] ~= 1				! essentially, if Bead_computer is not special
				{
					self.timer--
				}
			}
			else
			{
				self.timer--
			}
		}
}


daemon Summoning_Aftermath
{
timer 0
}

event in Summoning_Aftermath
{
	self.timer++
	select(self.timer)

	case 1
		{
			if Ghost_Summons.timer <= 4
			{
				SetQuip(11,5,0)
				SetQuip(10,1,0)
				SetQuip(10,2,0)

				Deactivate(Ghost_Summons)

				GameEvents[7] = 1	! Sydney's state (not concerned with her)
				GameEvents[68] = 1


				"\nThere is a sudden and quick flash of fire and light a second after the cable 
				lands on the floor!\n"
	
				"A deafening boom accompanies it -- the five of us fall right to the floor."

				ScoreArray[5] = 1

				Move Player to BeadStore_floor
			}
			else
			{
				SetQuip(11,5,0)
				SetQuip(10,1,0)
				SetQuip(10,2,0)

				ScoreArray[5] = 1

				"\nThe girls and Gibs start their little seance with the cord right in the middle of
				the pentagram.\n"

				"There is a sudden and quick flash of fire as Sydney invokes the name of the first 
				demon. A deafening boom follows -- the five of us fall right to the floor!"
			}
		}

	case 2	{
			LocationState[3] = 6

			"\nGibs stirs for a bit, and gives everyone in the room a look of disgusted confusion. He leaves a
			rather pregnant pause. He finally gives his own comment on the explosion: \"What... \Ithe fuck\i...
			was that?\n"

			"Audrey slowly picks herself up off the ground. I crawl over towards her. \"Did you...\" she starts.
			She sees the cable in the middle of the floor.\n"

			"\"That was incredible!\" says Casey, as she gets up and dizzily staggers around.
			\"We \Ihave\i to do that again!\""
		}
	
	case 3	{
			GameEvents[7] = 2	! Sydney's state (not concerned with her)
						! change the photo to sydney
						

			! Allow Duffy to check on Sydney by talking to her. 
			SetQuip(10,3,1)

			LocationState[3] = 7

			"\nAudrey, Gibs, and Casey are all up after the knockdown. Sydney is still down and out, though.\n"

			"\"Syd?\" asks Audrey. \"You okay? Syd?\" Audrey picks up the serial cable from the floor. \"Oh, no...\"
			she stumbles back as if something cut her legs out from underneath her. She knocks her head up against
			the counter and slumps to the ground without displaying a bit of evidence that she felt any pain. She
			stares ahead, so vacant..."

			"\nShe snaps out of it. She looks up to me. \"Jarret... \" She swallows -- hard. \"I think we summoned something.
			I think we summoned a \Ighost.\i\""

			"\nIf anyone else had said it at any other time I would have began a sarcastic riff. But she's not kidding around.
			\"Are you okay? Did you hurt your head at all -- \" She shakes her head in the negative. \"Look, I'll check
			on Sydney, OK? Just relax, just stay still for a second...\" Sydney is the only one still unconscious."
		}
}


daemon Set_Skeleton_Article
{
timer 0
}

event in Set_Skeleton_Article
{
	self.timer++
	select(self.timer)

	case 3
		{
			Skeleton.article #1 = "the"

			! While I have a chance, I'll change the pic to one of Sydney levitating 
			LocationState[3] = 10

			! Also, change it so that the lights are off in the Mall. 
			LocationState[12] = 3 

			LocationState[7] = 3
		}
}

			
daemon Gibs_Duffy_Leave_Mallstore3
{
timer 0
}

event in Gibs_Duffy_Leave_Mallstore3
{
	self.timer++
	select(self.timer)

	case 2	{
			! Get rid of this quip no matter what 
			SetQuip(2,14,0)

			! Used when "the plan" has been done 
			GameEvents[45] = 1 

			if Duffy in Corridor3 and GameEvents[43] = 0 
			{
				CharExclaim(Barnaby,ExclaimArray[4])
			}
		}
}


daemon Bead_Store_Ejection
{
timer 0
}

event in Bead_Store_Ejection
{
	self.timer++
	select(self.timer)

	case 2
		{
			if Player in MallStore3
			{
				"\nIt's really cold in here."
			}
			else
			{
				Deactivate(Bead_Store_Ejection)
			}
		}
	
	case 3
		{
			if Player in MallStore3
			{
				"\nThe cold begins to really sting. It's too cold to stay in here, so I scatter back outside the 
				Bead Store."

				MovePlayer(Corridor3)

				if Audrey is following
				{
					move Audrey to Corridor3
				}

				if Casey is following
				{
					move Casey to Corridor3
				}
				if Barnaby is following
				{
					move Barnaby to Corridor3
				}

				Deactivate(Bead_Store_Ejection)
			}
			else
			{
				Deactivate(Bead_Store_Ejection)
			}
		}
}


daemon Zombie2_Appears
{
timer 0
}

event in Zombie2_Appears
{
	self.timer++
	select(self.timer)

	case 2	{
			! For the door
			GameEvents[47] = 1 

			! For the zombie-behind-plant graphic
			if GameEvents[50] = 0
			{
				GameEvents[50] = 1 
			}

			move Zombie2 to backoffice_hall3
			Zombie2 is not hidden
			Zombie2 is villain
			
			! Don't want to make the second zombie unpeaceful just yet -- it is supposed to attack Gibs first. 
			! So I will "cheat" and make the Zombie not attack Duffy at first even if he attacks Gibs. 

			Zombie2.peaceful = true

			BO_Hall3_door is not open
			BO_Hall3_door is locked

			move lacrosse_stick to Barnaby

			SetQuip(2,16,0)
			SetQuip(2,17,0)
			SetQuip(2,18,0)

			if GameEvents[50] ~= 2
			{
				"\nSomething emerges from behind the plant!"

				if SOUND_OFF = TRUE
				{
				}
				else
				{
					PlaySound("ndmusic", "yeargh", sound_volume, false, true)	
				}
			}

			if lacrosse_stick in Player
			{
			"\n\"What the fuck is that?\" says Gibs. \"Jesus -- look out, Duffy!\" Gibs rips the lacrosse stick from my hands. 
			The resident light disappears as the door closes and locks with a click and I can only make out a quick 
			glance of the creature before us before we're enveloped in complete darkness.\n"

			"Gibs takes a roundhouse swing at the creature with his stick. He doesn't connect, though. The creature 
			emits a hoarse groan. I can hear it shuffling closer."
			}
			else
			{
			"\n\"What the fuck is that?\" says Gibs. \"Jesus -- look out, Duffy!\" Gibs rips the lacrosse stick from the 
			doorjamb. The resident light disappears as the door closes and locks with a click and I can only make out a quick 
			glance of the creature before us before we're enveloped in complete darkness.\n"

			"Gibs takes a roundhouse swing at the creature with his stick. He doesn't connect, though. The creature 
			emits a hoarse groan. I can hear it shuffling closer."
			}


			if LocationState[8] ~= 4
			{
				LocationState[8] = 2
				UpdateGraphicsWindow(location)
				system(31)
				LocationState[8] = 3 
				UpdateGraphicsWindow(location)
			}
		}

	case 3	{
			LocationState[8] = 3 

			if Zombie2.conscious = 1
			{			
				"\n\"Get me some goddamn light!\" shouts Gibs. I hear him struggle a bit more. \"Hit this fucking thing!\" I hear
				Gibs begin to gurgle and choke.\n"
			}

			else
			{
				Zombie2.hitpoints = 8
				"\nThe creature -- it \Imust\i be a zombie -- slowly regains its footing with an extended,
				animated jerkiness. Almost as if it's being willed back into life."

				"\n\"Get me some goddamn light!\" shouts Gibs. I hear him struggle a bit more with the zombie. 
				\"Hit this fucking thing, Duffy!\"\n"
				
				"\"I did!\" I exclaim.\n"

				"\"Hit it fucking harder!\" Gibs begins to gurgle and choke with the zombie's hands around his neck.\n"

			}

			Zombie2.peaceful = true

			"Gibs's lacrosse stick falls to the floor -- Gibs never managed to get a shot at the creature with it.\n"

			move lacrosse_stick to BackOffice_Hall3

			"Waves of stench emit from the creature; it's some sort of dead fish and carrion stink that forms a 
			nigh palpable cloud in the room."
		}
	
	case 4	{
			if Zombie2.conscious = 1
			{
				"\nThe creature screams deeply and Gibs's arms flail about, knocking me to the side. I make 
				out Gibs slumping to the ground as he's let go. The thing turns with sudden quickness before
				beginning to shamble towards me with arms outstretched and awkwardly groping for me..."		

			}

			Barnaby.hitpoints = 0 

			Zombie2.peaceful = false
			fight_active = 1 	
		}
}
 
			
daemon Trott_Unlocks_Door
{
timer 0
}

event in Trott_Unlocks_Door
{
	self.timer++
	select(self.timer)

	case 10	{
			if BO_Hall4_door is locked
			{
				BO_Hall4_door is not locked
				
				"\nThe door to the Security Room makes a \"klitch!\" sound." 
			}
		}
}


daemon Nurse_Screeches
{
timer 0
}

event in Nurse_Screeches
{
	local chance_of_screech, screech_constant, randnumber01

	screech_constant = 8		! Screech 8% of the time they are in the room

	chance_of_screech = random(100)
	while chance_of_screech = GameEvents[63]
	{
		chance_of_screech = random(100)
	}
	GameEvents[62] = chance_of_screech

	if chance_of_screech <= screech_constant and Player in Security_Room
	{
		randnumber01 = random(10)
		select(randnumber01)
		case 1:
			{"\nThe zombie nurse screeches from the other side of the window!"}
		case 2: 
			{"\nThe zombie nurse slams an open palm up against the window."}
		case 3:
			{"\nWe hear a faint, hoarse, wheezing sound come from the undead nurse."}
		case 4:
			{"\nThe nurse picks up the pace a little and starts really slamming her fists against the window."}
		case 5:
			{"\nI catch the nurse staring right at me."}
		case 6:
			{"\nThe nurse really begins to salivate, and it trickles down her little mouth."}
		case 7:
			{"\nThe zombie lets out a faint, hungry groan."}
		case 8:
			{"\nThe nurse whales away at the glass. I give it the finger."}
		case 9:
			{"\nWe hear an empty wail coming from the nurse on the other side."}
		case 10:
			{"\nThe nurse becomes slightly agitated and hits the window."}
	}
		

}


daemon Casey_Disappointed
{
timer 0
}

event in Casey_Disappointed
{
	self.timer++
	select(self.timer)
	
	case 4
	{
		if MallStore2 is not visited
		{
			if Player not in Corridor2
			{
				self.timer--
			}
			else
			{
				if GameEvents[64] = 0
				{
					GameEvents[64] = 1
					CharExclaim(Casey, ExclaimArray[3])
					SetQuip(11, 7,1)
					SetQuip(11, 8,1)
				}
			}
		}
		else
		{
			Deactivate(self)
		}
	}
}


daemon Ghoul_Appears
{
timer 0
}

event in Ghoul_Appears
{

	self.timer++
	select(self.timer)

	case 1
		{
			if GameEvents[21] = 0
			{
				GameEvents[21] = 1
				CharShout(Barnaby,ShoutArray[1])
				CharShout(Audrey,ShoutArray[1])
			}			
		}

	case 2 
		{
			if Player not in MallStore2
			{
				self.timer--
			}

			else
			{
				Ghoul is not hidden

				if ghoul.peaceful = TRUE
				{
					"\nThe beast is content, for the moment, to look back between his prey and his attacker. 
					I know that at any moment it is going to choose one of them to attack first."			
				}
				else
				{
					if ghoul.conscious = 1
					{
						"\nWell, the ghoul no longer seems to be much interested in Audrey or Gibs. I think I
						pissed it off, or whatever the equivalent is for a mindless beast presumably without a
						genuine temper."
					}
				}
				
			}
		}
	
	case 3 
		{
			if ((ghoul.conscious = 1) and (ghoul in location) and (ghoul.peaceful = TRUE))
			{
			"\nGibs attacks the ghoul!\n"
			"Gibs throws a punch at the thing and connects against its bare jaw. Gibs's body begins to seize 
			up. \IIt's the paralysis,\i I think to myself. \IHe's going to be stiff and unable to defend 
			himself in another second.\i"

			SetQuip(2,11,0)

			Barnaby is paralyzed

			}
		}

	case 4
		{
			if ((ghoul.conscious = 1) and (ghoul in location) and (ghoul.peaceful = TRUE))
			{
			"\nA throaty screech escapes from Gibs, but is quickly cut off by the freezing of his own lungs. 
			The ghoul turns its full attention to him for a moment, attempting to piece together within its
			rotting brain if Gibs is faking or succumbing to stiffness and helplessness..." 
			}
		}

	case 5 
		{
			if ((ghoul.conscious = 1) and (ghoul in location) and (ghoul.peaceful = TRUE))
			{
			"\nThe ghoul seems satisfied that Gibs isn't going anywhere, as it quickly turns (faster
			than I ever thought it could), to its cornered prey. Audrey. Confident in the situation,
			it approaches her in spastic, jerky lurches, until she is frozen not by its touch but by
			her own fear...\n"

			"I don't have long now. He's going to kill her in another moment."
			}
		}

	case 6
		{
			if ((ghoul.conscious = 1) and (ghoul in location) and (ghoul.peaceful = TRUE))
			{
			"\nThe ghoul slashes her with its filthy nails Most of the right side of her face is torn. She 
			hits the wall hard and falls hard to the floor. She doesn't have the mobility or any control
			over her own body, she cannot fight him off... it sees her not as a person (it has \Inever\i 
			seen her as such, only as a toy right for tearing and tattering) and rends her into chunks and
			strips with its teeth. I hear the bones break in her fragile, perfect little body and my eyes
			cloud over with tears, she is food, now, nothing more...\n"

			"It comes for me. And I can remember nothing further.\n"

			"\IUntil, after a horrible, dreamless sleep, I see it again and silently pronounce it \Bmaster.\n\i"			

			Duffy.hitpoints = -101
			}
		}


		
}


daemon Vision_First
{
timer 0
}

event in Vision_First
{
	self.timer++
	select(self.timer)

	case 2
		{
			move vision to MallStore4
			"\nA bit of smoke and haze begins to form against the eastern wall." 

			SetQuip(3,41,0)
			SetQuip(3,42,0)

		}
	
	case 3
		{
			LocationState[5] = 1
			"\nAudrey looks over to the east wall. \"What do you think... what is that, Jarret?\" she whispers.\n"
			"I can't quite tell at first, but as the haze beings to form more familiar shapes, it starts to dawn on
			me.\n"

			"\"It's a vision,\" I tell her.\n"

			"Displayed on the west wall of the Jewelry Store is a scene. I can make out Gibs and Audrey clearly...
			there seems to be one or two other figures moving in the background.\n"

			"\"That's a scene from that tournament we went to, isn't it?\" asks Audrey."

			SetQuip(3,43,1)

		}
	case 4
		{
			SetQuip(3,37,1)
			SetQuip(3,38,1)

			SetQuip(3,43,0)

			LocationState[5] = 2

			remove vision

			GameEvents[57] = 1

			"\nAudrey continues to look at the vision. The scene takes on a greater contrast, with muted blues
			smeared together in fog with darker earth colors.\n"
			"\"Why... what's up with Gibs giving you a thumbs-up sign? This vision takes place from your perspective,
			doesn't it?\"\n"
			"\"I just made what was my sixth straight saving throw. He gave me a thumbs-up because I was using
			loaded dice.\"\n"
			"\"What?!\" says Audrey, and then instantly brings her voice down a couple levels due to the wraith.
			\"What the hell do you mean, you were \Iusing loaded dice?\i\"\n"
			"\"I ordered some red 20 sided dice before the tourney over the Internet. They were weighted to give out
			mostly 18s, 19s and 20s. What? What's the big deal? That was years ago!\"\n"
			"\"Ssh!\" Audrey puts her hand over my mouth. \"The big deal is that the Tourney is where we met! Do you
			think I would want to go out with you if you were cheating everybody in the room?\"\n"
			"\"Oh come on, don't start this bullshit. It wasn't like I was at DragonCon or something. Christ!\"\n"
			"\"No. You weren't. You were cheating your friends. That makes it worse, you know.\""
		}
	case 5
		{

			GameEvents[25] = 1	! OK for the shadow to now appear

			"\nThe ether(?) that makes up the vision dissipates completely and it completely disappears."

			if silver_comb in purse
			{
				if GameEvents[58] = 0
				{
					"\n\"Look,\" I say to Audrey, \"Let's keep our eye on the prize, okay? There's a wraith stopping
					us from getting out of the Mall and leaving this store. Let's see if there's anything here
					that can be useful in killing it.\"\n"

					"\"Sure,\" she says. \"Just be quiet. If either one of us yells, that thing will start floating
					over here.\""
				}
				else
				{
					"\n\"Look,\" I say to Audrey, \"Just trust me. The wraith'll be coming, but I've got an
					idea on how to stop it.\" She nods her head, taking what I have to say completely on
					faith. It occurs to me that I really hope something opens up for me when that thing
					arrives."
				}
			}

			LocationState[5] = 0
		}		
}


daemon Vision_Second
{
timer 0
}

event in Vision_Second
{
	self.timer++
	select(self.timer)

	case 2
		{
			move Vision to location

			
			if Player in Candle_Store
			{
				"\nA bit of smoke and fog begins to form against the southern wall." 
			}

			else
			{
				"\nA bit of smoke and fog begins to form towards the south." 
			}
				
		}
	
	case 3
		{
			remove Vision

			SetQuip(3,33,1)

			"\nAnother vision appears before us. It shows a slender hand over a sink holding a one of those
			card pregnancy tests.\n"

			"The vision quickly pulls back, revealing Audrey in a bathrobe and her hair in towel. I think that
			I saw the card show a 'plus' sign before the vision ended. The only thing is... I have no idea what
			plus represents. Pregnant? Not expecting? Gender? I don't have a lot of experience in this sort
			of thing."
		}
}


daemon Shadow_Appears
{
timer 0
}

event in Shadow_Appears
{
	self.timer++
	select(self.timer)

	case 1
		{
			if GameEvents[25] = 0
			{
				self.timer--
			}
		}

	case 2
		{
			SetQuip(3,37,0)
			SetQuip(3,38,0)
			SetQuip(3,39,0)	
			SetQuip(3,40,0)	


			! Audrey gives up looking "Does silver work versus Wraiths or not?"
			! Audrey is up against the wall
			"\nAudrey sits herself up against the east wall of the store."

			CharExclaim(Audrey, ExclaimArray[7])
		}

	case 3
		{
			! The Shadow appears, Duffy warns her, can throw the comb or hit it
			! If he gave the comb to Audrey, she'll use it 

			move Shadow to MallStore4

			"\nI took a look over towards the wall that Audrey is leaning up against. The shadow
			that she should be throwing is nowhere near the one that is present.\n"

			"\"Audrey,\" I whisper, \"Do not move. You're not casting a proper shadow. I -- \"\n"

			"\"What?\" she asks. She moves away from the wall, and sure enough, the light that she
			should be blocking is completely inconsistent with what's there."

		}

	case 4
		{
			if Shadow.conscious = 1
			{
			! The Shadow drains Audrey

			"\nThe shadow jumps from the wall!\n"

			"The shadow points a long, tapered finger onto Audrey's neck. She freezes up as it sucks the
			strength from her body."
			}

		}

	case 5
		{
			if Shadow.conscious = 1
			{
			
			"\nThe shadow continues its touching of Audrey... her eyes begin to close."
			}
			
		}

	case 6
		{
			if Shadow.conscious =1
			{
			"\nThe shadow continues to drain strength from Audrey. It's completely blank and featureless, but
			I somehow sense a smile from it."
			}
		}
	
	case 7
		{
			if Shadow.conscious = 1
			{
			! Shadow drains Audrey, kills Duffy

			"\nAudrey falls over to the floor, completely drained of strength.\n"

			"The shadow darts about the room, and I am unable to track it.\n"

			"And then, without a sound or a breath, I feel my own strength leave me through
			the back of my neck. I fall to my knees and collapse in a heap when I have nothing further to 
			give."

			Duffy.hitpoints = -101
			}
		}
}


daemon Wraith_Approaches
{
timer 0
}

event in Wraith_Approaches
{
	self.timer++
	select(self.timer)

	case 2
		{
			if wraith.conscious = 1
			{
			LocationState[5] = 6		! jewelry_store02

			"\nI hear a voice, strangely disembodied, but one I instinctively know is coming from the wraith.\n"

			color LIGHT_CYAN

			"\"oh delightful maiden this will be a wonderful meeting will it not and you seem oh so achingly 
			warm and tight and I really only want to get close to you for only a moment do not you see how
			wonderful oh how wonderful that will be my darling...\"\n"

			color TEXTCOLOR
			
			"The wraith never really stops its sending, but instead meanders about a couple different themes. What 
			he's going to do to my girlfriend being one of them. (With all the guys who have tried to steal my
			girlfriend over the years, I finally feel I am on somewhat familiar territory.)\n"

			"The wraith glides a bit closer to the entrance of the Jewelry Store. ";
			
			if Player in MallStore4 
			{
				"It is already several degrees colder in here."
			}
			else
			{
				""
			}

			kiosk is not locked
			kiosk is open 

			SetQuip(3,44,0)
			SetQuip(3,45,0)

			}

		}

	case 3
		{
			if wraith.conscious = 1
			{
			move wraith to MallStore4
			remove remote_wraith

			LocationState[5] = 3		! jewelry_store02

			safebox_lock is special
			safebox is not locked

			if Player in MallStore4
			{

			"\nThe wraith glides further; it's now within the Jewelry Store, but still a fair ways away from 
			Audrey.\n"

			"The lock to the safebox pops.\n"

			"It continues its raving, more in my head than not:\n"
			}

			else
			{
			"\nI hear something nearby pop.\n"

			"The wraith continues its raving directly into my head:\n"
			}

			color LIGHT_CYAN

			"\"your death will be so pleasing my love I promise that getting there will be quick and painless
			I am the only one you can trust you know I will always be there for you and never leave your side
			you and I there isn't a thing that we wouldn't be able to do together my lovely witch princess all
			it takes is for you to just sit still that is it just another few moments and I will be there and
			we will be together so wonderfully so wonderfully it will be so wonderful..."

			color TEXTCOLOR
			}
		}

	case 4	{
			if wraith.conscious = 1 
			{
			!open the safebox

			"\nThe wraith sends another meandering rhyme to me..."

			color LIGHT_CYAN

			"\n\"let me tell you of our wonderful death my darling,\" mentally continues the wraith, \"you cannot begin
			to imagine the wonders that we will see together everything you could ever want everything that has been
			out of your reach well it is not out of mine it is not out of ours let me ask you this my darling a simple
			question take all the time in the world just answer me truthfully... have you ever wanted to fly?\""

			color TEXTCOLOR

			}



		}

	case 5
		{
			if wraith.conscious = 1 
			{
			!look in the safebox

			LocationState[5] = 5 

			if Player in MallStore4
			{
			"\nThe wraith inches closer to Audrey...\n"

			"Amazingly (to me at least) I see Audrey enraptured by the wraith and she actually nods her head a little
			in response to its question. It takes all my self-control to not attack the fucking \Inothing\i with my
			bare hands.\n"
			}

			else
			{
			"\nThe wraith continues its sending...\n"
			}

			color LIGHT_CYAN

			"\"of course you have there is no shame in admitting such a thing let me tell you my darling just how wondrous
			it is to float above this city this world this plane with nothing holding you down and nothing keeping you
			from doing what you want to do being who you wish to be you will see oh how you will see it will not be 
			long now my darling just hold yourself I will be there and we will be together...\""

			color TEXTCOLOR
			}

		}

	case 6
		{
			if wraith.conscious = 1 
			{
			!get the rings

			if Player in MallStore4
			{
			"\nThe wraith moves until he is directly in front of Audrey. I won't have much time now.\n"
			}

			else
			{
			"\nThe wraith continues ranting:\n"
			}

			color LIGHT_CYAN

			"\"hold still my darling this is so much easier when you just stay there so beautifully within
			my own view...\""

			color TEXTCOLOR
			}
		}

	case 7
		{
			!throw the rings

			if wraith.conscious = 1
			{

				if Player in MallStore4
				{
					"\nThe wraith holds Audrey in place."
				}
			}


		}
	
	case 8
		{
			!fuck-up turn

			if wraith.conscious = 1
			{

				if Player in MallStore4
				{
					"\nA cheshire smile crosses the wraith's transparent face. Audrey's shoulders begin to sag. An encompassing
					frown spreads across her face."
				}
			}
		}
	case 9
		{
			if wraith.conscious = 1
			{

			! Update Duffy's picture
			GameEvents[14] = 5
			UpdateFaceWindow(Duffy)

			if Player in MallStore4
			{
			"\nThe wraith rips open Audrey's corset. It is somehow able to exist and not exist within this plane
			of reality at the exact same time. Most of Audrey's pretty little body is exposed. The rage within
			me builds and I try so hard to direct it properly but the wraith is just in such control...\n"

			"All the sending it did to me infected my head. It got to me. I don't want to listen or do its
			work or have it be my master, but it's exactly that way.\n"

			"The wraith places its transparent hands underneath Audrey's shoulders and picks her up. It commands
			me not to move. I'm stuck in place. The wraith extends a horrible tentacle from its mouth -- a sick,
			red tongue -- and flicks one of Audrey's nipples in front of me. She swoons, or he makes her swoon,
			one or the other.\n"

			"The wraith sets her down. She's ethereal like he is now. But mindless. He approaches."
			}

			else
			{
			"\nI feel the room get much colder. I turn and see the wraith behind me."
			}

			color LIGHT_CYAN

			"\n\"she's mine now, fleshbag and will be until I tire of her which will be sooner rather than later you
			should know I won't have half the patience for her that you would and did even though she is completely
			mindless oh and her body the warm body that you snuggled up against all those nights did I mention that
			it is gone ah ha yes I sucked the warmth right out and added to my own and sustained my life I did I sustained
			my life for just a little while longer that's what she was there for look at her, look at her fleshbag,
			do you see? I trust that you do I trust that you see her half-naked one last time because you I have no ";
			"use for while she will serve me as a brainless slave minion and giving me the only sort of pleasure
			the undead can have which is command I hope it hurts you I hope it hurts to embrace oblivion knowing
			that slut can't feel anything other than what I allow her to I trust before you wink into nothingness
			you know that I got the better of you and I got the better of your little whore and with that, fleshbag,
			I'm off watch me till the last of the heat leaves your body... I command you to watch...\"\n"

			color TEXTCOLOR

			"And the last images that enter my mind are those that the wraith creates."
		

			Duffy.hitpoints = -101
			}
		}
}	


daemon Luck_With_Elevator
{
timer 0
}

event in Luck_With_Elevator
{

	self.timer++
	select(self.timer)

	case 1
		{
			Barnaby is not paralyzed

			"\nBarnaby and Casey come up to us as we leave..."

			CharExclaim(Barnaby, ExclaimArray[9])
		}
}


daemon Ghast_Jpg_Changes
{
timer 0
}

event in Ghast_Jpg_Changes
{
	self.timer++
	select(self.timer)

	case 2
		{
			if ghast.conscious =1 and fight_active = 1

			LocationState[16] = 2
		}
}


daemon Poltergeist_Attacks
{
timer 0
}

event in Poltergeist_Attacks
{

local tempnumber, tempnumber2, tempnumber3, i, c, j, z, polt_damage, polt_tohit, x, living_counter, y

	self.timer++
	select(self.timer)

	case 1
		{
			z = 0 

			!"Poltergeist is attacking!"

			tempnumber = random(100)
			! 97% chance it shoots something 

			if tempnumber < 97
			{
				living_counter = 0 
				y = 0 

				for x in Food_Court1
				{
					y++
					
					if x is living
					{
						living_counter++
					}
				}

				if y = living_counter
				{
					Deactivate(Poltergeist_Attacks)
					{
						GameEvents[36] = 1 

						LocationState[17] = 1

						ScoreArray[34] = 1

						"\nThere doesn't seem to be anything for the Poltergeist to throw at me... it's
						probably possible for me to get by it and get into the other section of the Food
						Court now."
					}
				}

				for i in Food_Court1
				{
					
					c++
	                        }

	                        if c ~= 0
		                {
					! Select one of the items at random
					tempnumber2 = random(c)

					!print "tempnumber2 is ";
					!print number tempnumber2

					for i in Food_Court1
					{
						j = i
						!print "The name of the item is... ";
						!print j.name

						z++

						if tempnumber2 = z and j is not living and j ~= poltergeist and j ~= Player
						{
							if poltergeist is not special
							{
								GameEvents[33] = GameEvents[33] + 1

								if GameEvents[33] = 4
								{
									poltergeist is special 

									"\nThere's got to be a poltergeist in the Food Court
									somewhere. I can't think of anything else offhand that
									would cause this stuff to fly around."
								}

								tempnumber3 = random(4)

								""

								select(tempnumber3)
								case 1
									{
										if j is not plural
										{
											CArt(j)
											" is drawn up from the floor and thrown at me!"
										}
										else
										{
											CArt(j)
											" are drawn up from the floor and thrown at me!"
										}

									}
								case 2
									{
										"Something roughly picks up ";
										Art(j)
										" and throws it at me!"
									}
								case 3
									{
										if j is not plural
										{
											CArt(j)
											" wobbles a bit, and is suddenly hurled at me!"
										}
										else
										{
											CArt(j)
											" wobble a bit, and are suddenly hurled at me!"
										}

									}
								case 4
									{
										if j is not plural
										{
											CArt(j)
											" comes flying right at me!"
										}
										else
										{
											CArt(j)
											" come flying right at me!"
										}
									}
							}

							else
							{
								tempnumber3 = random(4)

								""

								select(tempnumber3)
								case 1
									{
										"The poltergeist hurls ";
										Art(j)
										" at me!"
									}
								case 2
									{
										
										"The poltergeist picks up ";
										Art(j)
										" and throws it towards me!"
									}
								case 3
									{
										CArt(j)
										" wobbles a bit... after a moment, the poltergeist
										chucks it over towards where I am."
									}
								case 4
									{
										CArt(j)
										" comes flying right at me!"
									}
							}

					if j is not living and j ~= poltergeist and j ~= Player and j is not hero
					{
						polt_tohit = random(20)
						polt_tohit = polt_tohit + poltergeist.attackadjust

						if polt_tohit >= Player.armorclass
						{
							polt_damage = (random(poltergeist.damagepotential))
							Player.hitpoints = ((Player.hitpoints) - polt_damage)

							""
							CArt(j)
							" strike";
							
							if j is not plural
							{
								"s";
							}
							" me, and I take a little bit of damage."

							LocationState[17] = 0
						}

						else
						{
							"\nI dodge the item, though."

							LocationState[17] = 0
						}
					}
						}
				}
			}
		}

			self.timer = 0
			}
}
	

daemon Reset_Nutrition_Store_Graphic
{
timer 0
}

event in Reset_Nutrition_Store_Graphic
{
	self.timer++
	select(self.timer)

	case 2
		{
			LocationState[9] = 0
		}
}


daemon Water_Flows_Away
{
timer 0
}

event in Water_Flows_Away
{
	self.timer++
	select(self.timer)

	case 3
		{
			if Parent(water_1) is container and Parent(water_1) is not Player
			Deactivate(self)
		}
	case 4
		{
			if water_1 in Player
			{
				"\nThe water flows through my fingers."
				remove water_1
				Activate(Replenish_Fountain)
			}

			if Parent(water_1) is not container and Chapter ~= 5
			{
				"\nThe water flows away and disappears."
				remove water_1
				Activate(Replenish_Fountain)
			}
		}
}


daemon Replenish_Fountain
{
timer 0
}

event in Replenish_Fountain
{
	self.timer++
	select(self.timer)
	case 3
		{
			move water_1 to fountain

			if Player in Corridor6 or Player in Fountain
			{
				"\nA little more water trickles into the fountain."
			}
		}
}


daemon Revenant_Speaks
{
timer 0
}

event in Revenant_Speaks
{
local i

	i = random(20)

	select(i)
		case 1
			{
				CharExclaim(Revenant, ExclaimArray[1])
			}
		case 6
			{
				CharExclaim(Revenant, ExclaimArray[2])
			}
		
		case 10
			{
				CharExclaim(Revenant, ExclaimArray[3])
			}
}


daemon Mummy_Agitated
{
timer 0
}

event in Mummy_Agitated
{
	self.timer++
	select(self.timer)

	case 1
		{
			move coffin_lid to Nutrition_Basement3

			LocationState[10]= 1 

			"\nThe sound of stone scraping against stone permeates the thick air as the coffin lid begins to slide
			off."

			coffin is open
		}

	case 2
		{
			if Player in Nutrition_Basement3
			{
				"\nI see two bandaged hands slowly emerge from darkness. They grope at the sides of the coffin.
				A figure rises, I see first the unwrapped, rotting head and then the torso, wound tight with
				stinking fibers and rags.\n"
   
				"\IThe mummy turns its head directly towards me.\i"
			}
			else
			{
				"\nThe sound is so soft, but I hear something brush up against the coffin walls. I... I can't
				bear to turn my head and look at what it is."
			}
		}

	case 3
		{
			move mummy to Nutrition_Basement3

			if Player in Nutrition_Basement3 and mummy.conscious = 1
			{
				"\nThe mummy exits the coffin."

				"\nThe mummy slowly begins to moan, seemingly within a weary, endless pain.
				It quickly shifts this to a scream. Its keen is of a deep tenor, and it begins thrashing about.
				Small scraps of deteriorating bandages fall from its person and onto the floor."
				
				"\nThe mummy strikes the support beam! Chunks of the ceiling fall downwards and it sounds as if the
				entire Mall has collapsed a little."
			}

			else
			{
				"\nThe mummy lets loose with a slow moan from what I perceive is an endless pain."

				"\nI hear what I presume is its fists strike something solid; the wall, the coffin, the beam... 
				I'm not quite sure what, but whatever it is, it didn't put up much resistance."
			}

			mummy is not hero
			mummy is villain
			mummy.peaceful = false
			fight_active = 1 
		}
	case 4
		{
			if Player in Nutrition_Basement4
			{
				mummy is not following
				self.timer--
			}
			elseif Player in Nutrition_Store
			{
				Deactivate(self)
			}
			else
			{
				self.timer--

				if mummy.conscious = 1 and mummy is not paralyzed
				{
					mummy is following
					mummy.peaceful = false
					fight_active = 1
				}
				else
				{
					Deactivate(self)
				}
			}
		}
}


daemon Mummy_Awakens
{
timer 0
}

event in Mummy_Awakens
{
	self.timer++
	select(self.timer)

	case 1
		{

			if GameEvents[61] = 1
			{
				Deactivate(self)
			}

			else
			{
						move coffin_lid to Nutrition_Basement3

				LocationState[10] = 1

				"\nI hear metallic stone sliding up against metallic stone coming from the next room."
	
				coffin is open
			}
		}
	case 2
		{
			
			if GameEvents[61] = 1
			{
				Deactivate(self)
			}

			else
			{
				if Player in Nutrition_Basement3
				{
				"\nI see two bandaged hands slowly emerge from darkness. They grope at the sides of the coffin.
				A figure rises, I see first the unwrapped, rotting head and then the torso, wound tight with
				stinking fibers and rags.\n"
   
				"\IThe mummy turns its head directly towards me.\i"
				}
				else
				{
				"\nThe sound is so soft, but I hear something brush up against the coffin walls. I... I can't
				bear to turn my head and look at what it is."
				}
			}
		}
	case 3
		{
			move mummy to Nutrition_Basement3

			if Player in Nutrition_Basement3 and mummy.conscious = 1
			{
				"\nThe mummy exits the coffin."

				"\nThe mummy slowly begins to moan, seemingly within a weary, endless pain.
				It quickly shifts this to a scream. Its keen is of a deep tenor, and it begins thrashing about.
				Small scraps of deteriorating bandages fall from its person and onto the floor."
				
				"\nThe mummy strikes the support beam! Chunks of the ceiling fall downwards and it sounds as if the
				entire Mall has collapsed a little."
			}

			else
			{
				"\nThe mummy lets loose with a slow moan from what I perceive is an endless pain."

				"\nI hear what I presume is its fists strike something solid; the wall, the coffin, the beam... 
				I'm not quite sure what, but whatever it is, it didn't put up much resistance."
			}

			mummy is not hero
			mummy is villain
			mummy.peaceful = false
			fight_active = 1 
		}
	case 4
		{
			if Player in Nutrition_Basement4
			{
				mummy is not following
				self.timer--
			}
			elseif Player in Nutrition_Store
			{
				Deactivate(self)
			}
			else
			{
				self.timer--

				if mummy.conscious = 1 and mummy is not paralyzed
				{
					mummy is following
					mummy.peaceful = false
					fight_active = 1
				}
				else
				{
					Deactivate(self)
				}
			}
		}
}

daemon Mummy_Becomes_Unparalyzed
{
timer 0
}

event in Mummy_Becomes_Unparalyzed
{
	self.timer++
	select(self.timer)
	case 8
		{
			CharExclaim(Mummy, ExclaimArray[1])
		}
	case 10
		{
			CharExclaim(Mummy, ExclaimArray[2])
		}
	case 11
		{
			CharExclaim(Mummy, ExclaimArray[3])
			mummy is not paralyzed
		}
}


daemon Rotting_Disease
{
timer 0
}

event in Rotting_Disease
{
	self.timer++
	select(self.timer)

	case 3
		{
			if Duffy is rotting
			{
				"\nThere's a flash of pain right where the mummy first struck me."
			}
			else
			{
				Deactivate(self)
			}
			
		}
	case 7
		{
			if Duffy is rotting
			{
				"\nThere's a dull, raw ache on the left side of my jaw. I try to rub it away, but it doesn't help."
			}
			else
			{
				Deactivate(self)
			}

		}
	
	case 9
		{
			if Duffy is rotting
			{
				"\nMy right hand has started to throb, and I take a closer look at it -- it's starting to blacken a little bit.
				I suspect this is from the mummy."
			}
			else
			{
				Deactivate(self)
			}


		}
	case 11
		{
			if Duffy is rotting
			{
				"\nMy hand has begun to rot away."
			}
			else
			{
				Deactivate(self)
			}

		}
	
	case 14
		{
			if Duffy is rotting
			{
				"\nThe rotting sickness has spread to my body."
			}
			else
			{
				Deactivate(self)
			}

		}
	
	case 18
		{
			if Duffy is rotting
			{
				"\nThere's a dull, raw ache on the left side of my jaw. I try to rub it away, but it doesn't help."
			}
			else
			{
				Deactivate(self)
			}
		}

	case 21
		{
			if Duffy is rotting
			{
				if Audrey is following or Audrey in location
				{
					"\nI collapse to the floor. The pain all over my body has gone from a throbbing that I
					can deal with to sharp, sudden piercings of agony... Audrey sees me fall. She comes
					to my side.\n"

					"I lash out to keep her away. I see her talking to me, pleading to get up and get better,
					but my ears don't pick up the sound. I try to move my hands up to clear them, but there's
					just molding and seeping sacs of pus where my ears once were.\n"

					"I try to tell her to stay away and to burn me so that I infect no one else, but I can't make
					the words escape. She cradles me in her arms anyway. I am up against her cool body, she is
					stroking my forehead with her hands. I shift. My right arm begins to separate and cracks off
					into my jacket. Everything feels so warm, this fever is terrible...\n"

					"Libson couldn't even count. Dramatics of that hit and that round couldn't save it! Ha! 
					Who could choose to slinking over abounds and hell? Hell! one lake algae flash seventeen
					flash future flash nothing release cradling holding still eyes \BNO\b not oh hope flash
					flash dice die die flash nothing ... \Inothing\i"

					Duffy.hitpoints = -101
				}
				else
				{
					"\nI collapse onto the floor, jamming my head against the ground. I don't feel a thing. I feel
					numb all over. The pain that ran through my body has gone from a tolerable throbbing to
					sharp, sudden piercings of agony... \n"

					"I lash out, thinking I see Audrey, hoping to keep her away. I remember her cradling me in her
					arms in the morning when we slept together, her placing two fingers over my temple and just
					stroking until things became calm again and the dreams went away. I can't produce an escape,
					I can't find anything to slather over my body and make this terrible rotting go away. My
					wrists begin to separate from my arms, my legs and thighs feel disjointed... everything is
					so goddamn hot, this fever...\n"

					"Narc never like this release gibson dramatics and saving and slather and jars upon jars and
					bars and hell like this oh to swim one last time. future nothing and a release obituaries,
					the ink the dry \BNO!\b no oh no not like this and one die left flash...\n"

					"\Inothing...\i"

					Duffy.hitpoints = -101
				}

			}
			else
			{
				Deactivate(self)
			}
		}
}
			

daemon Casey_Becomes_Vampire
{
timer 0
}

event in Casey_Becomes_Vampire
{
	self.timer++
	select(self.timer)
	case 6
		{
			"\n\"I don't think Casey has a lot of time,\" says Gibs. \"I don't remember as much D&D crap as you do, Duffy, but
			I'm thinking she has maybe fifteen minutes.\""
		}

	case 30
		{
			CharExclaim(Barnaby,ExclaimArray[17])
		}

	case 50
		{
			CharExclaim(Barnaby,ExclaimArray[18])
		}

	case 70
		{
			CharExclaim(Barnaby,ExclaimArray[19])
		}

	case 90
		{
			CharExclaim(Barnaby,ExclaimArray[20])
		}

	case 110
		{
			CharExclaim(Barnaby,ExclaimArray[21])
		}

	case 120
		{
			CharExclaim(Barnaby,ExclaimArray[22])
		}

	case 130
		{
			CharExclaim(Barnaby,ExclaimArray[23])
		}

	case 140
		{
			CharExclaim(Barnaby,ExclaimArray[24])
		}

	case 150
		{
			GameEvents[39] = 1
			CharExclaim(Barnaby,ExclaimArray[25])
		}
}

daemon Banshee_Appears
{
timer 0
}



daemon Gibs_On_Radio
{
timer 0
}

event in Gibs_On_Radio
{

	self.timer++
	select(self.timer)

	case 1:
		{
		"\n\"-- joining us, we're talking about baseball, spring training in particular. Caller, Greeley, you're
		on the air.\"\n"

		"Hey, it's Gibs's show. He must have finally got that evening time slot he'd been gunning for.\n"

		"\"Hi Gibs, thanks for taking my call.\"\n"
		"\"You're welcome. What's your take on the rash of pitchers throwing at batters?\""
		}
}

daemon Zombiebot_Returns
{
timer 0
}

event in Zombiebot_Returns
{
	self.timer++
	select(self.timer)

	case 2:
		{
		move Zombiebot2 to EpilogueStore

		LocationState[20] = 2

		"\nA strangely familiar and altogether repulsive customer shambles into the store."
		}

	case 3: 
		{

		"\nThe customer projects a hideous snarl!"

		Zombiebot2.peaceful = false
		fight_active = 1 	
		}

	case 4:
		{

			move Barnaby to EpilogueStore

			"\nGibs enters the store from outside. He spies the creature flailing away at me. 
			\"What's been happening, gents?\" he exclaims."

			LocationState[20] = 3

			if pole not in player
			{
				Zombiebot2.hitpoints = 0 
				fight_active = 0 

				"\nGibs rips the stripper pole from the wall!\n"
				"Gibs whacks the creature with the stripper pole!\n"
				"The creature crumples into a heap and falls down on top of itself onto the floor."
			}
			else
			{
				Zombiebot2.hitpoints = 0 
				fight_active = 0 

				"\nGibs rips the stripper pole my hands!\n"
				"\"Hey, that's \Imine!\i\" I shriek!\n"
				"Gibs whacks the creature with the stripper pole!\n"
				"The creature crumples into a heap and falls down on top of itself onto the floor."
			}
		}

	case 5: 
		{

			LocationState[20] = 4

			"\n\"Whew,\" says Gibs. \"This store really does replicate the fantasy gaming experience.\""
		}

}




