if (obj_start && obj_start.alive) {
	if (color == false && keyboard_check_pressed(obj_game.red_input)) {
		script_execute(action, obj_start.inst, self);
	} else if (color == true && keyboard_check_pressed(obj_game.blue_input)) {
		script_execute(action, obj_start.inst, self);
	}	
}