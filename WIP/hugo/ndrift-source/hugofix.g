!----------------------------------------------------------------------------
!
!       HugoFix Library Grammar v2.5.03.5 by Kent Tessman (c) 1995-2001
!                     for use with Hugo Compiler v2.5
!
!----------------------------------------------------------------------------
!
! This grammar file is automatically included by GRAMMAR.G if the DEBUG
! flag is set.
!
! NOTE:  The following verb definitions follow the somewhat non-standard
! practice of each calling the same verb routine (DoHugoFix), primarily
! to cut down on the sheer number of verbs.  DoHugoFix is responsible for
! differentiating which debugging command is intended based on word[1].
!
!----------------------------------------------------------------------------

#ifclear _HUGOFIX_G
#set _HUGOFIX_G

#version 2.5

xverb "$", "$on", "$sc", "$fd", "$pm"
	*                                       DoHugoFix

xverb "$wo"
	* number                                DoHugoFix

xverb "$wn"
	* word					DoHugoFix

#ifclear NO_SCRIPTS
xverb "$sc"
	*                                       DoHugoFix
#endif

#ifclear NO_FUSES
xverb "$fd"
	*                                       DoHugoFix
#endif

xverb "$fo"
	*					DoHugoFix
	* anything                              DoHugoFix
	* number                                DoHugoFix

xverb "$mo"
	* number "to" "$loc"			DoHugoFix
	* anything "to" "$loc"			DoHugoFix
	* number "to" number                    DoHugoFix
	* anything "to" number			DoHugoFix
	* number "to" anything			DoHugoFix
	* anything "to" anything                DoHugoFix

xverb "$mp"
	* anything                              DoHugoFix
	* number                                DoHugoFix

xverb "$on"
	*                                       DoHugoFix

xverb "$nu"
	* anything                              DoHugoFix

xverb "$na"
	* number                                DoHugoFix

xverb "$ot"
	*                                       DoHugoFix
	* number                                DoHugoFix
	* anything                              DoHugoFix
	* "$loc"				DoHugoFix

xverb "$ac"
	* anything                              DoHugoFix
	* anything number                       DoHugoFix
	* number                                DoHugoFix
	* number number                         DoHugoFix

xverb "$de"
	* anything                              DoHugoFix
	* number                                DoHugoFix

xverb "$pm"
	*                                       DoHugoFix

xverb "$kn"
	*					DoHugoFix
	* number				DoHugoFix
	
xverb "$nr"
	*					DoHugoFix
	
xverb "$rr"
	*					DoHugoFix
	
xverb "$au"
	*					HugoFixAudit

#ifclear NO_OBJLIB
xverb "$di"
	*                                       DoHugoFix
	* number                                DoHugoFix
	* anything                              DoHugoFix
#endif

#endif	! _HUGOFIX_G
