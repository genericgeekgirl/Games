var label = "Pumpkin Seed";
var name_plural = "Pumpkin Seeds";
var article = "a";
var description = "A packet of Pumpkin seeds. This can be planted to grow one mighty <a href=\"\/items\/928\/\" glitch=\"item|pumpkin\">Pumpkin<\/a> at a time in either a Crop Garden or a Herb garden.";

var classProps = {
	"collection_id"	: "",	// defined by takeable
	"produces_class"	: "pumpkin",	// defined by seed_base (overridden by seed_pumpkin)
	"produces_count"	: "1",	// defined by seed_base
	"time_grow1"	: "3",	// defined by seed_base (overridden by seed_pumpkin)
	"time_grow2"	: "3"	// defined by seed_base (overridden by seed_pumpkin)
};

verbs.lament
"tooltip"			: "Close your eyes and wish hard for Zilloween to come again",

'You wished hard, and lamented the calendar, but Zilloween did not come, so you could not plant your seeds. At least you learnt something.'


	out.push([2, "This can be purchased from a <a href=\"\/items\/1000003\/\" glitch=\"item|npc_streetspirit_gardening_goods\">Gardening Goods Vendor<\/a> or a <a href=\"\/items\/365\/\" glitch=\"item|npc_gardening_vendor\">Gardening Tools Vendor<\/a>."]);
	return out;

