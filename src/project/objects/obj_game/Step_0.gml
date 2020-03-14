// Si la touche échape est pressée, on quitte le programme
if (keyboard_check_pressed(vk_escape)) {
	game_end();
}

if (keyboard_check_pressed(vk_space)) {
	room_goto(rms_level_1);
}