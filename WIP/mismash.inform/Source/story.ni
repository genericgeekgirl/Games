"A Game of Sorts" by Adri.
The story headline is "proof of concept".
The story description is "A dumb idea inspired by DougO".

Use no scoring.

Rule for printing the banner text: do nothing.
    
Requesting info is an action out of world.
Understand "about" as requesting info.

Carry out requesting info: 
say "'[story title]' by [story author].[line break]";
say "The story headline is '[story headline]'.[line break]";
say "The story description is '[story description]'."

The House is a region.
    
The Attic is a room in the House. "The Attic is a room."

The AtticObject is a proper-named undescribed thing in the Attic. The printed name is "Attic". Understand "Attic " as AtticObject. The description is "The Attic is a room[if the atticobject is enclosed by the player] carried by the player[end if]."

After taking the AtticObject when the location of the AtticObject is Attic:
	if the player does not carry the livingroomobject:
		move the player to the Living Room;
	otherwise if the player does not carry the basementobject:
		move the player to the basement;
	otherwise:
		move the player to nonroom.

After dropping the AtticObject:
    move the atticobject to the attic;
    now the atticobject is undescribed;
    move the player to the Attic.
    
The Living Room is a room in the House. "The Living Room is a room."

The LivingRoomObject is an proper-named undescribed thing in the Living Room. The printed name is "Living Room". Understand "Living Room " as LivingRoomObject. The description is "The Living Room is a room[if the livingroomobject is enclosed by the player] carried by the player[end if]."

After taking the LivingRoomObject when the location of the LivingRoomObject is Living Room:
	if the player does not carry the basementobject:
		move the player to the Basement;
	otherwise:
		move the player to nonroom.

After dropping the LivingRoomObject:
    move the livingroomobject to the living room;
    now the livingroomobject is undescribed;
    move the player to the living room.
    
The Basement is a room in the House. "The Basement is a room."

The BasementObject is an proper-named undescribed thing in the Basement. The printed name is "Basement". Understand "Basement " as BasementObject. The description is "The Basement is a room[if the basementobject is enclosed by the player] carried by the player[end if]."

After dropping the basementobject:
    move the basementobject to the basement;
    now the basementobject is undescribed;
    move the player to the Basement.
    
After taking the BasementObject when the location of the BasementObject is Basement:
move the player to NonRoom.

NonRoom is a room. The printed name is "Nowhere".
   
The description of the player is "The player is a person that varies."

The vampire is a male person in the Attic. The description is "The vampire is a male person [if the vampire is enclosed by the player]carried by the player[otherwise]in the [location of the vampire][end if]."

The can't take other people rule is not listed in any rulebook.

The bat is a male animal. The description is "The bat is a male animal [if the bat is enclosed by the player]carried by the player[otherwise]in the [location of the bat][end if]."

