var label = "Firefly Jar";
var name_plural = "Firefly Jars";
var article = "a";
var description = "This is no ordinary jar. Well, it IS, but once filled with fireflies (seven maximum: objects in space need room to fly) just looking at it gives you a great sense of serenity.";

verbs.open
    
return {state:'disabled', reason: "You need the Firefly Whisperer achievement."};
return {state:'disabled', reason: "It is already open."};
return {state:'disabled', reason: "There are no Fireflies nearby."};


self_msgs.push(pluralize(fireflies_inside, 'Firefly', 'Fireflies')+' escaped!');

if (energy) pc.sendActivity("Whew! Whistlin' is hard work. You lose "+energy+" energy.");


if (pc && (!pc.achievements_has("firefly_whistling"))) out.push([1, "You won't be able to coax fireflies into this jar till you get the <b>Firefly Whistling<\/b> achievement."]);
