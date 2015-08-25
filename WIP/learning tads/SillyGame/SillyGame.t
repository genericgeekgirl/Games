#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

gameMain: GameMainDef
    initialPlayerChar = me

    showIntro()
    {
	"Welcome to my game.";
    }
    showGoodbye()
    {
	"Thanks!";
    } 
    beforeRunsBeforeCheck = nil    
;

versionInfo: GameID
    name = 'Working Title'
    byline = 'by Adri'
    authorEmail = 'Adri <genericgeekgirl@gmail.com>'
    headline = 'An interactive something or other - TODO'
    desc = 'This is a silly little game while I tried to learn TADS 3.'
    version = '1'
    genre = 'fantasy'
    IFID = '6E5B71E2-5ECA-401D-BAB3-3585740505CC'

    showCredit() 
    { 
	"CREDITS.";
    }

    showAbout()
    {
	"<<desc>>";
    }
;

livingRoom: Room 'Living Room'
    "This is the living room. Description forthcoming. The closet is to the southwest. "
    southwest = closet
;

+ me: Actor
desc = "Handsome "
; 

+ Enterable ->closet 'closet' 'closet'
    "The closet holds winter coats and assorted outdoor toys. "
;

closet: Room 'Inside the Closet' 
    "The closet holds winter coats and assorted outdoor toys. " 
    out = livingRoom
    northeast asExit(out)
    
   enteringRoom(traveler)
   {
       "Oh hai";
   }
;



table: Surface, Fixture
   name = 'table'
   noun = 'table'
   location = livingRoom
;

+ pumpkin: Thing 'carved pumpkin/lantern'
'carved pumpkin'
"It's a pumpkin!"

initSpecialDesc = "A pumpkin is here! "
;

