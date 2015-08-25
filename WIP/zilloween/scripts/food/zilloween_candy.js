out.push([2, "Eating this will give you the Sugar Rush buff (faster movement, mood bonus)."]);

verbs.eat = { // defined by zilloween_candy
    
    var num_candies_eaten = pc.achievements_get_daily_label_count('candy_eaten', 'zilloween');
    var num_can_eat = 11 - num_candies_eaten;
    
    // Don't let the player eat more than the number that gives them toothache.
    if (msg.count > num_can_eat) {
	msg.count = num_can_eat;
	var item = this.apiSplit(num_can_eat);
    }
    else {
	var item = this;
    }
    
    if (item.parent_verb_food_eat(pc, msg)){
	
	var zilloween = isZilloween();
	
	var num = msg.count; 
	pc.achievements_increment_daily('candy_eaten', 'zilloween', num);
	
	if (zilloween) {
	    pc.achievements_increment('candy_eaten', 'zilloween', num);
	    
	    pc.zilloweenBoostCheck(this.class_tsid);
	}
	
	if ((num_candies_eaten + num) >= 11) {
-	    var mood_loss = Math.abs(pc.metabolics_lose_mood(10));
	    pc.sendActivity("OW! TOOTHACHE! Stupid candy. Stupid, delicious, scrumptious, addictive candy. No more candy today. You lose "+mood_loss+" mood.");
	    
	    num -= 1; // subtract one - the final candy doesn't give sugar rush
	}
	
	if (num > 0) {
	    

	    if (!pc.buffs_has('sugar_rush')) {
					pc.buffs_apply('sugar_rush');
		var buff = pc.buffs_get_instance('sugar_rush');
	    }
	    else {	
		// Player already has the buff.
		var buff = pc.buffs_get_instance('sugar_rush');
		
		// Add one so the numbers work out correctly here
		num = num + 1;
	    }
	    
	    if (num > 1) {
		var proto = pc.buffs_get('sugar_rush');
		 
		var dur = proto.duration;
		pc.buffs_extend_time('sugar_rush', (num-1) * dur);
	    }
	}	
    }
    else {
	failed = 1;
    }
    
    return failed ? false : true;
}
};


function onGive(pc, msg){ // defined by zilloween_candy
	if (msg.object_pc_tsid) { 
		var giftee = msg.object_pc_tsid;
	}

	if (isZilloween() && giftee) {

		pc.achievements_increment('zilloween_candy_given', giftee);
		
		log.info("CANDY "+giftee);

		var player = getPlayer(giftee);

		if (player) {
			player.zilloweenTreater(pc, this.class_tsid);
		}
	}
}

function specialConditions(pc, verb_name, drop_stack){ // defined by zilloween_candy
	if (pc.achievements_get_daily_label_count('candy_eaten', 'zilloween') < 11) {
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
		if (verb_name == "eat") { 
			return {state:"disabled", reason:"No more candy today. You don\'t want toothache again."};
		}
		else { 
			return {state:null};
		}
	}
}



