#charset "us-ascii"

/*
 *   Copyright (c) 1999, 2002 by Michael J. Roberts.  Permission is
 *   granted to anyone to copy and use this file for any purpose.  
 *   
 *   This is a starter TADS 3 source file.  This is a complete TADS game
 *   that you can compile and run.
 *   
 *   To compile this game in TADS Workbench, open the "Build" menu and
 *   select "Compile for Debugging."  To run the game, after compiling it,
 *   open the "Debug" menu and select "Go."
 *   
 *   This is the "advanced" starter game - it has only the minimum set of
 *   definitions needed for a working game.  If you would like some more
 *   examples, create a new game, and choose the "introductory" version
 *   when asked for the type of starter game to create.  
 */

/* 
 *   Include the main header for the standard TADS 3 adventure library.
 *   Note that this does NOT include the entire source code for the
 *   library; this merely includes some definitions for our use here.  The
 *   main library must be "linked" into the finished program by including
 *   the file "adv3.tl" in the list of modules specified when compiling.
 *   In TADS Workbench, simply include adv3.tl in the "Source Files"
 *   section of the project.
 *   
 *   Also include the US English definitions, since this game is written
 *   in English.  
 */
#include <adv3.h>
#include <en_us.h>

/*
 *   Our game credits and version information.  This object isn't required
 *   by the system, but our GameInfo initialization above needs this for
 *   some of its information.
 *   
 *   IMPORTANT - You should customize some of the text below, as marked:
 *   the name of your game, your byline, and so on.  
 */
versionInfo: GameID
    name = 'TADS 3 Starter Game'
    byline = 'by An Author'
    htmlByline = 'by <a href="mailto:your-email@your-address.com">
                  YOUR NAME</a>'
    version = '1.0'
    authorEmail = 'YOUR NAME <your-email@your-address.com>'
    desc = 'CUSTOMIZE - this should provide a brief description of
            the game, in plain text format.'
    htmlDesc = 'CUSTOMIZE - this should provide a brief description
                of the game, in <b>HTML</b> format.'

    showCredit()
    {
        /* show our credits */
        "Put credits for the game here. ";

        /* 
         *   The game credits are displayed first, but the library will
         *   display additional credits for library modules.  It's a good
         *   idea to show a blank line after the game credits to separate
         *   them visually from the (usually one-liner) library credits
         *   that follow.  
         */
        "\b";
    }
    showAbout()
    {
        "Put information for players here.  Many authors like to mention
        any unusual commands here, along with background information on
        the game (for example, the author might mention that the game
        was created as an entry for a particular competition). ";
    }
;

/* 
 *   Starting location - we'll use this as the player character's initial
 *   location.  The name of the starting location isn't important to the
 *   library, but note that it has to match up with the initial location
 *   for the player character, defined in the "me" object below.
 *   
 *   Our definition defines two strings.  The first string, which must be
 *   in single quotes, is the "name" of the room; the name is displayed on
 *   the status line and each time the player enters the room.  The second
 *   string, which must be in double quotes, is the "description" of the
 *   room, which is a full description of the room.  This is displayed
 *   when the player types "look around," when the player first enters the
 *   room, and any time the player enters the room when playing in VERBOSE
 *   mode.  
 */
startRoom: Room 'Start Room'
    "This is the starting room. "
;

/*
 *   Define the player character.  The name of this object is not
 *   important, but note that it has to match up with the name we use in
 *   the main() routine to initialize the game, below.
 *   
 *   Note that we aren't required to define any vocabulary or description
 *   for this object, because the class Actor, defined in the library,
 *   automatically provides the appropriate definitions for an Actor when
 *   the Actor is serving as the player character.  Note also that we
 *   don't have to do anything special in this object definition to make
 *   the Actor the player character; any Actor can serve as the player
 *   character, and we'll establish this one as the PC in main(), below.  
 */
me: Actor
    /* the initial location */
    location = startRoom
;


/*
 *   The "gameMain" object lets us set the initial player character and
 *   control the game's startup procedure.  Every game must define this
 *   object.  For convenience, we inherit from the library's GameMainDef
 *   class, which defines suitable defaults for most of this object's
 *   required methods and properties.  
 */
gameMain: GameMainDef
    /* the initial player character is 'me' */
    initialPlayerChar = me

    /* 
     *   Show our introductory message.  This is displayed just before the
     *   game starts.  Most games will want to show a prologue here,
     *   setting up the situation for the player, and show the title of the
     *   game.  
     */
    showIntro()
    {
        "Welcome to the TADS 3 Starter Game!\b";
    }

    /* 
     *   Show the "goodbye" message.  This is displayed on our way out,
     *   after the user quits the game.  You don't have to display anything
     *   here, but many games display something here to acknowledge that
     *   the player is ending the session.  
     */
    showGoodbye()
    {
        "<.p>Thanks for playing!\b";
    }
;
