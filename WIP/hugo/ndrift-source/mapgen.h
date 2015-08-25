! The following are a couple of routines that allow users of Hugo to generate
! random maps--random in the sense that the connections between
! rooms are randomly assigned at runtime and not fixed in stone. Otherwise,
! the user maintains complete control over them. This sort of thing seems
! to be most commonly found in RPG's, which is what I originally wrote
! this for. Please heed the following:
!
! All room objects must have a "coord 0, 0, 0" property in order for the
! map generator to work. They must also have explicit "dir_to" properties
! provided.
!
! Please note that this code will generate maps with cross-connections, and
! therefore it is not compatible with the FullMap() routine found in
! AUTOMAP.H. This is unfortunate, but it's due to a particularly elusive
! bug that I've spent countless hours trying to squash, to no avail. Other
! than that, though, there seems to be no problem with using the code.
!
! To use this beast, you must define your rooms as an uninterrupted series
! of objects and then call MakeMap() with the starting room, the ending
! room, and (optionally) a value of "true" to indicate that you want
! to allow up and down connections in the generated map. Otherwise, without
! the "true" argument, the generated map will potentially use every
! direction except up and down, which are disallowed by default.
! Note that there's no reason why you can't mix random map sections with
! "fixed" ones (as, for example, in Beyond Zork). The only caveat is that
! whatever rooms constitute a randomly generated section must be defined
! in your code in an uninterrupted series (such that, for example,
! Kitchen is object #52, Living Room is object #53, Bedroom is object
! #54 and so on).

! That's it! Enjoy! This document copyright (c) Cardinal Teulbachs, 1999

!----------------------------------------------------------------------------

property coord
global rnd

routine CheckCoord(a, start_rm, end_rm, do_updown)
{
  local b, c

:DoItAgain

  if do_updown
    rnd = random(10)
  else
    rnd = random(8)

  b = a - 1                            ! b is preceding room

  select rnd
  case 1 : { a.coord#2 = b.coord#2-1 : a.coord#1 = b.coord#1   : a.coord#3 = b.coord#3 }
  case 2 : { a.coord#2 = b.coord#2-1 : a.coord#1 = b.coord#1-1 : a.coord#3 = b.coord#3 }
  case 3 : { a.coord#2 = b.coord#2-1 : a.coord#1 = b.coord#1+1 : a.coord#3 = b.coord#3 }
  case 4 : { a.coord#2 = b.coord#2+1 : a.coord#1 = b.coord#1   : a.coord#3 = b.coord#3 }
  case 5 : { a.coord#2 = b.coord#2+1 : a.coord#1 = b.coord#1+1 : a.coord#3 = b.coord#3 }
  case 6 : { a.coord#2 = b.coord#2+1 : a.coord#1 = b.coord#1-1 : a.coord#3 = b.coord#3 }
  case 7 : { a.coord#1 = b.coord#1-1 : a.coord#2 = b.coord#2   : a.coord#3 = b.coord#3 }
  case 8 : { a.coord#1 = b.coord#1+1 : a.coord#2 = b.coord#2   : a.coord#3 = b.coord#3 }
  case 9 : { a.coord#3 = b.coord#3-1 : a.coord#2 = b.coord#2   : a.coord#1 = b.coord#1 }
  case 10: { a.coord#3 = b.coord#3+1 : a.coord#2 = b.coord#2   : a.coord#1 = b.coord#1 }

  for (c = start_rm; c <= end_rm; c++)
  {
    if (a.coord#1 = c.coord#1) and
       (a.coord#2 = c.coord#2) and
       (a.coord#3 = c.coord#3)
      break
    elseif c = b
      return true
  }

  a.coord#1 = 0
  a.coord#2 = 0
  a.coord#3 = 0

  jump DoItAgain
}

!----------------------------------------------------------------------------

routine MakeMap(start_rm, end_rm, do_updown)
{
  local a, b, c, i, z

  for (a = (start_rm + 1); a <= end_rm; a++)
  {
    CheckCoord(a, start_rm, end_rm, do_updown)

    b = a - 1                            ! b is preceding room

    select rnd
    case 1 : { a.n_to  = b }
    case 2 : { a.ne_to = b }
    case 3 : { a.nw_to = b }
    case 4 : { a.s_to  = b }
    case 5 : { a.sw_to = b }
    case 6 : { a.se_to = b }
    case 7 : { a.e_to  = b }
    case 8 : { a.w_to  = b }
    case 9 : { a.u_to  = b }
    case 10: { a.d_to  = b }

    select rnd
    case 1 : b.s_to  = a
    case 2 : b.sw_to = a
    case 3 : b.se_to = a
    case 4 : b.n_to  = a
    case 5 : b.ne_to = a
    case 6 : b.nw_to = a
    case 7 : b.w_to  = a
    case 8 : b.e_to  = a
    case 9 : b.d_to  = a
    case 10: b.u_to  = a

    for (c = start_rm; c <= b; c++)    !! check for diags
    {
                                  ! if b is north of c
      if ((c.coord#1 = b.coord#1) and (c.coord#2+1 = b.coord#2)) and
             ((c.ne_to ~= 0) and (a.nw_to ~= 0))
      { a.nw_to = 0 : b.se_to = 0 : ClearA(a) : a = b }

      elseif ((c.coord#1 = b.coord#1) and (c.coord#2+1 = b.coord#2)) and
             ((c.nw_to ~= 0) and (a.ne_to ~= 0))
      { a.ne_to = 0 : b.sw_to = 0 : ClearA(a) : a = b }

                                  ! if b is south of c
      if ((c.coord#1 = b.coord#1) and (c.coord#2-1 = b.coord#2)) and
             ((c.se_to ~= 0) and (a.sw_to ~= 0))
      { a.sw_to = 0 : b.ne_to = 0 : ClearA(a) : a = b }

      elseif ((c.coord#1 = b.coord#1) and (c.coord#2-1 = b.coord#2)) and
             ((c.sw_to ~= 0) and (a.se_to ~= 0))
      { a.se_to = 0 : b.nw_to = 0 : ClearA(a) : a = b }

                                  ! if b is east of c
      if ((c.coord#1+1 = b.coord#1) and (c.coord#2 = b.coord#2)) and
             ((c.ne_to ~= 0) and (a.se_to ~= 0))
      { a.se_to = 0 : b.nw_to = 0 : ClearA(a) : a = b }

      elseif ((c.coord#1+1 = b.coord#1) and (c.coord#2 = b.coord#2)) and
             ((c.se_to ~= 0) and (a.ne_to ~= 0))
      { a.ne_to = 0 : b.sw_to = 0 : ClearA(a) : a = b }

                                  ! if b is west of c
      if ((c.coord#1-1 = b.coord#1) and (c.coord#2 = b.coord#2)) and
             ((c.nw_to ~= 0) and (a.sw_to ~= 0))
      { a.sw_to = 0 : b.ne_to = 0 : ClearA(a) : a = b }

      elseif ((c.coord#1-1 = b.coord#1) and (c.coord#2 = b.coord#2)) and
             ((c.sw_to ~= 0) and (a.nw_to ~= 0))
      { a.nw_to = 0 : b.se_to = 0 : ClearA(a) : a = b }
    }
    a is visited
  }

  for (a = (start_rm + 1); a <= end_rm; a++)
  {
    a is not visited
    for (c = start_rm; c < a; c++)
    {
      z = random(7)

      if ((c.coord#1+1) = a.coord#1 and c.coord#2 = a.coord#2)
      {
        if z > 5
        { a.w_to = c : c.e_to = a }
      }
      elseif ((c.coord#1-1) = a.coord#1 and c.coord#2 = a.coord#2) 
      {
        if z > 5
        { a.e_to = c : c.w_to = a }
      }
      elseif ((c.coord#2+1) = a.coord#2 and c.coord#1 = a.coord#1) 
      {
        if z > 5
        { a.s_to = c : c.n_to = a }
      }
      elseif ((c.coord#2-1) = a.coord#2 and c.coord#1 = a.coord#1) 
      {
        if z > 5
        { a.n_to = c : c.s_to = a }
      }

      if ((c.coord#1+1) = a.coord#1 and (c.coord#2-1) = a.coord#2) 
      {
        for (i = start_rm; i < a; i++)
        {
          if ((((i.coord#1+1) = a.coord#1) and (i.coord#2 = a.coord#2)) and
             i.ne_to ~= 0) 
            break 

          elseif ((((i.coord#2-1) = a.coord#2) and (i.coord#1 = a.coord#1)) and
             i.sw_to ~= 0) 
            break 

          else
          {
            if z > 5
            { a.nw_to = c : c.se_to = a }
          }
        }
      }
      elseif ((c.coord#1-1) = a.coord#1 and (c.coord#2-1) = a.coord#2) 
      {
        for (i = start_rm; i < a; i++)
        {
          if ((((i.coord#1-1) = a.coord#1) and (i.coord#2 = a.coord#2)) and
             i.nw_to ~= 0) 
            break 

          elseif ((((i.coord#2-1) = a.coord#2) and (i.coord#1 = a.coord#1)) and
             i.se_to ~= 0) 
            break 

          else
          {
            if z > 5
            { a.ne_to = c : c.sw_to = a }
          }
        }
      }
      elseif ((c.coord#1+1) = a.coord#1 and (c.coord#2+1) = a.coord#2)
      {
        for (i = start_rm; i < a; i++)
        {
          if ((((i.coord#1+1) = a.coord#1) and (i.coord#2 = a.coord#2)) and
             i.se_to ~= 0) 
            break 

          elseif (((i.coord#1 = a.coord#1) and ((i.coord#2+1) = a.coord#2)) and
             i.nw_to ~= 0) 
            break 

          else
          {
            if z > 5
            { a.sw_to = c : c.ne_to = a }
          }
        }
      }
      elseif ((c.coord#1-1) = a.coord#1 and (c.coord#2+1) = a.coord#2) 
      {
        for (i = start_rm; i < a; i++)
        {
          if ((((i.coord#1-1) = a.coord#1) and (i.coord#2 = a.coord#2)) and
             i.sw_to ~= 0) 
            break 

          elseif ((((i.coord#2+1) = a.coord#2) and (i.coord#1 = a.coord#1)) and
             i.ne_to ~= 0) 
            break 

          else
          {
            if z > 5
            { a.se_to = c : c.nw_to = a }
          }
        }
      }
    }
  }
}


routine ClearA(a)
{
  a.coord#1 = 0
  a.coord#2 = 0
  a.coord#3 = 0
}
