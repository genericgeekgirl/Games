var label = "Pumpkin";
var name_plural = "Pumpkins";
var article = "a";
var description = "One plump and thick-skinned pumpkin. Perfect for carving, mulching, munching, and, in times of need, for using as a carriage drawn by tamed gerbils.";

verbs.carve:
return {state:'disabled', reason:'You need a Pick (or Fancy Pick) and a Knife & Board to carve'};

onCarveComplete()
var face_type = (Math.floor(5 * Math.random()) + 1);

pc.createItem('pumpkin_carved_'+face_type, 1, false);
pc.createItem('pepitas', 5, false);
pc.createItem('jellisac_clump', 1, false);

pc.achievements_increment('pumpkins_carved', 'number_'+face_type);

var growls = [	'Carved, the pumpkin is something special. Something with personality. Something that will sit, staring, waiting until you fall asleep. Hm. Maybe you can put it outside.',
		'You hacked and sliced and created life from the hard shell of a gourdy vegetable.',
		'A moment ago it was just a pumpkin. Now it\'s kind of terrifying.',
		'You created life from dead matter. You\'re the Frankenstein of vegetables. Now reanimate it with fireflies!',
		'You made a little pumpkin friend. At least this one won\'t talk back. Or WILL it?',
		'The pumpkin, freshly carved, stares at its creator with something halfway between love and hunger.',
		'The carved pumpkin is now filled with personality. Good personality? Or evil? Who can tell?',
		'This used to be just a vegetable. Now, you could have sworn it just winked at you.',
		'It\'s still just a pumpkin, but now carved, you could have sworn it whispered at you. Something about fireflies?'];

	pc.sendActivity(choose_one(growls));

out.push([2, "You can grow this by planting <a href=\"\/items\/927\/\" glitch=\"item|seed_pumpkin\">Pumpkin Seeds<\/a> in a Crop or Herb Garden."]);
