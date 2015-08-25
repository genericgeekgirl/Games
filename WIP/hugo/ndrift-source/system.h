!----------------------------------------------------------------------------
!
!        Hugo System Library v2.5.03.5 by Kent Tessman (c) 1995-2001
!                     for use with the Hugo Compiler
!
!----------------------------------------------------------------------------

#ifclear _SYSTEM_H
#set _SYSTEM_H

#version 2.5

! Constant definitions for use with the system() function, as in:
!
!	system(<function>)

! For system_status:
#if undefined STAT_UNAVAILABLE
constant STAT_UNAVAILABLE 	 -1
constant STAT_NOFILE		101
constant STAT_NORESOURCE	102
constant STAT_LOADERROR		103
#endif

constant READ_KEY		11
constant NORMALIZE_RANDOM	21
constant INIT_RANDOM		22
constant PAUSE_SECOND		31
constant PAUSE_100TH_SECOND	32

#endif	! _SYSTEM_H
