!\---------------------------------------------------------------------------
	container.h
	
	SuperContainer class
	
	The SuperContainer class can be a platform and/or a container,
	and has its own routines for handling objects, for describing
	its contents, etc.
	
	Include this file after including "hugolib.h" (requires library
	version 3.0.04.1 or later).
	
	Always use MoveInto() and MoveOnto() to move objects into or
	onto a SuperContainer.
	
	Also, the player object must have this block in a before routine:

	before
	{
		actor
		{
			if parent(object).type = SuperContainer
			{
				if Inlist(parent(object), contents_in, object) and
					parent(object) is not open
				{
					print capital player.pronoun #1;
					MatchPlural(player, "doesn't", "don't")
					" see that."
					return true
				}
			}
			return false
		}
	}

---------------------------------------------------------------------------\!

! These can be modified in objects derived from SuperContainer:
property capacity_in alias n_to
property capacity_on alias ne_to

attribute actually_transparent

! You can change define this constant beforehand if you want more (or less)
! than the default maximum:
#if undefined MAX_SUPERCONTAINER_CONTENTS
constant MAX_SUPERCONTAINER_CONTENTS 32
#endif
 

!----------------------------------------------------------------------------
! The SuperContainer class itself
!----------------------------------------------------------------------------

! For SuperContainer internal use:
property contents_in
property count_in
property contents_on
property count_on
property reset_contents
attribute supposed_to_be_closed

class SuperContainer
{
	type SuperContainer
	
	capacity_in 100
	capacity_on 100
	
	preposition "in", "on"	! can be changed, but both are needed
	
	! To disable either container or platform behavior, use
	! "is not [container or platform]" in the object definition
	is container
	is platform
	
! Contents display:

	list_contents
	{
		run self.reset_contents
		if self.count_in and self is container and
			(self is open or self is transparent)
		{
			local temp_word
			! So we can hijack object.before:DoLookIn
			temp_word = word[1]
			word[1] = "in"
			Indent
			Perform(&DoLookIn, self)
			word[1] = temp_word
		}
		if self.count_on
		{
			Indent
			Perform(&DoLookIn, self)
		}
	}

! SuperContainer internals:

	contents_in #MAX_SUPERCONTAINER_CONTENTS
	count_in 0
	contents_on #MAX_SUPERCONTAINER_CONTENTS
	count_on 0

	react_before
	{
		if self = parent(object)
		{
			if InList(self, contents_on, object) and self is not open
			{
				self is open
				self is supposed_to_be_closed
			}
		}
		return false
	}
	
	before
	{
		xobject		! anytime we're an xobject
		{
			run self.reset_contents
			return false
		}
		object		! anytime we're an object
		{
			run self.reset_contents
			return false
		}
		xobject DoPutIn
		{
			! "in"
			if PrepWord("in") or PrepWord("into") or PrepWord("inside")
			{
				if self is openable and self is not open
				{
					CThe(self)
					" is closed."
					return true
				}
				elseif not MoveInto(xobject, object)
				{
					"There is no room for ";
					print The(object); " ";
					print self.prep #1; " "; The(self); "."
				}
				else
				{
					print CThe(player); " put"; MatchSubject(player); \
						" "; The(object);
					print " "; xobject.prep #1; " ";
					print The(xobject); "."
				}
			}
			
			! "on"
			else
			{
				if not MoveOnto(xobject, object)
				{
					"There is no room for ";
					print The(object); " ";
					print self.prep #2; " "; The(self); "."
				}
				else
				{
					print CThe(player); " put"; MatchSubject(player); \
						" "; The(object);
					print " "; xobject.prep #2; " ";
					print The(xobject); "."
				}
			}
		}
		object DoLookIn
		{
			! "in"
			if PrepWord("in") or PrepWord("into") or PrepWord("inside")
			{
				if self is openable and self is not open
				{
					CThe(self)
					" is closed."
					return true
				}
				
				CThe(self)
				if self.count_in = 0
				{
					" is empty."
				}
				else
				{
					" contains ";
					PropertyList(self, contents_in)
					print "."
				}
			}
			
			! "on"
			else
			{
				CThe(self)
				" has ";
				if self.count_on = 0
				{
					"nothing";
				}
				else
					PropertyList(self, contents_on)
				print " "; self.prep #2; " it."
			}
		}
	}
	after
	{
		xobject		! anytime we're an xobject
		{
			run self.reset_contents
			return false
		}
		object		! anytime we're an object
		{
			run self.reset_contents
			return false
		}
	}

	reset_contents
	{	
		local i, obj
		self.count_in = 0
		for (i=1; i<=self.#contents_in; i++)
		{
			obj = self.contents_in #i
			if obj and obj not in self
			{
				self.contents_in #i = 0
			}
			elseif obj
			{
				self.count_in++
				if obj is plural
					self.count_in++
			}
		}
		self.count_on = 0
		for (i=1; i<=self.#contents_on; i++)
		{
			obj = self.contents_on #i
			if obj and obj not in self
			{
				self.contents_on #i = 0
			}
			elseif obj
			{
				self.count_on++
				if obj is plural
					self.count_on++
			}
		}
		if self is supposed_to_be_closed
			self is not open
		self is not supposed_to_be_closed
	}
}


!----------------------------------------------------------------------------
! Always use MoveInto() and MoveOnto() to move objects into or onto a
! SuperContainer.  Returns false if there's no room to do so.
!----------------------------------------------------------------------------
routine MoveInto(p, obj)
{
	if not p.#contents_in:  return false
	run p.reset_contents

	! Search for an empty "in" slot
	local i, slot, bulk
	for (i=1; i<=p.#contents_in; i++)
	{
		if p.contents_in #i = 0
		{
			if not slot
				slot = i
		}
		else
			bulk += (p.contents_in #i).size
	}
	
	! If we didn't find an empty slot, there's no room
	if not slot:  return false
	if bulk > p.capacity_in:  return false
	
	! Put the object in the contents_in list
	p.contents_in #slot = obj
	move obj to p
	return true
}

routine MoveOnto(p, obj)
{
	if not p.#contents_on:  return false
	run p.reset_contents

	! Search for an empty "on" slot
	local i, slot, bulk
	for (i=1; i<=p.#contents_on; i++)
	{
		if p.contents_on #i = 0
		{
			if not slot
				slot = i
		}
		else
			bulk += (p.contents_in #i).size
	}
	
	! If we didn't find an empty slot, there's no room
	if not slot:  return false
	if bulk > p.capacity_on:  return false

	! Put the object in the contents_on list
	p.contents_on #slot = obj
	move obj to p
	return true
}


! PrepWord(str) return true if the word "str" is the preposition used
! in the player input.

routine PrepWord(str)
{
	local i
	for (i=1; i<=words; i++)
	{
		if not ObjWord(word[i], object)
		{
			if word[i] = str
				return true
			if word[i] = ""
				break
		}
	}
}
