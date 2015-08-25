! -----------------------------------------------------------------------------
!
!                           Smart Desk Object V2.0
!                            By Jason Peter Brown
!                        For Hugo 2.4d by Kent Tessman
!                           Friday December 5 1997
!
! -----------------------------------------------------------------------------
!
! Okay, this object is no big deal, and it is something that no one in their
! right mind would waste their time coding, but I was really bored so I did
! it. Reason for coding: I hate accidently typing something like:
!
! >put envelope in desk
!
! Only to get the response:
!
! But the desk is not a container
!
! ..blah blah blah...Obviously I meant the drawer and not the desk!!!
! One easy way to remedy this by making the desk a container and then
! make "drawer" a noun under the entire desk object. This is alright except
! for the fact that >examine desk and >examine drawer will produce the same
! descriptions which is pretty lame if you write an involved description 
! which makes sense when applied to the desk...(ie: >examine drawer / The
! desk is monstrous and made entirely of cockroach exoskeletons...)
!
! Thus I set out to make a "smart" desk. If the user types ">put envelope
! in desk" or ">open desk" or ">close desk" or ">look in desk" (or whatever!)
! the program will respond with:
!
! (assuming that you mean the drawer rather than the desk...)
!
! and then perform the proper operation on the *drawer* object.
!
! ***NEW WITH VERSION 2.0*** The old bug has been fixed, where if the user
! enters something along the lines of:
!
! >put the gun on the refrigerator. put the envelope in the desk.
!
! The code block will correctly perform the DoPutIn routine on the drawer.
!
! ***ALSO NEW TO V2.0*** You can now unlock and lock the desk and it will
! perform the proper operation on the drawer...
!
! ***ALSO NEW TO V2.0*** Vastly improved the DoLookIn code block to bring
! it up to par with the DoPutIn code block...I overlooked this is the
! last release...
!
! Any complaints, etc..can go to cbrown@utoronto.ca
! (it's my brother's account so please don't go nuts!)
!
! PS: If you are using the verbstubs library (or have your own
! DoPull and DoPush routines) then the drawer will open with a pull
! (but not if it is already open) and close with a push (but not if
! it is already closed). Pretty exciting stuff, I know...
!
! PPS: Feel free to mess with the code as much as you like! If you do
! improve on it please e-mail your changes! If you are feeling sarcastic
! you can always thank me for the "awe-inspiring" desk in the credits
! to your IF product, but if you don't no hard feelings! I know it is
! just a stupid object for all of us silly typers and code perfectionists
! (even though this code is far from perfect!)
! As freeware, no warranty is expressed or implied...Use this code at
! you own risk...If your computer explodes as a direct result of using
! this code it is not my fault!

scenery desk "wooden desk"
{
 adjectives "large" , "big" , "oak" , "wooden" , "wood"
 article "a"
 capacity 100
 in emptyroom   !change this to whatever room you want this desk to appear in!
 is static , enterable , platform , container, openable , open , lockable , locked
 noun "desk"
 long_desc {"The desk is quite large and is made of what appears to be oak. ";
            "It has no remarkable features save for a single drawer set into
             its underside."}
 before
 {
  self DoEnter , DoGo
  {
   ! If the user tries to enter the desk, this will code will be executed
   ! instead of letting him/her get onto it...
   "That's not what the desk has been designed for."
  }
  self DoOpen
  {
   ! If the user tries to open the desk, the command will be passed onto
   ! the drawer instead...
   "(Assuming that you mean the drawer rather than the desk...)"
   Perform (&DoOpen, drawer)
  }
  self DoClose
  {
   ! If the user tries to close the desk, the command will be passed onto
   ! the drawer instead
   "(Assuming that you mean the drawer rather than the desk...)"
   Perform (&DoClose, drawer)
  }
  self DoUnlock
  {
   ! If the user tries to unlock the desk, the command will be passed onto
   ! the drawer instead
   "(Assuming that you mean the drawer rather than the desk...)"
   Perform (&DoUnlock, drawer, xobject)
  }
  self DoLock
  {
   ! If the user tries to lock the desk, the command will be passed onto
   ! the drawer instead
   "(Assuming that you mean the drawer rather than the desk...)"
   Perform (&DoLock, drawer, xobject)
  }
  xobject DoPutIn
  {
   ! If the user tries to put something on or into the desk, this routine
   ! will  determine whether to put it onto the desk or into the drawer.
   local temp_a = 1
   local temp_b
   local temp_c
   do
   {
    if word[temp_a]=""
    {
     temp_c = 1
    } 
    elseif word[temp_a]="on","onto"
    {
     temp_b = 1
    }
    if temp_a=words
    {
     temp_c = 1
    }
    temp_a ++
   }
   while not temp_c
   if temp_b = 1
   {
    return false
   }
   else
   {
    "(Assuming that you mean the drawer rather than the desk...)"
    if drawer is not open
    {
     "(Attempting to open the drawer...)"
     Perform (&DoOpen, drawer)
     Perform (&DoPutIn, object, drawer)
    }
    else
    {
     Perform (&DoPutIn, object, drawer)
    }
   }
  }
  self DoLookIn
  {
   ! If the user tries to look on or in the desk, this routine
   ! will  determine whether to look on the desk or into the drawer.
   local temp_d = 1
   local temp_e
   local temp_f
   do
   {
    if word[temp_d]=""
    {
     temp_f=1
    } 
    elseif word[temp_d]="on","onto"
    {
     temp_e=1
    }
    if temp_d=words
    {
     temp_f=1
    }
    temp_d ++
   }
   while not temp_f
   if temp_e=1
   {
    return false
   }
   else
   {
    "(Assuming that you mean the drawer rather than the desk...)"
    Perform (&DoLookIn, drawer)
   }
  }
  self
  {
   ! If the user tries to do anything else to the desk (other than what has
   ! been trapped above), then it will perform as normal...
   return false
  }
 }
}

component drawer "drawer"
{
 adjectives "small" , "tiny" , "little" , "wooden"
 article "a"
 capacity 30
 is container , openable , not open , lockable , locked
 key_object small_key
 nouns "drawer" , "drawers"
 part_of desk
 long_desc {"The little drawer is attached to the underside of the desk,
             and seems to be made of the same kind of wood as the rest of the
             desk. It is ";
             if self is open
             {"open."}
             if self is not open
             {"closed."}}
 before
 {
  self DoPush
  {
   ! If the drawer is open and the user pushes it, it will close.
   ! If it is closed, he/she will be told that it is already closed..
   if self is not open
   {
    "The drawer has been pushed in as far as it will go."
   }
   else
   {
    Perform (&DoClose , self)
   }
  }
  self DoPull
  {
   ! If the drawer is closed and the user pulls it, it will open.
   ! If it is open, he/she will be told that it is already open..
   if self is open
   {
    "The drawer has been pulled out as far is it will go."
   }
   else
   {
    Perform (&DoOpen , self)
   }
  }
  self
  {
   return false
  }
 }
}

object small_key "metal key"
{
 ! This is a key object for the drawer. If you don't want the drawer to be
 ! lockable, then remove this object and remove the key_object
 ! and the lockable/locked attributes from the drawer object, 
 ! and remove the DoLock/DoUnlock routines from the BEFORE routine
 ! in the DESK object...
 adjectives "small" , "metal"
 article "a"
 in emptyroom
 noun "key"
 size 10
 long_desc {"It is a small metal key with no distinguishing features."}
}
