if (obj_game.alive == false) {
	if (keyboard_check_pressed(obj_game.red_input) || keyboard_check_pressed(obj_game.blue_input)) {
		inst = instance_create_layer(x, y, "Instances", obj_robot);
		inst.y = y - (128 - inst.sprite_yoffset);
		obj_game.alive = true;
	}
}