#charset "us-ascii" 
#include <adv3.h> 
#include <en_us.h> 


 
gameMain: GameMainDef 
    /* the initial player character is 'me' */ 
    initialPlayerChar = me 
; 

/* You could customize this if you wished */ 
versionInfo: GameID   
 /* The IFID can be any random set of hexadecimal digits in this format */ 
IFID = '5b252939-8c87-0a51-dd3f-eafb1c07da05' 
    name = 'Gold Skull' 
    byline = 'by A TADS 3 Tyro' 
    htmlByline = 'by <a href="mailto:$EMAIL$"> 
                  $AUTHOR$</a>' 
    version = '1' 
    authorEmail = '$AUTHOR$ <$EMAIL$>' 
    desc = '$DESC$' 
    htmlDesc = '$HTMLDESC$' 
; 

startroom: Room                  /* we could call this anything we liked */ 
    roomName = 'Outside cave'    /* the "name" of the room */ 
    desc = "You're standing in the bright sunlight just 
    outside of a large, dark, foreboding cave, which 
    lies to the north. " 
    north = cave         /* the room called "cave" lies to the north */ 
  ; 

+ me: Actor /* This may already be there if you started from starta3.t */ 
; 

cave: Room 
    roomName = 'Cave' 
    desc = "You're inside a dark and musty cave. Sunlight 
    pours in from a passage to the south. " 
    south = startroom 
; 