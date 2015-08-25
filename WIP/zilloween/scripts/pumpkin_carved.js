var label = "Jack the Pumpkin";
var name_plural = "Pumpkins Jack";
var article = "a";
var description = "Part-vegetable, part-sprite, this is Jack. He makes you feel a little autumnal, a little festive, and a little like your soul might get dragged, screaming, from your sleeping body.";

var label = "Steve the Pumpkin";
var name_plural = "Pumpkins Steve";
var article = "a";
var description = "A widely-grinning pumpkin, ready to party (with the addition of fireflies). Could be accessorised with a pile of pepitas to make a puking pumpkin, but that's a matter of taste. Or lack of taste. Whatever.";

var label = "Hello Pumpkin!";
var name_plural = "Hello Pumpkins";
var article = "a";
var description = "The only hollowed out vegetable so cute you'd happily put it in your pocket and carry it around all day. Or at least, you would if it didn't weigh 50lb and smell of decomposing food. Hello Pumpkin!";

var label = "Zille the Pumpkin";
var name_single = "Zille the Pumpkin";
var name_plural = "Pumpkins Zille";
var article = "a";
var description = "A traditional Zilloween decoration, this is a common-or-garden pumpkin carved into a representation of Zille, giant of mountains and mining. Already pretty magical, it will become more magical with the addition of fireflies.";

var label = "Lem the Pumpkin";
var name_single = "Lem the Pumpkin";
var name_plural = "Pumpkins Lem";
var article = "a";
var description = "To mark the special relationship between the Lemmites and the Zillots, the Lem Pumpkin was created by a particularly talented Lemmite carver named Myuki. Zille, apparently, was unimpressed at this sharing of her holiday. But Lem loved it.";


return {state:'disabled', reason: "A carved pumpkin can only be placed inside or near the entrance to your house, or in party spaces."};

pc.achievements_increment('pumpkins_placed', 'lit');
pc.achievements_increment('pumpkins_placed', 'carved');

verbs.smash = { // defined by carved_pumpkin_base
		pc.createItemFromGround('pepitas', 5, false);
		pc.sendActivity('"PUNKIN-SMASH! Oh! You got pepitas!"');

verbs.light = { // defined by carved_pumpkin_base
	"tooltip"			: "Light this pumpkin",
	"drop_tip"			: "Use all 7 fireflies to light pumpkin",

		return {state:'disabled', reason:'You need a full Firefly Jar to light a Pumpkin'};

