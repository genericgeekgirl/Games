var label = "Pumpkin Pie";
var name_plural = "Pumpkin Pies";
var article = "a";
var description = "When people use the phrase 'as nice as pie', they are, in fact, talking about this pie. What goes into it? Fresh pumpkin, crispy pastry, spicy spices, and a big dollop of love. (That's an attitude rather than a hidden ingredient, before you start feeling nauseous).";


verbs.eat = { // defined by pumpkin_pie
		var num_pies_eaten = pc.achievements_get_daily_label_count('pies_eaten', 'pumpkin');
		var num_can_eat = 5 - num_pies_eaten;

		// Don't let the player eat more than the limit.
		if (msg.count > num_can_eat) {
			msg.count = num_can_eat;
			var item = this.apiSplit(num_can_eat);
		}
		else {
			var item = this;
		}

		if (item.parent_verb_food_eat(pc, msg)){

			pc.achievements_increment_daily('pies_eaten', 'pumpkin', msg.count);

			pc.buffs_apply('full_of_pie');	
		}
		else {
			failed = 1;
		}

		return failed ? false : true;
	}
};


function getTooltip(pc){ // defined by pumpkin_pie
	return this.food_eat_tooltip(pc) + ". Grants 'Full of Pie'.";
}

function specialConditions(pc, verb_name, drop_stack){ // defined by pumpkin_pie
	var num_pies_eaten = pc.achievements_get_daily_label_count('pies_eaten', 'pumpkin');

	if (num_pies_eaten < 5) { 
		log.info("Pie calling food_eat_conditions");
		if (verb_name === "eat") {
			return this.food_eat_conditions(pc, drop_stack);
		}
		else if (verb_name === "eat_img") { 
			return this.food_eat_conditions_img(pc, drop_stack, "day");
		}
		else { 
			return this.food_eat_conditions_img(pc, drop_stack, "month");
		}
	}
	else {
		log.info("Pie can't eat pie verb name is "+verb_name);
		if (verb_name === "eat") { 
			var state = {state:'disabled', reason:"No more pie. You cannot possibly eat another slice."};
			log.info("Pie eat state is "+state);
			return state;
		}
		else {
			return {state:null};
		}
	}
}

out.push([2, "Eating this will give you the Full of Pie buff (slow movement, but mood and energy bonus)."]);

out.push([2, "This can be made with a <a href=\"\/items\/251\/\" glitch=\"item|frying_pan\">Frying Pan<\/a>."]);
