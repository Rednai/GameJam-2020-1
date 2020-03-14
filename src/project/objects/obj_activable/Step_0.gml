if (color == false && keyboard_check_pressed(obj_game.red_input)) {
	script_execute(action, obj_robot,	);
} else if (color == true && keyboard_check_pressed(obj_game.blue_input)) {
	script_execute(action, obj_robot, self);
}