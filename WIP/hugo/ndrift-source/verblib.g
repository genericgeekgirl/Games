!----------------------------------------------------------------------------
!
!         Hugo Verb Grammar v2.5.03.5 by Kent Tessman (c) 1995-2001
!                    for use with Hugo Compiler v2.5
!
!----------------------------------------------------------------------------
!
! All verb grammar must be defined or included at the start of a game file,
! before any objects or executable code.
!
!----------------------------------------------------------------------------

#ifclear _VERBLIB_G
#set _VERBLIB_G

#version 2.5

!----------------------------------------------------------------------------
! NON-ACTION VERBS:
!----------------------------------------------------------------------------

#ifclear NO_XVERBS

xverb "restore", "resume"
	*                                                       DoRestore
	* "game"/"story"                                        DoRestore
	* "game"/"story" "file"					DoRestore

xverb "save", "suspend"
	*                                                       DoSave
	* "game"/"story"                                        DoSave
	* "game"/"story" "file"					DoSave

xverb "script", "transcript", "transcription"
	*                                                       DoScriptOnOff
	* "on"/"off"                                            DoScriptOnOff

#ifclear NO_RECORDING
xverb "record"
	*                                                       DoRecordOnOff
	* "on"/"off"                                            DoRecordOnOff

xverb "playback"
	*                                                       DoRecordOnOff
#endif

xverb "quit", "q"
	*                                                       DoQuit
	* "game"                                                DoQuit

xverb "restart"
	*                                                       DoRestart
	* "game"                                                DoRestart

xverb "brief", "normal"
	*                                                       DoBrief

xverb "superbrief", "short"
	*                                                       DoSuperBrief

xverb "verbose", "long"
	*                                                       DoVerbose

xverb "display"
	*                                                       DoDisplay
	* "wide"/"tall"                                         DoDisplay

xverb "wide", "tall"
	*                                                       DoDisplay

xverb "score"
	*                                                       DoScore

xverb "music"
	* "on"							DoMusicOn
	* "off"							DoMusicOff

xverb "sound"
	* "on"							DoSoundOn
	* "off"							DoSoundOff

#ifclear NO_UNDO
xverb "undo"
	*                                                       DoUndo
#endif

#endif  ! ifclear NO_XVERBS

!----------------------------------------------------------------------------
! ACTION VERBS:
!----------------------------------------------------------------------------

#ifclear NO_VERBS

!
! For looking and examining:
!

verb "look", "l"
	*                                                       DoLookAround
	* "in"/"inside" container                               DoLookIn
	* "on" platform                                         DoLookIn
	* "at" object                                           DoLook
	* "out"/"through" object                                DoLookThrough
	* "under"/"underneath"/"beneath" object                 DoLookUnder
	* "beside"/"behind"/"around" object                     DoLookUnder
	* "over" object						DoLookOver
	* object                                                DoLook

verb "examine", "x"
	*                                                       DoVague
	* object                                                DoLook


!
! For waiting around:
!

verb "wait", "z"
	*                                                       DoWait
	* "for" anything                                        DoWaitforChar
	* "until" number                                        DoWaitUntil
	* "until" "turn" number                                 DoWaitUntil
	* number                                                DoWait
	* number "minutes"/"turns"/"turn"/"minute"              DoWait
	* "for" number "minutes"/"turns"/"turn"/"minute"        DoWait


!
! For moving around:
!

verb "north", "n", "south", "s", "east", "e", "west", "w", \
	"southeast", "se", "southwest", "sw", "northwest", "nw", \
	"northeast", "ne", "up", "u", "down", "d", "in", "out", \
	"inside", "outside"
	*                                                       DoGo

verb "go", "walk"
	* "to"/"in"/"into"/"inside"/"through" object            DoEnter
	* "out" object                                          DoGo
	* "out"/"outside"                                       DoExit
	* object                                                DoGo

verb "enter", "board", "mount"
	*                                                       DoVague
	* object                                                DoEnter

verb "exit"
	*                                                       DoExit
	* object                                                DoExit

verb "sit", "lie"
	*                                                       DoEnter
	* "down"                                                DoEnter
	* "in"/"on" object                                      DoEnter
	* "down" "in"/"on" object                               DoEnter

verb "stand"
	*                                                       DoStand
	* "up"                                                  DoStand

verb "dismount"
	*                                                       DoStand
	* object                                                DoExit


!
! For moving, taking, and dropping objects:
!

verb "move"
	*                                                       DoVague
	* object                                                DoMove

verb "get"
	*                                                       DoVague
	* "up"/"out"/"off"/"down"                               DoStand
	* "outof"/"offof"/"off" object                          DoExit
	* "in"/"in"/"inside"/"on"                               DoEnter
	* "in"/"into"/"inside"/"on"/"onto" object               DoEnter

verb "get", "take", "grab", "snatch", "fetch" "rent"
	*                                                       DoVague

	* "movie" "from" "rack"					DoGetMovie

	* "movie" "from" "action" "rack"			DoGetMovie
	* "dvd" "from" "action" "rack"				DoGetMovie

	* "movie" "from" "fantasy" "rack"			DoGetMovie
	* "dvd" "from" "fantasy" "rack"				DoGetMovie

	* "movie" "from" "horror" "rack"			DoGetMovie
	* "dvd" "from" "horror" "rack"				DoGetMovie

	* "movie" "from" "drama" "rack"				DoGetMovie
	* "dvd" "from" "drama" "rack"				DoGetMovie

!	* "movie"/"dvd"/"film"/"disc"				DoGetMovie
 

	* multi "from"/"off"/"on"/"in" parent                   DoGet
	* multi "offof"/"outof" parent                          DoGet
	* multi "from" "offof"/"outof"/"on"/"in" parent         DoGet
	* multi                                                 DoGet

verb "take"
	*                                                       DoVague
	* "off" multiheld                                       DoTakeOff
	* multiheld "off"                                       DoTakeOff
	* "inventory"                                           DoInventory

verb "pick"
	*                                                       DoVague
	* "up" multi                                            DoGet
	* "up" multi "from"/"off" parent                        DoGet
	* "up" multi "offof"/"outof" parent                     DoGet
	* multi "up"                                            DoGet
	* multi "up" "from"/"off" parent                        DoGet
	* multi "up" "offof"/"outof" parent                     DoGet
	* multi                                                 DoGet

verb "drop"
	*                                                       DoVague
	* multiheld "on" "ground"/"floor"                       DoPutonGround
	* multiheld "outside" xobject                           DoPutonGround
	* multiheld "in"/"into"/"inside" container              DoPutIn
	* multiheld "on" platform                               DoPutIn
	* multiheld "off" ledgelike				DoDropOffLedge
	* multiheld "over" ledgelike				DoDropOffLedge
	* multiheld                                             DoDrop

verb "leave"
	*                                                       DoExit
	* object                                                DoExit
	* multiheld "on"/"onto" "ground"/"floor"                DoPutonGround
	* multiheld "outside" xobject                           DoPutonGround
	* multiheld "in"/"inside" container                     DoPutIn
	* multiheld "on" platform                               DoPutIn
	* multiheld                                             DoDrop

verb "let"
	* "go" multiheld                                        DoDrop
	* multiheld "go"                                        DoDrop

verb "put", "place"
	*                                                       DoVague
	* multiheld "on"/"onto" "ground"/"floor"                DoPutonGround
	* multiheld "outside" xobject                           DoPutonGround
	* "down" multiheld                                      DoDrop
	* multiheld "down"                                      DoDrop
	* multiheld "in"/"into"/"inside" container              DoPutIn
	* multiheld "on"/"onto" SuperContainer                  DoPutIn
	* multiheld "in"/"into"/"inside" SuperContainer         DoPutIn
	* multiheld "on"/"onto" platform                        DoPutIn
	* multiheld                                             DoDrop


verb "put"
	* multi "on"						DoWear
	* "on" multi						DoWear

verb "put"
	* multiheld "on" living					DoApply	

verb "insert"
	*                                                       DoVague
	* held                                                  DoPutIn
	* held "in"/"into" object                               DoPutIn

verb "empty", "unload"
	*                                                       DoVague
	* container                                             DoEmpty
	* platform                                              DoEmpty
	* container "on"/"onto" "ground"/"floor"                DoEmptyGround
	* platform "on"/"onto" "ground"/"floor"                 DoEmptyGround


!
! Other object-handling verbs:
!

verb "give", "hand", "offer"
	*                                                       DoVague
	* object                                                DoGive
	* object "to" object                                    DoGive

verb "show"
	*                                                       DoVague
	* object                                                DoShow
	* object "to" xobject                                   DoShow

verb "inventory", "inv", "i"
	*                                                       DoInventory
	* "wide"/"tall"                                         DoInventory

verb "open"
	*                                                       DoVague
	* openable                                              DoOpen

verb "lock"
	*                                                       DoVague
	* lockable                                              DoLock
	* lockable "with"/"using" held                          DoLock

verb "unlock"
	*                                                       DoVague
	* lockable                                              DoUnlock
	* lockable "with"/"using" held                          DoUnlock

verb "close", "shut"
	*                                                       DoVague
	* openable                                              DoClose

verb "read", "peruse"
	*                                                       DoVague
	* readable                                              DoLook

verb "switch", "turn", "flip"
	*                                                       DoVague
	* switchable "on"                                       DoSwitchOn
	* switchable                                            DoSwitchOn
	* "on" switchable                                       DoSwitchOn
	* switchable "off"                                      DoSwitchOff
	* "off" switchable                                      DoSwitchOff

verb "toggle", "flick"
	*							DoVague
	* switchable						DoToggle
	
verb "activate"
	*							DoVague
	* switchable						DoSwitchOn
	
verb "deactivate"
	*							DoVague
	* switchable						DoSwitchOff

verb "wear"
	*                                                       DoVague
	* multi                                                 DoWear

verb "remove"
	*                                                       DoVague
	* multi                                                 DoTakeOff
	* multi "from"/"outof"/"offof" parent                   DoGet

verb "listen"
	*                                                       DoListen
	* "to" object                                           DoListen

verb "hear"
	*                                                       DoListen
	* object                                                DoListen

verb "eat", "taste", "bite", "chew"
	*                                                       DoVague
	* object                                                DoEat

verb "drink", "sip", "swallow"
	*                                                       DoVague
	* object                                                DoDrink
	* "from" object                                         DoDrink

verb "kick"
	*							DoVague
	* object						DoKick

verb "hit", "strike", "break", "attack", "whack", "beat", \
	"punch", "kill", "murder", "fight", "tap"
	*                                                       DoVague
	* object                                                DoHit
	* object "with"/"using" held                            DoHit

!
! For talking to characters:
!

verb "hello", "hi", "howdy"
	*                                                       DoHello
	! because a comma becomes "~and":
	* "~and" object                                         DoHello
	* object                                                DoHello

verb "ask", "question", "consult"
	*                                                       DoAsk
	* living                                                DoAsk
	* living "about" anything                               DoAsk
	* "about" anything                                      DoAskQuestion

verb "talk", "speak", "t", "call"
	*							DoTalk
	* object						DoTalk
	* "to" object						DoTalk
	* "about" anything					DoTalk


! For some reason, I can't do a talk to living and a talk to talkable. I can do either/or. 
! I don't know why. 

!	*                                                       DoTalk
!	* living						DoTalk
!	* "to" living                                           DoTalk
!	* talkable						DoAskQuestion
!	* "to" talkable						DoAskQuestion
!	* "to" living "about" anything                          DoTalk
!	* "about" anything                                      DoAskQuestion


verb "tell"
	* "me" "about" anything                                 DoAskQuestion
	* living "about" anything                               DoTell

verb "explain"
	* "to" "me" "about" anything                            DoAskQuestion
	* "to" living "about" anything                          DoTell

verb "what"
	* "is"/"about" anything                                 DoAskQuestion

verb "who"
	* "is" anything                                         DoAskQuestion

#endif  ! ifclear NO_VERBS

!----------------------------------------------------------------------------
! Include verb stub grammar if specified

#ifset VERBSTUBS
#include "verbstub.g"
#endif

!----------------------------------------------------------------------------
! Include debugging grammar if specified

#ifset DEBUG
#include "hugofix.g"
#endif

#ifset DEBUG_SMALL
#include "hugofix.g"
#endif

#endif	! _VERBLIB_G
