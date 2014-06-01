undum.game.id = "BA8BAD18-5D29-44EE-AC52-97DCD3E1D8CF";

undum.game.version = "1.0";

undum.game.situations = {

    blackhorse: new undum.Situation({
        enter: function(character, system, from) {
	    system.write($("#blackhorse").html());
            system.write($("#wronghorse").html());
	}
    }),

    brownhorse: new undum.Situation({
        enter: function(character, system, from) {
	    system.write($("#brownhorse").html());
            system.write($("#wronghorse").html());
	}
    }),

};

undum.game.start = "start";

undum.game.qualities = {};

undum.game.qualityGroups = {};

undum.game.init = function(character, system) {};
