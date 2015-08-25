! Character List
! 1 Jarret Duffy			Lex Gray
! 2 Barnaby Gibs			Steve Oelheim
! 3 Audrey Case				Jamie Byrnes
! 4 Brian Pang				Matthew Davis
! 5 Chet Criswell			Michael Sherwin
! 6 Tericho Briggins			Chris Monahan
! 7 Adrian Bates			Joe Mason 
! 8 Trotskie				Jonathan Blask
! 9 The Zombiebot			Jeff Kyle
!10 Sydney Drieden			Tammy Bancroft
!11 Casey				Jill Leckie
!12 Randolph				Ben Parrish
!13 Skeleton
!14 Ghoul				Mike Sherwin
!15 Shadow				Gerrit Hamilton
!16 Ghast				Ben Parrish
!17 Mummy
!18 Spectre				Bryan Sailer
!19 Vision
!20 Poltergeist
!21 Vampire				Laura Randall
!22 Zombie2 - Mall Security Zombie	Gerrit Hamilton
!23 Leary				Bryan Sailer
!24 Wraith				Gerrit Hamilton 
!25 Lum the Mad				Scott Jennings
!26 Zombiebot2				Jeff Kyle
!27 Revenant 
!28 Nurse
!29 Mouth
!30 Dead Girl


character testzero "testzero"
{
charnumber 0
maxhitpoints 100
hitpoints 100
armorclass 20
attackadjust 0
damagepotential 100
is quiet, hero

opponentpic "mall", "blank_object01"
}

! Jarret Duffy	28
! Barnaby Gibs	28
! Audrey Case	24
! Casey		22




character Barnaby "Gibs"
{
charnumber 2
maxhitpoints 50
hitpoints 50
armorclass 6
attackadjust 5
damagepotential 10

is quiet, hero, not quiet

	inherits NPC
	in Academy_Videos

	nouns "gibs" "barnaby" "gibbons" "friend" "pal"
!	parse_rank
	
	long_desc
	{
		"Barnaby Gibbons is 5'11\" tall and 175lbs, and right about my age. He has hazel eyes and brown hair. He's wearing a 
		backwards baseball cap and a Rochester Knighthawks authentic lacrosse jersey. Barnaby makes his living as the host 
		of a semi-popular sports radio show that is broadcast from two in the morning until six AM weekdays. I've known him 
		for about a decade. He was my roommate for my three semesters at Syracuse University, and always keeps me rooted back
		in reality when I've been spending too much time with role-playing games. He also has the worst taste in music of
		anybody I know." 

		if self is paralyzed
		{
			"\nHe is currently paralyzed, though this condition is temporary."
		}
	}
	before
	{
		object DoSmell
		{
			if self is not perfumed
			{
				"Gibs doesn't smell like anything in particular."
			}
			else
			{
				"Well, I hit Gibs with the perfume, so he kind of smells like that. It's quite confusing for my
				instincts, if you're digging my ditch here."
			}
		}
	}

	opponentpic 
	{
	
		select(GameEvents[74])
		case 0
			{
				current_resource_file = "mall"
				current_resource = "gibs04"
			}

		case 1
			{

				current_resource_file = "mall"
				current_resource = "gibs05"
			}
		else
			{
				current_resource_file = "mall"
				current_resource = "gibs04"
			}

		return -1
	}
}

female_character Audrey "Audrey"
{
charnumber 3
maxhitpoints 40
hitpoints 40
armorclass 6
attackadjust 3
damagepotential 3

is not quiet, hero, female

	inherits NPC

	nouns "audrey" "case" "female" "girlfriend"
	adjectives "audrey" "friend"
!	parse_rank

	long_desc
	{
		select(Chapter)
		case 0,1,2
		{
			"Audrey is... well, how can I accurately describe her? She has this Kylie Minogue thing going 
			for her and she does things constantly that just drive me crazy."
		}
		case 3,4,5
		{
			"Audrey Case is 5'5\" with a slight little fragile build. She has gorgeous, ocean-blue eyes, and is
			wearing a tight little red and black leather corset with a pair of blue jeans, industrial
			boots and choker."
		}

	}
	before
	{
		object DoTaste
		{
			"I have no complaints, ever, with that sort of thing with her, but now is hardly the time for such ribaldry."
		}
		object DoKiss
		{
			select(GameEvents[40])
			case 0
			{
				"It's not a real good time for that right now."
			}
			case 1
			{
				GameEvents[40] = 0

				"I get the sense that she is right in front of me, although facing away. I place my hand
				on her shoulder and spin her around quickly. I tilt her head the slightest bit upwards,
				briefly running my fingers through the close-cut hair on the back of her neck that 
				drives me so crazy to touch, and give her a very quick, but very intense kiss. She returns
				it in full. She's supposed to be mad at me, I'm supposed to be mad at her, but with the
				complete loss of light and power in the Mall here, we take the moment to totally not care.\n"
			
				"It's not something I could have gotten away with in light... and probably, something
				that the both of us will pretend to ignore when the lights come back."
			}
			case 2
			{
				GameEvents[40] = 0

				"I bring her to me, so glad that the wraith didn't have a chance to do any long-lasting
				damage. We embrace and I lift her chin up just a bit. We kiss and return to our hug,
				and I hope beyond words that I can keep her safe till we leave this place."
			}
			case 3
			{
				GameEvents[40] = 0

				"\"I love you, Audrey.\" I had nothing else to say.\n"

				"She begins to cry. I hope it's for good reasons, but even after all our time together I can never tell.
				I kiss her -- I kiss her everywhere. Her lips, her cheeks, her chin, her forehead... Oh, God, I just want 
				a normal, regular, non-dramatic life with this woman, I'd even take something so boring that we both get 
				diabetes from how things are; I just want to be with her for as long as possible..."
			}
			else
			{
				"It's not a real good time for that right now."
			}
		}
		xobject DoShow
		{
			if (object = safebox_lock) or (object = safebox)
			{
				if safebox_lock is not special
				{
					"\"The locks around here are probably impervious to all brute-force attacks,\" says Audrey."
				}
				else
				{
					"\"You took care of that pretty well,\" comments Audrey."
				}
			}

			else
			{
				"Audrey doesn't have a strong opinion regarding that."
			}
		}


		object DoSmell
		{
			if self is not perfumed
			{
				"She smells great, as usual."
			}
			else
			{
				"Audrey smells like the perfume \ITrue Love\i: it's a fresh, romantic fragrance with 
				a floral aroma. Or as I think of it, liquid sex in a bottle. Yum!"
			}
		}
	}

	opponentpic 
	{
	
		select(GameEvents[41])
		case 0
			{
				current_resource_file = "mall"
				current_resource = "audrey05"
			}

		case 1
			{

				current_resource_file = "mall"
				current_resource = "audrey04"
			}
		else
			{
				current_resource_file = "mall"
				current_resource = "audrey04"
			}

		return -1
	}
}



character Pang "Pang"
{
charnumber 4
maxhitpoints 40
hitpoints 40
armorclass 6
attackadjust 6
damagepotential 6

is not quiet, hero

	inherits NPC
	in Academy_Videos

	nouns "pang" "brian" "roomate" "roommate" 
	adjectives "brian"

	long_desc
	{
		"Pang used to be an athlete but he's let himself go in recent years. He's about 6'4\" tall and 270 pounds.
		He's wearing a mesh orange jersey stuffed into a pair of scrub blue jeans."
	}
	before
	{
		object DoHit, DoKick, DoShoot
		{
			if GameEvents[51] = 0
			{
				"I'm just not angry enough at Pang right now to start whaling on him."
			}
			elseif GameEvents[51] = 2
			{
				"To hell with this gonad."
			}
			elseif GameEvents[51] = 1 
			{
				GameEvents[51] = 2
				{

				ScoreArray[4] = 1

				"I knock Pang back with a wild haymaker. I only really connect because it was totally
				unexpected. I'm sure he didn't think I had it in me.\n"

				"\"Never again!\" I scream towards him. \"That's the last time!\"\n"

				"Pang feels his jaw for the raw spot and avoids making any further trouble."
				
				}
			}
			else
			{
				"Nah."
			}
		}
	}

	opponentpic "mall", "pang01"
}
	
character Criswell "Criswell"
{
charnumber 5
maxhitpoints 40
hitpoints 40
armorclass 6
attackadjust 6
damagepotential 6

is not quiet, hero

	inherits NPC
	in Academy_Videos

	nouns "chet" "criswell" "roomate" "roommate"
	adjectives "chet"

	long_desc
	{
		if GameEvents[70] = 0
		{
		"Criswell is a lanky, freaky sort who usually skulks about in the shadows. His arms are usually tattered with
		syringe marks as he is a chronic user of horse tranquilizer except for the months of spring when he plays 
		quarterback for a flag football team. He's wearing a shredded 'FREE PITTMAN' t-shirt and pair of acid-washed
		jeans. It appears as if he recently dyed his hair a fluorescent blue."
		}
		else
		{
		"All I see is hate: hate towards Criswell for being such a worthless, drugged-out little loser, hate towards
		my living conditions where I have to encounter this slime every day of my life, and hatred towards myself for
		not being able to get out of this situation where I'm surrounded by low-character scumkin like him."
		}
	}
	before
	{
	xobject DoShow
	{
		if (object = dvd_case) or (object = lotr_dvd) or (object = dvd_rings)
		{
			"\"I hate orcs,\" says Criswell."
		}

		else
		{
			"\"Hey, that reminds me of that one time I got high,\" says Criswell."
		}
	}
	object DoHit, DoKick, DoShoot
	{
		if GameEvents[51] = 0
		{
			"I'm just not angry enough at Criswell right now to start clobbering him."
		}
		elseif GameEvents[51] = 2
		{
			"To hell with him."
		}
		elseif GameEvents[51] = 1 
		{
			GameEvents[51] = 2
			{
				move drywall to Living_Room

				ScoreArray[4] = 1

				"I grab onto Criswell's battered t-shirt and throw him up against the wall. I press my hand
				up against his head and knock his skull twice against the drywall.\n"

				"\"You're garbage, Criswell,\" I say to him. \"Nothing but human garbage.\"\n"

				"I release him and he silently massages the back of his head, completely avoiding
				eye contact."
			}
		}
		else
		{
			"Nah."
		}
	}
		
			

	}
	opponentpic "mall", "criswell01"
}

character Tericho "Tericho"
{
charnumber 6

maxhitpoints 20
hitpoints 20
armorclass 5
attackadjust 5
damagepotential 8

is quiet, hero 

	inherits NPC
!	in
	
	nouns "tericho" "briggins" "teri" "terri" "terry"
	adjective "tericho"

	long_desc
	{
		"Tericho is in his early twenties, a kind of skinny kid with brown eyes and dirty blond hair. He usually tools around
		in a crumbly, old leather bomber jacket and of my three roommates is really the only one I can stand. His only annoying
		habit is that he's a little too vocal with grunting and yipping when he's playing a game on the Sega." 
	}

}

character Clerk "clerk"
{
charnumber 7

maxhitpoints 30
hitpoints 30
armorclass 5
attackadjust 5
damagepotential 7

is hero, not quiet 
	
	inherits NPC
	in Academy_Videos

	nouns "adrian" "bates" "clerk" "jerk" "bastard" 
	adjective "adrian" "video" 
	article "the" 
!	is unfriendly

	long_desc
	{
		"The clerk at Academy Videos is famous through New Haz for being one of its most smug and sarcastic
		citizens. He will always criticize a customer's movie choice unless it's one of the ten or fifteen
		films that he thinks are classic. He is wearing a hypercolor shirt like all employees in the 
		chain, as well as a pair of dirty sweatpants."
	}
	before
	{
		object DoSearch
		{
			"I don't want to get involved in this way with the clerk."
		}
		object DoHit, DoKick, DoThrowAt, DoShoot
		{
			"This clown just isn't worth it."
		}
		xobject DoShow
		{
			if (object = dvd_case) or (object = lotr_dvd)
			{
				"\"It sucked,\" says the clerk."
			}
			else
			{
				"\"Hmm!\" says the clerk. I get the idea that he puts forth the barest of efforts at his job."
			}
		}
		xobject DoGive
		{
			if object = nailgun
			{
				"The clerk pretends that the gun isn't his."
			}
			else
			{
				"The clerk isn't interested in anything I could give him."
			}
		}
	}

	opponentpic "mall", "ender02"

}

character Trott "Trott"
{
charnumber 8
maxhitpoints 35
hitpoints 35
armorclass 1
attackadjust 2
damagepotential 2

is quiet, hero

	inherits NPC
	in MallStore1

	parse_rank 2
	
	nouns "trot" "trott" "trotskie" "trotsky" "sveinsgeirdottir"
	adjectives "trott" "trotskie"

	long_desc
	{
		"Trott is a professional dungeon master -- he's mastered the rule books to all incarnations of \IDungeons and 
		Dragons\i and most other major role-playing games. He's incredibly creative and organized, and makes money on
		the side working out of his home for several different groups of gamers who book appointments for his services.
		He also works part-time at the Gaming Emporium. Trott always wears a black trenchcoat over a thick gray sweatshirt 
		because he is almost always numbed to the bone with chill."
	}
	opponentpic 
	{
	
		select(GameEvents[73])
		case 0
			{
				current_resource_file = "mall"
				current_resource = "trott01"
			}

		case 1
			{

				current_resource_file = "mall"
				current_resource = "trott02"
			}
		else
			{
				current_resource_file = "mall"
				current_resource = "trott01"
			}

		return -1
	}
}


character Zombiebot "creature"
{
charnumber 9
maxhitpoints 4
hitpoints 1
armorclass 0
attackadjust 1
damagepotential 1

is quiet, villain

	inherits NPC

	nouns "zombie" "monster" "bot" "zombiebot" "robot" "creature" "grime" "denizen" "crackhead" "cracky" "thing" "mound" "customer" "patron" "shopper"
	adjectives "zombie" "monster" "area" "filthy" "grime-encrusted" "grime-covered" 
	article "the"
	pronoun "it"

	weakness 100

	long_desc
	{
		if self.conscious = 1
		{
			"This creature is covered in a thick grit. He (it?) is draped in a musty flannel and shambles about
			with an unwholesome gait. His forearms are unnaturally long and jaundiced, and his there are several
			patches of mosiaced-over scabs and seeping wounds covering his face and neck."
		}
		else
		{
			"This creature is covered in a thick grit. He (it?) is draped in a musty flannel that hasn't been in fashion
			since Gygax was happily married to his first wife. His forearms are unnaturally long and jaundiced, and 
			his there are several patches of mosiaced-over scabs and seeping wounds covering his face and neck."
		}


	}
	before
	{
		object DoKiss
		{
			"This thing's own mother would not only discount an actual physical act of affection, but debate
			strongly at whether or not to blow a kiss."
		}
	}

	opponentpic 
	{
	
		select(GameEvents[75])
		case 0
			{
				current_resource_file = "mall"
				current_resource = "jeff01"
			}
		else
			{
				current_resource_file = "mall"
				current_resource = "blank_object01"
			}

		return -1
	}
}


female_character Sydney "Sydney"
{
charnumber 10
maxhitpoints 100
hitpoints 100
armorclass 20
attackadjust 1
damagepotential 10

is quiet, hero, female

	inherits NPC
	in MallStore3

	nouns "sydney" "" "" "" "drieden" "girl" "blond" "blonde" "syd"
	adjectives "sydney"

	weakness 100
	
	long_desc
	{
		select(GameEvents[7])
		case 0
			{
				"Sydney is a very feisty and sarcastic blonde, and close friend of Audrey's."
			}

		case 1
			{
				"I don't know how she is -- I'm still groggy from the explosion or blast or whatever that was."
			}
		case 2
			{
				DoCheckOnSydney()
			}
		case 3
			{
				"Sydney has been \Ipossessed.\i Her aura can be seen as a strong, hazy glow and her eyes have 
				turned red. She does not exist on this physical plane and cannot be touched. The air around her
				is much colder than it is elsewhere in this room. She is levitating herself just out of reach,
				and regards us all with supernatural superiority and arrogance."
			}
		case 4
			{
				"She looks lovely. She's wearing an understated dark cyan shirt and pair of matching, stylish
				sunglasses. She is free with her pretty smile and really doing well, all things considered."
			}
	}

	opponentpic 
	{
		
		select(GameEvents[7])
		case 0,1
			{
				current_resource_file = "mall"
				current_resource = "ghost01"
			}

		case 2,3
			{

				current_resource_file = "mall"
				current_resource = "ghost02"
			}
		case 4
		{
				current_resource_file = "mall"
				current_resource = "ghost03"
		}

		return -1
	}
}


female_character Casey "Casey"
{
charnumber 11
maxhitpoints 100
hitpoints 100
armorclass 20
attackadjust 1
damagepotential 10

is quiet, hero, female

	inherits NPC
	in MallStore3


	nouns "casey" "girl" "goth"
	adjective "goth"

	long_desc
	{
		"She has brown eyes and jet-black, though obviously dyed, hair. She is wearing a textbook goth outfit, complete with the
		black fingernails, eyeliner and steel-toed boots. She looks dark, mysterious, dangerous and completely off her rocker."
	}
	before
	{
		object DoSmell
		{
			if self is not perfumed
			{
				"Casey's scent is dominated by her leather jacket."
			}	
			else
			{
				"Casey smells like a cross between leather and my favorite perfume. Hot."
			}
		}
	}
	opponentpic 
	{
		
		select(GameEvents[37])
		case 0
			{
				current_resource_file = "mall"
				current_resource = "casey02"
			}

		case 1
			{

				current_resource_file = "mall"
				current_resource = "casey03"
			}

		return -1
	}

}

character Randolph "Randolph"
{
charnumber 12
maxhitpoints 40
hitpoints 40
armorclass 20
attackadjust 1
damagepotential 10

is quiet, hero

	inherits NPC
	in Corridor4

	parse_rank 10

	is hidden

	nouns "randolph" "guy" "person" "dude"
	adjectives "research" 

	long_desc
	{
		"Randolph works for the research firm at the Mall. He always wears a denim shirt and pair of pressed khakis. Even
		though he knows for a fact that I work here and therefore do not have the time to answer a few questions about
		soft drinks and movie trailers, he asks me anyway every single time. He is best avoided."
	}
	opponentpic "mall", "ben01"
}


character Skeleton "skeleton"
{
charnumber 13
maxhitpoints 30
hitpoints 30
armorclass 0
attackadjust 1
damagepotential 3

is quiet, villain
weakness 1		!blunt weapons 

	inherits NPC

	nouns "skeleton" "monster" "creature" 
	adjectives "monster" 
	article "a"
	pronoun "it"

	long_desc
	{
		"The skeleton is composed of a set of yellowing, almost chitinous human bones. Bits of disgusting,
		hardened flesh are packed between the ribs and joints, allowing it motion, albeit a slow pantomime
		thereof."

		if self.conscious = 1
		{
			"\nI recall that skeletons take one-half damage from edged weapons, but normal damage from blunt 
			weapons and fire."
		}
	}
	before
	{
		object DoTalk
		{
			"The skeleton can only communicate with struggled rasps of air through its freely open neck."
		}
	}
	opponentpic 
	{
	
		select(GameEvents[69])
		case 0
			{
				current_resource_file = "mall"
				current_resource = "skeleton01"
			}
		else
			{
				current_resource_file = "mall"
				current_resource = "blank_object01"
			}

		return -1
	}

}

character Ghoul "ghoul"
{
charnumber 14
maxhitpoints 8
hitpoints 8
armorclass 2
attackadjust 1
damagepotential 1

is quiet, villain

	inherits NPC
	in MallStore2

	noun "ghoul" "beast"
	article "the"
	pronoun "it"

	weakness 100 

	long_desc
	{
		"Ghouls are nigh-mindless (yet cunning) creatures, more beast than humanoid. This one has an extended, 
		drooling tongue, elongated as if it were pulled from deep within its throat and dislocated. ";

		if self.conscious = 1
		{
			"I had always imagined them having two eyes, but this creature has a lone socket and seeping,
			crusted eyeball protruding from it. It continually shifts its weight from leg to leg and emits
			a low gurgling.\n"

			"Ghouls attack with only their filthy claws and nails, but skin to skin contact will cause paralysis.
			They will usually endeavor to stun any opponents in their vicinity before attempting to 
			consume their collected, helpless victims."
		}
		else
		{
			"It does not appear to be 'living,' or animate."
		}
	}

	opponentpic "mall", "ghoul03"

	Before
	{
		object DoTalk
		{
			"The ghoul's first or second language probably isn't English."
		}

		object DoTouch
		{
			"The ghoul's skin will cause paralysis... it's not a good idea to try and touch it or otherwise
			let its skin come in contact with mine."
		}
		object DoKiss
		{
			if self.conscious = 1 
			{
				"I get too close to the ghoul in my attempt. It touches me, and I feel myself quickly stiffen.
				I make a half-hearted attempt to stagger backwards, towards the rest of the Mall, to little
				avail.\n"

				"On the ground, all I can do is listen. I hear Audrey's screams. I hear it viciously rip flesh.
				I hear the splatter of blood upon the cold floor tile. And I'm locked in motionless.\n"

				"There is an agonizing silence before it devours me. And I do not feel a thing. It flips me about
				as it feeds, and its hideous maw is the last thing I see...\n"

				"\IUntil only a few nights later when I look into its hollow, hungry eyes once again.\i"

				Duffy.hitpoints = -101
			}
			else
			{
				"I do so. Looks like the ghoul's paralysis attack doesn't function when it's not mentally active. Good for
				me. Good for me, except that I am sucking face with a GHOUL, I mean."
			}
		}
	}
}


character Shadow "shadow"
{
charnumber 15
maxhitpoints 40
hitpoints 40
armorclass 5
attackadjust 2
damagepotential 8

weakness 4

is quiet, villain

	inherits NPC

	noun "shadow"
	article "the"
	pronoun "it"

	long_desc
	{
		"The shadow looks as, indeed, a shadow and nothing more. It is a two-dimensional, black silhouette, depicting
		itself in a lanky, yet human, form."

		if self.conscious = 1
		{
			"\nIf I remember right, shadows take full damage from light-based and silver attacks, however light
			isn't really an option for me."
		}
	}
	before
	{
		object DoTalk
		{
			"To my knowledge, shadows can not communicate."
		}
	}
	opponentpic "mall", "shadow01"
}


character Ghast "ghast"
{
charnumber 16
maxhitpoints 30
hitpoints 30
armorclass 6
attackadjust 3
damagepotential 10

is quiet, villain

	inherits NPC

	noun "ghast" "" "survey" "guy"
	adjective "survey"
	article "the"
	pronoun "it"

	weakness 5 

	long_desc
	{
		"The ghast I unfortunately recognize -- it was formerly the guy who did the surveys on this wing of the Mall.
		He is covered in filth and exudes an almost palpable, nauseous stench (even worse than when he was alive,
		which played a large part into why he could never get laid)."

		if self.conscious = 1
		{
			"\nGhasts attack much like ghouls, in terms of using their claws and such. I can't recall if they also
			paralyze upon contact, but I don't think they do. Their poisonous stench only gets worse as they 
			move and flail about. Ghasts are completely unholy and a total abomination towards any religion 
			with its act together, even Methodism."			
		}
	}

	opponentpic "mall", "ghast01"
}


character Mummy "mummy"
{
charnumber 17
maxhitpoints 50
hitpoints 50
armorclass 17
attackadjust 8
damagepotential 8

is villain, mummylike

weakness 100

	inherits NPC

	noun "mummy"
	article "the"
	pronoun "it"

	long_desc
	{
		"It's covered in strips of treated linen, except for the face, which is exposed completely. The skin
		on its face is stretched tightly over the angular and hardened skull, which at one time,
		millennia ago, may have been handsome.\n"

		"It is dressed in dry, crisp rags that crackle with every movement. The rags look dusty, pained...
		without a hint of humidity and with no possibility of moisture.\n"

		"Modern myth indicates that mummies are riddled with diseases that cause a quick and painful rotting
		in their hosts."		

		if self is paralyzed
		{
			"\nIt appears to be paralyzed, but I have no idea for how long."
		}

	}
	before
	{
		object DoTalk
		{
			if self.conscious = 0
			{
				"The mummy can't communicate when it's defeated like this."
			}
			else
			{
				if GameEvents[78] = 0
				{
					"\"\BNo!\b \IYou\i listen!\" rasps the mummy. \"All I wanted was my rest! I craved oblivion! You \Iwould
					not let me sleep!\i I had my meal -- my one last supper! -- and my \Idarkness\i and you disturbed me! 
					Oh, foul, fleshy pustile, how you will pay! For this offense you will meld with the pain and \Irot\i until you 
					fall apart within your own hands!\""
				}
				else
				{
					"The mummy only howls in hatred."
				}
			}
		}
	}

	opponentpic "mall", "mummy01"
}



character Spectre "spectre"
{
charnumber 18
maxhitpoints 45
hitpoints 45
armorclass 15
attackadjust 10
damagepotential 15

is not quiet, neutral

in Corridor7

weakness 100

	inherits NPC

	nouns "spectre" "specter"
	article "the"
	pronoun "it"

	long_desc
	{
		"The spectre is a powerful, intangible, undead spirit consumed with hatred for those with warmth in their
		souls. Its touch drains an enormous amount of life energy, it is unaffected by silver, 'normal' iron, 
		or cold."

		if self.conscious = 1
		{
			"\nIt would be powerless in daylight, but I am obviously several hours away from any such thing.
			It may be best to just avoid and and not antagonize it."
		}
	}
	opponentpic "mall", "spectre01"

	before
	{
		object DoTouch, DoKiss
		{
			"I try to get close, but the spectre resonates extreme cold from his person... much too painfully cold to touch."
		}
		xobject DoGive
		{
			select(object)
			case bloodbag
						{
				move bloodbag to self

				ScoreArray[38] = 1 

				"The spectre looks stupidly at the bag of blood for several moments, blinking the little ovals
				on its transparent face where eyes ought to be. ";

				if Audrey is following
				{

					"I grasp Audrey's hand and ensure that she's physically behind me in case the spectre revolts. ";
				}
				else
				{
					"I take a step back just in case the spectre decides to revolt. ";
				}


				"It doesn't, however, and instead impossibly takes hold of the bag with intangible fingers.
				\"Perfect,\" it says, simply, \"I thank you.\"\n"

				"The spectre blinks out of existence."

				remove self
				CancelScript(Spectre)
			}

			case water_1
			{
				"The spectre shakes his head sadly. \"I'm not thirsty for that,\" he says. \"Not at all...\" His eyes
				narrow, his head tilts slightly to the side -- he's trying to communicate \Isomething\i to me, and
				unlike some of the other denizens of the Mall, it's not a horrible curse or disease."
			}

			else
			{
				"That's not what the spectre seems to be looking for."
			}

		}
	}

}


character Vision "vision"
{
charnumber 19
maxhitpoints 8
hitpoints 8
armorclass 8
attackadjust 1
damagepotential 1

is quiet, neutral

weakness 4

	inherits NPC

	nouns "vision" "smoke" "haze" "scene"
	adjectives "smoky" "smokey" "hazy"
	pronoun "it"
	article "the"

	long_desc
	{
		"A vision is a semi-undead monster that appeared in some of the early versions of the D&D \IFiend Folio\i. 
		It's been years since I've spent any time with that version, but I remember them being mostly benign,
		though susceptible to silver weapons."
	}
	before
	{
		object DoTalk
		{
			"Visions aren't really sentient in this manner."
		}
	}
	before
	{
		object DoTalk
		{
			"Visions aren't really sentient in this manner."
		}
		object DoHit, DoKick, DoShoot
		{
			"The vision is benign -- harmless."
		}
		xobject DoThrowAt
		{
			"The vision is harmless."
		}
	}
}


character poltergeist "poltergeist"
{
charnumber 20
maxhitpoints 100
hitpoints 100
armorclass 20
attackadjust 1
damagepotential 2

! Special denotes that Duffy knows there is a poltergeist there 
is quiet, hero, hidden, not special

in Food_Court1

weakness 100

	inherits NPC

	nouns "poltergeist" "phantom" "spirit"
	pronoun "it"
	article "the"

	long_desc
	{
		poltergeist is special 

		"Poltergeists are a form of invisible undead that whines for attention by flinging shit at people. Of all
		the creatures and spirits that make up the hierarchy of walking dead, these mewling little bitches
		are the ones I despise with the most passion. They're the worst drama queens in the underworld. In reality,
		'poltergeists' are just the manifestations of picked-on, spoiled little emo or Goth kids... I can't imagine
		what this demonically-realized little ghost brat has going on underneath the surface."		
	}
	before
	{
		xobject DoThrowAt
		{
			"The poltergeist is invisible, so I'd have no way to target it."
		}
		object DoGet
		{
			"The poltergeist cannot be taken."
		}
		object DoHit, DoKick, DoShoot
		{
			"The poltergeist is invisible, so I have no way of really tracking it. Likewise, it can't directly
			affect me with its transparent non-body."
		}
		object DoTalk
		{
			"Poltergeists can not communicate that way."
		}
	}

}


female_character Vampire "vampire"
{
charnumber 21
maxhitpoints 70
hitpoints 70
armorclass 13
attackadjust 7
damagepotential 25

is quiet, villain
in Food_Court1

	inherits NPC
	weakness 3	!Piercing

	nouns "vampire" "girl" "kali" "woman" "vampiress" "lilith"
	article "the"

	long_desc
	{
		if shades is worn
		{
			"The sunglasses allow me to look at her safely. ";

			if self.conscious = 1
			{
				"She has a gorgeous figure draped in a slight little indigo and black dress. Her beautiful
				face is made all the more stunning by the raven locks that frame it. Her eyes, which I
				would not normally be able to look into, are confident, strong... hypnotizing. Her
				reserved dress hides away her ivory skin from my admittedly hungry stare, although
				some blue veins can be found upon her person."
			}
			else
			{
				"She has a gorgeous figure draped in a slight little indigo and black dress. Such
				touching apparel hides her ivory skin from my admittedly hungry
				stare, although some blue veins can be spotted upon her. Her wonderful
				face is made all the more stunning by the raven locks that frame it, though
				they are now out of place, what with her being knocked out and all."
			}


		}

		else
		{
			if self.conscious = 1
			{
				"I can't look at her safely! I try to grab only a brief glimpse, but her eyes lock right into me and
				begin to hypnotize me! It isn't easy, but I do manage to pull away from her stare.\n"

				"(I do know that, traditionally, vampires have many different weaknesses depending on the mythology
				one happens to follow. In D&D, she would have an aversion to garlic and holy water and would not
				be able to enter any dwelling without prior invitation. Presumably, this vampire can be killed
				by a stake through her heart or direct exposure to sunlight.)"
			}
			else
			{
				"She has a gorgeous figure draped in a slight little indigo and black dress. Such
				touching apparel hides her ivory skin from my admittedly hungry
				stare, although some blue veins can be spotted upon her. Her wonderful
				face is made all the more stunning by the raven locks that frame it, though
				they are now out of place, what with her being knocked out and all."
			}		
		}
	}

	before
	{
		xobject DoShow
		{
			select(object)
			case garlic
			{
				"The vampire hisses briefly at me and retreats from the garlic. She hates it and
				is unable to go gaseous to escape it."
			}
			case cross
			{
				remove cross 
	
				"I wield the heavy cross as best I can and try to drum up a battle cry.\n"
				"\I\"Have at thee, bitch!\"\i I thrust the cross towards the vampire!\n"
				"The vampire turns gaseous before my blow can connect! She deftly reforms herself behind me.\n"
				"I feel her breath on my neck. It's not warm, not in the slightest, it just feels cold... and good...\n"
				"I turn and kick her in the gut, knocking her down. I don't touch her bare skin -- I know that would cause an 
				incredible strain on my system -- but she's away from me for now."

				vampire.peaceful = FALSE
				fight_active = 1 
			}

			else
			{
				"The vampire doesn't care about my earthly possessions -- but I could have deduced that from her
				crazy, Eastern European socialist accent."
			}	
		}
		
	}
	
	opponentpic "mall", "vampire01"
}


character Zombie2 "creature"
{
charnumber 22
maxhitpoints 16
hitpoints 16
armorclass 0
attackadjust 1
damagepotential 6

is quiet, villain, hidden

weakness 3	!piercing weapons

	inherits NPC

	nouns "zombie" "monster" "creature" "thing"
	adjectives "zombie" "mallcop"
	article "the"
	pronoun "it"

	long_desc
	{
		"The thing's face features a dramatic gaping burn wound on the forehead, presidentially presiding over a quick
		voting bloc consisting of two or three jagged teeth. It's wearing some tattered mallcop clothes, but my expert
		opinion is that the creature is in fact a zombie."		
	}

	opponentpic "mall", "zombie01"
}

character Leary "Leary"
{
charnumber 23
maxhitpoints 50
hitpoints 50
armorclass 6
attackadjust 5
damagepotential 10

is quiet, hero

	inherits NPC

	nouns "leary"

!	parse_rank
	
	long_desc
	{
		"Leary is about 5'10\", 170 lbs with black hair and brown eyes. The house that I live in is in his name. As
		far as roommates go, he's the only one I have that isn't a mewling little shitwank all of the time."
		
	}
	opponentpic "mall", "leary01"
}

character Wraith "wraith"
{
charnumber 24
maxhitpoints 30
hitpoints 30
armorclass 4
attackadjust 4
damagepotential 12

is quiet, villain

weakness 4

	inherits NPC
	pronoun "it"
	noun "wraith"
	article "the"

	long_desc
	{
		"It's a pitch black figure of ethereal composition, save for two red eyes that shine of
		hatred. Its body creates diffusion in all the low light that passes through it."
	}
	opponentpic "mall", "wraith01"
}


character Lum "customer"
{
charnumber 25
maxhitpoints 100
hitpoints 100
armorclass 10
attackadjust 10
damagepotential 15

is quiet, hero
!in EpilogueStore

	inherits NPC
	noun "customer" "lum" "scott" "jennings" "mad"
	adjectives "lum" "scott"
	article "the"

	long_desc
	{
		"The customer is a non-descript type that I've never seen in here before. He has black hair, a goatee and is casually
		perusing the aisles."
	}
}


character Zombiebot2 "customer"
{
charnumber 26
maxhitpoints 40
hitpoints 40
armorclass 0
attackadjust 1
damagepotential 1

is quiet, villain

weakness 2

	inherits NPC

	nouns "zombie" "monster" "bot" "zombiebot" "robot" "creature" "grime" "denizen" "crackhead" "cracky" "thing" "customer"
	adjectives "zombie" "monster" "area" "filthy" "grime-encrusted" "grime-covered" 
	article "the"
	pronoun "it"

	long_desc
	{
		if self.conscious = 1
		{
			"This creature is covered in a thick grit. He (it?) is draped in a musty flannel and shambles about
			with an unwholesome gait. His forearms are unnaturally long and jaundiced, and his there are several
			patches of mosiaced-over scabs and seeping wounds covering his face and neck."
		}
		else
		{
			"This creature is covered in a thick grit. He (it?) is draped in a musty flannel that hasn't been in fashion
			since Gygax was happily married to his first wife. His forearms are unnaturally long and jaundiced, and 
			his there are several patches of mosiaced-over scabs and seeping wounds covering his face and neck."
		}


	}
	before
	{
		object DoKiss
		{
			"...This thing's own mother would not only discount an actual physical act of affection, but debate
			strongly at whether or not to \Iblow\i a kiss."
		}
	}

	opponentpic "mall", "jeff01"
}


character Revenant "Revenant"
{
charnumber 27
maxhitpoints 40
hitpoints 40
armorclass 5
attackadjust 3
damagepotential 30

is quiet, neutral

	inherits NPC

	nouns "revenant" "warrior"
	pronoun "it"
	article "a"

	in Candle_Store

	long_desc
	{
		"The Revenant is about a foot taller than me, and decked out in an old, charred robe. Its face is covered in hideous burn scars, not that 
		the thing is doing itself any favors in the charisma department by wearing a constant sneer. Its fingernails are overgrown and apparently
		chewed or filed down to function as sharp claws. It breathes heavily, each gasp of air apparently being quite an effort to draw."
	}	

	opponentpic "mall", "revenant"
	before
	{
		object DoKiss
		{
			"I don't think a bi-curious kiss is going to make Snaggleface's day here any better."
		}
	}
}

female_character Nurse "zombie nurse"
{
charnumber 28
maxhitpoints 100
hitpoints 100
armorclass 10
attackadjust 100
damagepotential 100

is quiet, neutral

	inherits NPC

	nouns "zombie" "nurse" "girl" "bitch" "slut" "woman"
	adjective "nurse" "zombie"
	pronoun "it"
	article "the"

	in Security_Far


	is hidden

	long_desc
	{
		if self is not special
		{
		self is special

			"Her skin seems infected with a disease that has caused a sickly, dirty pallor. Blood has run down from her eyes and
			it looks like it has scabbed over. She certainly appears as if she were an attractive sort back when she still had
			life and found things like a sense of humor and looks as opposed to now, where it just appears to exclusively be his mind,
			or more accurately, his brains."
		}
		else
		{
			"Her skin seems infected with a disease that has caused a sickly, dirty pallor. Blood has run down from her eyes and
			it looks like it has scabbed over. She keeps slamming her fists onto the window in an attempt to get in and eat
			our brains."
		}
	}
	opponentpic "mall", "nurse01"
}


character Magic_Mouth "Magic Mouth"
{
charnumber 29
maxhitpoints 1000
hitpoints 1000
armorclass 1000
attackadjust 0
damagepotential 0

is quiet, hero

	inherits NPC

	nouns "mouth" "lips" "tongue"
	adjective "magic" "disembodied" "oversized"
	article "the"
	pronoun "it"

	in Poster_Store

	initial_desc
	{
		"\nAlongside the far wall is a set of oversized disembodied lips."
	}

	long_desc
	{
		"The Magic Mouth is a set of purple disembodied lips, measuring roughly two feet wide and a little less than a foot
		high. They are stuck on the side of the wall as if they are part of it and seem (supernaturally, natch) integrated
		within them. No discernable teeth or tongue or lungs are present, so whatever causes it to vibrate the air
		is wholly beyond me."
	}
	before
	{
		object DoGive
		{
			select (object)
			case water_1
			{
				"The mouth puckers up and avoids the water."
			}
			else
			{
				"\"Thanks,\" says the mouth, \"I'll add that right to my inventory. Wait... What?\""
			}
		}

		object DoKiss
		{
			"They are too high up for me to kiss, which is too bad, because they look DELICIOUS."
		}
	}

	opponentpic "mall" "magicmouth01"
}


female_character Dead_Girl "crucified girl"
{
charnumber 30
maxhitpoints 1
hitpoints -101
armorclass 0
attackadjust 0
damagepotential 0

is quiet, neutral

	inherits NPC

	is not special

	nouns "girl" "woman" "babe" "broad" "chick" "coed" "cupcake" "cutie" "dame" "damsel" "female" "gal" "lady" "maiden" "minx" "woman"
	adjective "crucified" "dead" "latina" "poor"
	article "the"

	in cross

	long_desc
	{
		LocationState[15] = 2

		"The crucified girl seems to be of mild Hispanic descent. Her features are slightly olive, her hair dark and her
		eyes stained all the round by blood. She is wearing a torn black tank top, blue bandana with 
		floral print, and sleek pair of tight shorts. Her build is slight -- she is probably about five foot five at most,
		with slim, athletic legs."

		if cross is not special
		{
		
		"\nThe girl's arms and right leg have been nailed to a makeshift cross, and the cross seems solidly affixed to the
		western wall. There are cuts and tears elsewhere on her body as well. ";
		}
		else
		{
		""
		}
		
		if self is not special
		{
			self is special

			SetQuip(3,50,1)
			QuipsKiller(6,3,50,0)

			"It is difficult to tell how long she has been dead, but she is not sending off a waft of stench
			or anything, currently. She looks a lot like a girl that used to work in the paint and housewares
			store that used to be here in the Mall before they closed. I remember that she was really bright,
			resourceful, helpful and was working on her four-year degree. I really hope it's not her."
		}
		else
		{
			"She has not been dead long as she is just a few degrees cooler than living human flesh ought to be."
		}
	}
	before
	{
		object DoTouch, DoKiss
		{
			if self is special
			{
				LocationState[15] = 3

				"I don't discover anything else by fooling around with the poor crucified girl."
			}
			else
			{
				LocationState[15] = 3
				self is special

				"I turn her chin slightly -- something seriously screwed with her eyes! There's no dark parts... pupils
				or whatnot. They're gone!\n"

				"She only feels a few degrees colder to my touch, so she could not have been dead long, especially
				with how cold the Mall is."
			}
		}
		object DoGet, DoMove, DoTakeOff
		{
			if cross is not special
			{
				cross is special
				"I ease the girl down from the cross and place her on the floor."

				move dead_girl to location

				cross.size = 45
			}
			else
			{
				"She's too heavy for me to lift and move around."
			}
		}
	
	}
}
