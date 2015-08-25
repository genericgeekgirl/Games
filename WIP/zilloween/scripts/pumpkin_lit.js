var label = "Jack-O-Lantern";
var name_single = "Jack-O-Lantern";
var name_plural = "Jack-O-Lanterns";
var article = "a";
var description = "A carved pumpkin lit from the inside with the power of fireflies. You'd think this would make it look more warm and comforting. But no, still terrifying (for a vegetable).";

var label = "Steve-O-Lantern";
var name_single = "Steve-O-Lantern";
var name_plural = "Steve-O-Lanterns";
var article = "a";
var description = "A gurning, gape-mouthed, firefly-filled glowing pumpkin, smelling of decomposing root, and overcooked vegetables. How very seasonal.";

var label = "Shiny Hello Pumpkin!";
var name_plural = "Shiny Hello Pumpkins!";
var article = "a";
var description = "A brightly-lit cute kitty pumpkin lantern. As cute as a vegetable that has been set about with a knife until it resembles an animal and then set on fire with a face full of insects can be. Pretty cute then!";

var label = "Zille-O-Lantern";
var name_plural = "Zille-O-Lantern";
var article = "a";
var description = "A common seasonal vegetable carved into a representation of Zille, and filled with fireflies to create an eerie glow. And it IS eerie. If you squint, it's like her eyes (and the burny pumpkin smell) are following you around the room.";

var label = "Lem-O-Lantern";
var name_plural = "Lem-O-Lanterns";
var article = "a";
var description = "An unusual addition to Zilloween, the Lem-O-Lantern, marking the special relationship between Zillots and Lemmites, has long been created for the festival by vegetablartistes. It is especially prized, as it uses a special flick of the pick known as \"The Myuki Technique\".";

verbs.smash = { // defined by lit_pumpkin_base
		pc.createItemFromGround('pumpkin_pie', 1, false);
		pc.sendActivity('"PUNKIN-SMASH! Oh! You got a pumpkin pie!"');
	}
};


verbs.teach = { // defined by lit_pumpkin_base
    "tooltip"			: "Teach me a new phrase",
    var txt = "I can't learn anymore phrases. Pick one for me to forget!";
    var txt = "Teach me a new phrase or pick one for me to forget!";
    return this.conversation_reply(pc, msg, "Ok, forgot that one.");
    1: {value: 'teach', txt: 'I have a witty phrase.'}
    var txt = "Want to teach me a new phrase?";
    var reply = 'MWA-HA-HA! Now I\'ve learned how to say "'+utils.filter_chat(value)+'"' ;

