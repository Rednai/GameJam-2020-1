if (color == false && keyboard_check_pressed(red_input)) {
	script_execute(action);
} else if (color == true && keyboard_check_pressed(blue_input)) {
	script_execute(action);
}