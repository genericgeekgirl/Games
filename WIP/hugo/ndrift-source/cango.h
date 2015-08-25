! Following is a handy little routine for Hugo 2.5+ that provides exit 
! descriptions for rooms. All you need to do to use it is make sure you
! use the dir.to properties to code your exits, and *don't put any other
! code in them*. For example,
!
!       e_to DinkyRoom
!
! is acceptable, while something like
!
!       e_to { move thingie to player : return DinkyRoom }
!
! is not. Also, each location that needs to be referred to with a preposition
! needs to be supplied with one. For example,
!
!       room street "street running in front of the park"
!       { ...
!         prep " a"
!         ...
!       }
!
! Notice the leading space in the preposition property. That is reqired
! in order to allow rooms that *don't* need a preposition to print
! out properly. Now, all you need to do to make this thing work is to call
! YouCanGo() after each room's long description:
!
!       room street "street running in front of the park"
!       { ...
!         prep " a"
!         long_desc { "You are on a narrow street fronting the park."
!                     YouCanGo()
!                   }
!       }
!
! That's it! Everything else is automatic, including door-handling.
! Enjoy! This document copyright (c) 2000 by Cardinal Teulbachs


array go_dirs[13]

routine YouCanGo(state_var)
{
   local n, p, cnt, the_dir, list_ref



   if location = Academy_Videos
   {
	"There's an exit east, through the door, to Main Street. ";

	if Zombiebot not in location
	{
		"The clerk has barred the door as he doesn't want anyone else entering the store before he closes, though."
	}
	else
	{
		""
	}

	return
   } 


   go_dirs[1] = location.n_to 
   go_dirs[2] = location.s_to
   go_dirs[3] = location.e_to
   go_dirs[4] = location.w_to
   go_dirs[5] = location.ne_to
   go_dirs[6] = location.nw_to
   go_dirs[7] = location.se_to
   go_dirs[8] = location.sw_to
   go_dirs[9] = location.in_to
   go_dirs[10] = location.out_to
   go_dirs[11] = location.u_to
   go_dirs[12] = location.d_to

   for(n = 1; n <= 12; n++)
   {
     if go_dirs[n]
     {
       go_dirs[0] = 1
       break
     }
     else
       go_dirs[0] = 0
   }

   if go_dirs[0] = 0                          ! if nowhere to go
   { "There's no place to go from here."
     return true                                ! bail out
   }


   if (state_var) = 1
	{

	   "There's not a path in that direction.\n"
	}

   "There's an exit ";

   for (n=1; n<=12; n++)                ! begin Exits loop
   {
     if go_dirs[n] ~= 0                 ! skip empty array elements
     {
       if go_dirs[n].type = door
       {
         local x
         for (x=1; x<=2; x++)
         {
           if go_dirs[n].between#x ~= location
             the_dir = go_dirs[n].between#x
         }
       }
       else
         the_dir = go_dirs[n]

       if go_dirs[n] = location.n_to : print "north to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.s_to : print "south to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.e_to : print "east to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.w_to : print "west to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.ne_to : print "northeast to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.nw_to : print "northwest to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.se_to : print "southeast to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.sw_to : print "southwest to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.in_to : print "in to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.out_to : print "out to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.u_to : print "up to"; the_dir.prep; " "; the_dir.name;
       elseif go_dirs[n] = location.d_to : print "down to"; the_dir.prep; " "; the_dir.name;
     
       cnt = 0
       for (p=n; p<=12; p=p+1)         ! determine whether list end
       {
         if go_dirs[p] ~= 0 
           cnt++
       }

       if cnt = 2 : ", or ";                   ! choose appropriate punct.
       elseif cnt >= 3 : ", ";
       elseif cnt = 1 : { "." : break }        ! and break if end

       cnt = 0                                  ! reset counter for next pass
       list_ref = 0
     }
   }
   local m
   for (m=0; m<=12; m++)                        ! flush array
      go_dirs[m] = 0
   return true                                  ! return true to advance turn
}

