!----------------------------------------------------------------------------
!
!  Grammar for Verb Stub Routines v2.5.03.5 by Kent Tessman (c) 1995-2001
!                    for use with Hugo Compiler v2.5
!
!----------------------------------------------------------------------------
!
! This grammar file must be included along with the standard grammar file
! at the start of the game file (before any executable code); GRAMMAR.G
! does this if the VERBSTUBS flag is set.
!
!----------------------------------------------------------------------------

#ifclear _VERBSTUB_G
#set _VERBSTUB_G

#version 2.5

xverb "yes"
	*                                       DoYes

xverb "no"
	*                                       DoNo

xverb "sorry"
	*                                       DoSorry

verb "use"
	*                                       DoVague
	* object                                DoUse

verb "smell", "sniff", "inhale", "breathe"
	*                                       DoSmell
	* object                                DoSmell

verb "jump", "leap", "hop"
	*                                       DoJump

verb "wave"
	*                                       DoWaveHands
	* "hands"                               DoWaveHands
	* "to" object                           DoWaveHands
	* held                                  DoWave

verb "throw", "hurl", "toss", "pitch", "catapult", "chuck", "discharge", "fling", "flip", "heave", "let", "lob", "sling" "release"	
	*                                       DoVague
	* held                                  DoThrowAt
	* held "at" xobject                     DoThrowAt
	* held "into" xobject			DoThrowAt
	* held "on" xobject			DoThrowAt
	* held "off" ledgelike			DoDropOffLedge
	* held "over" ledgelike			DoDropOffLedge
	* held "onto" ledgelike			DoDropOffLedge
	* held "above" ledgelike		DoDropOffLedge
	* "go" "of" held "over" ledgelike	DoDropOffLedge
	* "go" "of" held "off" ledgelike	DoDropOffLedge

verb "climb"
	*                                       DoClimb
	* "in"/"into"/"inside" object           DoEnter
	* "in"/"inside"                         DoEnter
	* "on"/"onto" object                    DoEnter
	* "off"/"offof" object                  DoExit
	* "down"/"out"/"outside"                DoExit
	* "up"/"down" object                    DoClimb
	* object                                DoClimb

verb "sleep", "rest", "nap", "snooze"
	*                                       DoSleep

verb "push", "shove", "press"
	*                                       DoVague
	* "on" object                           DoPush
	* object                                DoPush

verb "pull", "yank", "tug"
	*                                       DoVague
	* "on" object                           DoPull
	* object                                DoPull

verb "kiss", "hug", "grope"
	*                                       DoVague
	* object                                DoKiss

verb "swim", "dive"
	*                                       DoSwim

verb "wake", "awake", "awaken"
	*                                       DoWake
	* "up"                                  DoWake
	* living "up"				DoWakeCharacter
	* "up" living                           DoWakeCharacter
	* living                                DoWakeCharacter

verb "touch", "feel"
	*                                       DoVague
	* object                                DoTouch

verb "tie", "attach", "fasten", "lash"
	*                                       DoVague
	* object                                DoTie
	* object "to" xobject                   DoTie
	* object "with" held                    DoTie

verb "untie", "detach", "unfasten", "unlash"
	*                                       DoVague
	* object                                DoUntie
	* object "from" xobject                 DoUntie

verb "burn", "light", "incinerate"
	*                                       DoVague
	* object                                DoBurn
	* object "with" held                    DoBurn
	* object "from" held                    DoBurn

verb "set"
	* "fire" "to" object                    DoBurn
	* object "on" "fire"                    DoBurn
	* object "ablaze"                       DoBurn

verb "cut", "slice", "chop", "sever"
	*                                       DoVague
	* object                                DoCut
	* object "with" held                    DoCut

verb "dig", "burrow"
	*                                       DoVague
	* "in"/"into" object                    DoDig
	* "in"/"into" object "with" held        DoDig
	* object                                DoDig
	* object "with" held                    DoDig

verb "yell", "shout", "scream", "bellow", "cry", "call", "holler"
	*                                       DoYell

verb "search"
	*                                       DoVague
	* "for" object                          DoVague
	* "in" object                           DoSearch
	* object                                DoSearch
	
verb "follow", "tail"
	*					DoVague
	* anything				DoFollow

xverb "help"
	*                                       DoHelp
	* "menu"				DoHelp
	* object                                DoHelpChar

#endif	! _VERBSTUB_G
