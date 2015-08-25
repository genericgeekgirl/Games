#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

versionInfo: GameID
    IFID = 'DA0F1D1A-0ABA-4E31-A2CC-87C8AFFEB09B'
    name = 'The Further Adventures of Heidi'
    byline = 'by Adri'
    htmlByline = 'by <a href="mailto:your-email@your-address.com">
                  Adri</a>'
    version = '1.0'
    authorEmail = 'Adri <your-email@your-address.com>'
    desc = 'This is an unexciting tutorial game based loosely on
	    The Adventures of Heidi by Roger Firth and Sonja Kesserich.'
    htmlDesc = 'This is an unexciting tutorial game based loosely on
		<i>The Adventures of Heidi</i> by Roger Firth and Sonja Kesserich.'

    showCredit()
    {
	"The TADS 3 language and library were created by Michael J.
	 Roberts.<.p>
	 The original <i>Adventures of Heidi</i> was a simple tutorial game
	 for the Inform language written by Roger Firth and Sonja Kesserich.";
        "\b";
    }
    showAbout()
    {
      "<i>The Further Adventures of Heidi</i><.p>
       A Tutorial Game for TADS 3"; 
  }
;


me: Actor
    location = outsideCottage
;


gameMain: GameMainDef
    initialPlayerChar = me

    showIntro()
    {
        "Welcome to the Further Adventures of Heidi!\b"; 
    }

    showGoodbye()
    {
        "<.p>Thanks for playing!\b";
    }
    maxScore = 7
    beforeRunsBeforeCheck = nil 
;

outsideCottage: OutdoorRoom
    roomName = 'In front of a cottage'
    desc = "You stand just outside a cottage; the forest stretches east. "
    east= forest
    in = insideCottage
    west asExit(in)  
;

+ Enterable ->insideCottage 'pretty little
			     cottage/house/building' 'pretty little cottage'
			     "It's just the sort of pretty little cottage that townspeople dream of living in,
			      with roses round the door and a neat little window frame freshly painted in green. "
; 

forest : OutdoorRoom 'Deep in the Forest'
    "Through the deep foliage you glimpse a building to the west.
     A track leads to the northeast, and a path leads south. "
     west = outsideCottage
     northeast = clearing
;

clearing : OutdoorRoom 'Clearing'
    "A tall sycamore tree stands in the middle of this clearing.
     One path winds to the southwest, and another to the north. "
     southwest = forest
    north : FakeConnector {"You decide against going that way right
			    now. "}


    up : OneWayRoomConnector
      {
	  destination = topOfTree
	      canTravelerPass(traveler) { return chair.isIn(clearing); }
	  explainTravelBarrier(traveler)
	  {
	      "The lowest bough is just too high for
	       you to reach. "; }
      }
  
    
;


+ tree : Fixture 'tall sycamore tree' 'tree'
"Standing proud in the middle of the clearing, the stout
 tree looks like it should be easy to climb. "
dobjFor(Climb) remapTo(Up) 
;

topOfTree : OutdoorRoom 'At the top of the tree'
    "You cling precariously to the trunk, next to a firm, narrow
     branch. "
     down = clearing
;


insideCottage : Room 'Inside Cottage'
      "You are in the front parlour of the little cottage. The door out
           is to the east. "
out = outsideCottage
east asExit(out)
;

+ chair : Chair 'wooden chair' 'wooden chair'
  "It's a plain wooden chair. "
initSpecialDesc = "A plain wooden chair sits in the corner. " 
;


