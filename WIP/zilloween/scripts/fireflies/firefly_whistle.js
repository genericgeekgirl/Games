var label = "Firefly Whistle";
var name_plural = "Firefly Whistles";
var article = "a";
var description = "A Firefly Whistle, perfect for whistling at fireflies. I wonder if that's how it got its name.";

"tooltip"			: "Take the whistle",
// Taking the whistle destroys it and plays the following sequence:

// A VOG overlay: "Glakkk-k-k-krhkphrmg!" which stays up for 1500ms
// Simultaneously, Ava does hit state 1, walks 5px left, then hit state 2, then 5px right, then hit state 1, then surprise animation, during which it issues a talk bubble "Gah. I've swallowed it!"
// 2 seconds after talk bubble appears. A broken, wheezy, whistle sound plays (2 secs). At the end, the bubble disappears.
// After 2 more seconds pause, the achievement is granted "You have the Firefly Whistling ability!"
