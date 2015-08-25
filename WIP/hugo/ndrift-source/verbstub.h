!----------------------------------------------------------------------------
!
!           Verb Stub Routines v2.5.03.5 by Kent Tessman (c) 1995-2001
!                       for use with the Hugo Compiler
!
!----------------------------------------------------------------------------
!
! These routines provide default responses only; in most cases this amounts
! to a more colorful variation on "Try something else."  Any more meaningful
! response must be incorporated into the before property routines of the
! objects involved.  HUGOLIB.H includes this file if the VERBSTUBS flag
! is set.
!
!----------------------------------------------------------------------------

#ifclear _VERBSTUB_H
#set _VERBSTUB_H

#version 2.5

#ifclear _COMPILING_HUGOLIB
#message warning "Verb stub routines not #included; #set VERBSTUBS instead"
#else

routine DoYes
{
	"That was actually a rhetorical question."
}

routine DoNo
{
	"That was a rhetorical question."
}

routine DoSorry
{
	"No sweat."
}

routine DoUse
{
!	"\B[Be a little more specific about what you'd like ";
!	if player_person ~= 2
!		print player.pronoun #2; " ";
!	"to do with ";
!	print The(object, true); ".]\b"

	"\B[Be a little more specific about what you'd like to do with ";
	print The(object, true); ".]\b"

	
}

routine DoSmell
{
	print capital player.pronoun #1;
	MatchPlural(player, "doesn't", "don't")
	" smell anything unusual."
	return true
}

routine DoJump
{
	"That was fun, what next?"

	return true
}

routine DoWaveHands
{
!	print capital player.pronoun #1;
!	" wave";
!	MatchSubject(player)
!	".  Nothing happens."
!	return true

	print "I make like I am casting magic missile... at the \Idarkness!\i"
	return true


}

routine DoWave
{
	print capital player.pronoun #1;
	" wave";
	MatchSubject(player)
	print " "; The(object, true);
	".  Nothing happens."
	return true
}

routine DoThrowAt
{
local temp_obj

	if not xobject
	{
		"\B[Be a more specific about what
		you'd like ";
		if player_person ~= 2
			print player.pronoun #2; " ";
		"to throw ";
		print The(object, true); " at.]\b"
	}
	elseif xobject is not living
	{
!		"What exactly ";
!		if player_person = 2
!			"are you";
!		else
!			print "should "; player.pronoun #1; " be";
!		" hoping for?"

		"Nothing happens."
	}
	else
	{
		if object is throwable
		{
			! Before, the monitor is the object
			! the skeleton is the xobject

			temp_obj = object
			object = xobject
			xobject = temp_obj

			! now, monitor is xobject
			! and skeleton is the object

			DoThrowAttack(object,xobject)
		}

		else
		{

			print capital player.pronoun #1;
			" ultimately decide";
			MatchPlural(player)
			" that throwing ";
			print The(object, true); " at "; The(xobject, true);
			" isn't such a great idea."
		}
	}
	return true
}

routine DoClimb
{
	if object
	{
		print capital player.pronoun #1; 
		" can't climb ";
		print The(object, true); "."
	}
	else:  "Not here; not now."
	return true
}

routine DoSleep
{
	"Not now -- I'm not very tired."
}

routine DoPush
{
	"Pushing ";
	The(object, true)
	" doesn't get ";
	print player.pronoun #2;
	" anywhere."
	return true
}

routine DoPull
{
	"Pulling ";
	The(object, true)
	" doesn't get ";
	print player.pronoun #2;
	" anywhere."
	return true
}

routine DoKiss
{
	if object is not living
		"Hey, not all D&D geeks are romantically desperate."
	else
	{
		CThe(object)
		MatchPlural(object, "doesn't", "don't")
		" seem to share ";
		print player.pronoun #3;
		" affection."
		return true
	}
}

routine DoSwim
{
	"That doesn't seem to be possible."
}

routine DoWake
{
	print capital player.pronoun #1;
	if player_person = 1
		" am";
	elseif player is plural
		" are";
	else
		" is";
	" already awake."
}

routine DoWakeCharacter
{
	"That's probably not necessary."
}

routine DoTouch
{
	if Player is rotting
	{
		The(object, true) 
		" avoids me, unwilling to get too close."
	}
	else
	{
		"Fiddling with ";
		The(object, true)
		" probably isn't the best use of ";
		print player.pronoun #3;
		" time at the moment."
	}
}

routine DoTie
{
	"Trying to tie ";
	The(object, true)
	" doesn't get ";
	print player.pronoun #2;
	" anywhere."
}

routine DoUntie
{
	"Trying to untie ";
	The(object, true)
	" doesn't get ";
	print player.pronoun #2;
	" anywhere."
}

routine DoBurn
{
	"I can't get that to work."
}

routine DoCut
{
	"I can't seem to do it."
}

routine DoDig
{
	"I don't think that will accomplish anything."
}

routine DoYell
{
!	print capital player.pronoun #1;
!	" let";
!	MatchPlural(player)
!	"out a hearty bellow.  Nothing else happens."
!	return true

	"I scream like a banshee. Nothing seems to happen."
	return true


}

routine DoSearch
{
	if object = Player
	{
		DoInventory
	}
	elseif object is container and child(object)
		Perform(&DoLookIn, object)

!	elseif object is living 
	elseif object is living and object.conscious = 1
	{
		print CThe(object); MatchPlural(object, "doesn't", "don't");
		" let me search ";
		if object.pronouns #2
			print object.pronouns #2; "."
		else
			print object.pronoun; "."
	}
	elseif object is living and object.conscious = 0
	{
		Perform(&DoLookIn, object)
	}
	else
		"I don't find anything."

	return true
}

routine DoFollow
{
	if object = player
	{
		if speaking
			SpeakTo(speaking)
		else
		{
			if player_person = 2
				"Who are you talking to?"
			else
			{
				"It's not obvious who you want ";
				print player.pronoun #2;
				" to talk to."
			}
		}
	}
	elseif object in location
		print CThe(object); IsorAre(object, true); " right here."
	else
		print "Which way did "; object.pronoun; " go?"
}

routine DoHelp
{
	"Unfortunately, 'twould seem ";
	if player_person = 1
		"we're on our own."
	else
		"you're on your own."
}

routine DoHelpChar
{
	if object = player
	{
		DoHelp
		return
	}
	elseif object is living
	{
		"How exactly would you like ";
		if player_person ~= 2
			print player.pronoun #2;
		" to try to help ";
		print The(object, true); "?"
	}
	else
	{
		print CThe(object); IsorAre(object, true);
		" not in need of ";
		print player.pronoun #3;
		" help at the moment."
	}
}

#endif  ! _COMPILING_HUGOLIB

#endif	! _VERBSTUB_H
