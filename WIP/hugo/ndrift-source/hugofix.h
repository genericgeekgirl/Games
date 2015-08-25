!----------------------------------------------------------------------------
!
!      HugoFix Debugging Library v2.5.03.5 by Kent Tessman (c) 1995-2001
!                     for use with the Hugo Compiler
!
!----------------------------------------------------------------------------
!
!    NOTE:  These routines and the corresponding grammar table are
!           automatically included by HUGOLIB.H and GRAMMAR.G if the
!           DEBUG compiler flag is set.
!
!----------------------------------------------------------------------------

#ifclear _HUGOFIX_H
#set _HUGOFIX_H

#version 2.5

#ifclear _COMPILING_HUGOLIB
#message warning "HUGOFIX.H not #included; #set DEBUG instead"
#else

! BITMASKS FOR debug_flags:

global debug_flags

enumerate step *2
{
	D_FUSES = 1             ! fuse/daemon monitoring
	D_OBJNUM                ! object numbers
	D_PARSE                 ! parse monitoring
	D_SCRIPTS               ! script monitoring
}

routine DoHugoFix
{
	local i, n, place

	Font(PROP_OFF)		! proportional printing off

	select word[1]
	case "$", "$?"
	{
		"HUGOFIX DEBUGGING COMMANDS:\n\
		\_    $?  - Display this help menu\n"

		"Monitoring:\n\
		\_    $on - Toggle object numbers"

	#ifclear NO_SCRIPTS
	       "\_    $sc - Script monitor on/off"
	#endif

	#ifclear NO_FUSES
	       "\_    $fd - Fuse/daemon monitor on/off"
	#endif

	       "\_    $pm - Parser monitoring on/off\n"

	       "Object movement:\n\
		\_    $mo <obj.> to <obj.> - Move object to new parent\n
		\_    $mp <obj.>           - Move player object to new
			parent\n"

		"Object testing:\n\
		\_    $fo [obj.]   - Find object (or player, if no obj.)\n\
		\_    $na <obj. #> - Print name of object number <obj.>\n\
		\_    $nu <obj.>   - Print number of object <obj.>\n"

		"Other utilities:"

	       "\_    $kn                - Set all objects to 'known'\n\
		\_    $kn <obj. #>       - Make <number> 'known'\n\
		\_    $nr                - Normalize random numbers\n\
		\_    $rr                - Restore \"random\" random numbers"
	#ifclear NO_FUSES
	       "\_    $ac <obj.> [timer] - Activate fuse (with timer) or
			daemon\n\
		\_    $de <obj.>         - Deactivate fuse or daemon"
	#endif

	#ifclear NO_OBJLIB
	       "\_    $di [obj.]         - Audit directions (for room <obj.>)"
	#endif

	       "\_    $ot [obj. | $loc]  - Print object tree (beginning with
			<obj.>)\n\
		\_    $wo <val.>         - Print dictionary word entry <val.>\n\
		\_    $wn <word>         - Value/addr. of (lowercase) <word>\n\
		\_    $au                - Run HugoFixAudit"
	}

	case "$wo"
	{
		print "[\""; object; "\": "; number object; "]"
	}

	case "$wn"
	{
		print "[\""; word[2]; "\": "; number word[2]; "]"
	}

#ifclear NO_SCRIPTS
	case "$sc"
	{
		"[Script monitor";
		OnorOff(D_SCRIPTS)
	}
#endif

#ifclear NO_FUSES
	case "$fd"
	{
		"[Fuse/daemon monitor";
		OnorOff(D_FUSES)
	}
#endif

	case "$fo"
	{
		if not object:  object = player
		"[Parent of obj. "; : print number object; " ("; \
		object.name; "):  Obj. ";
		print number (parent(object)); " ("; parent(object).name; ")]"
	}
	case "$mo"
	{
		if word[4] = "$loc":  xobject = location
		print "[Obj. "; number object; " ("; object.name; ") ";
		print "moved to obj. "; number xobject; " (";
		print xobject.name; ")]"
		move object to xobject
		object is not hidden
		object is known
	}
	case "$mp"
	{
		if parent(object) ~= 0 and object is not enterable
			{print "[Obj. "; number object; " (";
			print object.name; ") is not a room object]"}
		else
		{
			MovePlayer(object, false, true)
			Font(PROP_OFF)
			"[Player moved to obj. ";
			print number object; " ("; object.name; ")]"
		}
	}
	case "$on"
	{
		"[Object numbers";
		OnorOff(D_OBJNUM)
	}
	case "$na", "$nu"
	{
		print "[Obj. "; number object; ": \""; object.name; "\"]"
	}
	case "$ot"
	{
		if word[2] = "$loc":  object = location
		print "["; number object; "] "; object.name
		list_nest = (object ~= 0)
		for (i=0; i<objects; i=i+1)
		{
			if i ~= object and parent(i) = object
				DrawBranch(i)
		}
	}

	case "$kn"
	{
		if object
		{
			object is known
			print "["; object.name; " now 'known']"
			break
		}

#ifset NO_OBJLIB
		i = 0
#else
		i = out_obj + 1
#endif
		for (; i<objects; i++)
			i is known
		"[All objects now 'known']"
	}
	
	case "$nr"
	{
		system(21)
		"[Random numbers now normalized]"
	}
	case "$rr"
	{
		system(22)
		"[\"Random\" random numbers restored]"
	}

#ifclear NO_FUSES
	case "$ac"
	{
		if object.type ~= fuse and object.type ~= daemon
			"Not a fuse or daemon."
		else
			{Activate(object)
			object.timer = xobject
			"Activated."}
	}
	case "$de"
	{
		if object.type ~= fuse and object.type ~= daemon
			"Not a fuse or daemon."
		else
			{Deactivate(object)
			"Deactivated."}
	}
#endif

	case "$pm"
	{
		"[Parser monitoring";
		OnorOff(D_PARSE)
	}

#ifclear NO_OBJLIB
	case "$di"
	{
		if object:  place = object
		else:  place = location

		print "DIRECTIONS FROM:  "; capital place.name; " "; "("; \
			number place; ")"
		local printed
		for i in direction
		{
			if &place.(i.dir_to)
			{
				print "\_ "; i.name; ":  (Property routine)"
				printed++
			}
			else
			{
				n = place.(i.dir_to)
				if n > 1
				{
					print "\_ "; i.name; ":  "; \
						capital n.name
					printed++
				}
				elseif n = 0
				{
					if &place.cant_go
					{
						print "\_ "; i.name; ":  ";
						run place.cant_go
						printed++
					}
				}
			}
		}
		if not printed:  "\_ (None)"
	}
#endif

	Font(DEFAULT_FONT)	! restore font (i.e., proportional printing
				! if it was turned off)
}

routine OnorOff(a)
{
	if not (debug_flags & a)
	{
		print " on.]"
		debug_flags = debug_flags | a
	}
	else
	{
		print " off.]"
		debug_flags = debug_flags & ~a
	}
}

routine DrawBranch(obj)
{
	local i, nextobj

	for (i=1; i<=list_nest; i++)
		print ". . ";
	print "["; number obj; "] "; obj.name

	for nextobj in obj
		{list_nest++
		DrawBranch(nextobj)
		list_nest--}
}


! HugoFixAudit, to check for potential problem areas that might not be
! easily debuggable:

routine HugoFixAudit
{
	local obj, err
	
	Font(PROP_OFF)
	
	! Make sure "nothing" is object 0
	if nothing ~= 0
	{
		"\"nothing\" object is not object 0"
		err++
	}
	
#ifset USE_PLURAL_OBJECTS
	! Check for proper plural/identical objects initialization
	local i

	for (obj=1; obj<objects; obj++)
	{
		if (obj.type = plural_class, identical_class) and
			(obj ~= plural_class, identical_class)
		{
			if not obj.plural_of
			{
				err++
				"Plural/identical class ";
				print "\""; obj.name; "\" ("; number obj; ")";
				" has no 'plural_of' property"
			}
			elseif obj.type = identical_class
			{
				for (i=1; i<=obj.#plural_of; i++)
				{
					if obj.plural_of #i.identical_to ~= obj
					{
						err++
						"Identical object ";
						print "\""; obj.plural_of #i.name; "\" ";
						print "("; number obj.plural_of #i; ") ";
						"should have 'identical_class' ";
						print "\""; obj.name; "\" ";
						print "("; number obj; ") ";
						"in 'identical_to' property"
					}
				}
			}
		}
	}
#endif	! ifset USE_PLURAL_OBJECTS

	for (obj=1; obj<objects; obj++)
	{
		if obj is container or obj is platform
		{
			if obj.capacity and not obj.#holding and not &obj.holding
			{
				if obj is container
					"Container ";
				else
					"Platform ";
				print "\""; obj.name; "\" ("; number obj; ")";
				" has 'capacity' but no 'holding' property"
				err++
			}
			if obj.holding and not obj.#capacity and not &obj.capacity
			{
				if obj is container
					"Container ";
				else
					"Platform ";
				print "\""; obj.name; "\" ("; number obj; ")";
				" has 'holding' but no 'capacity' property"
				err++
			}
		}
	}
	
	print "[";
	if err
		print number err;
	else
		print "No";
	" error(s)/warning(s) found by HugoFixAudit]"
	Font(DEFAULT_FONT)
}


! Replacements for The, CThe, Art, and CArt:

replace The(obj, a)
{
	AssignPronoun(obj)

	if obj = player and player_person = 1 and a
	{
		print player.pronoun #2;
		jump PrintTheObjNumber
	}

	if obj.article
		print "the ";
	print obj.name;

:PrintTheObjNumber
	if (debug_flags & D_OBJNUM)
		print " ["; number obj; "]";
}

replace CThe(obj)
{
	AssignPronoun(obj)

	if obj.article
		print "The "; obj.name;
	else
		print capital obj.name;
	if (debug_flags & D_OBJNUM)
		print " ["; number obj; "]";
}

replace Art(obj, a)
{
	AssignPronoun(obj)

	if obj = player and player_person = 1 and a
	{
		print player.pronoun #2;
		jump PrintArtObjNumber
	}

	if obj.article
		print obj.article; " ";
	print obj.name;

:PrintArtObjNumber
	if (debug_flags & D_OBJNUM)
		print " ["; number obj; "]";
}

replace CArt(obj)
{
	AssignPronoun(obj)

	if obj.article
		print capital obj.article; " "; obj.name;
	else
		print capital obj.name;
	if (debug_flags & D_OBJNUM)
		print " ["; number obj; "]";
}




#endif  ! _COMPILING_HUGOLIB

#endif	! _HUGOFIX_H
