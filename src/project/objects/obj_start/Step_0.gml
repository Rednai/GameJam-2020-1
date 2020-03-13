if (alive == false) {
	if (keyboard_check_pressed(obj_game.red_input) || keyboard_check_pressed(obj_game.blue_input)) {
		instance_create_layer(x - 60, y - 60, "Instances", obj_player);
		alive = true;
	}
}