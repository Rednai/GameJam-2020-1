if (argument0 == false) {
	draw_set_halign(fa_center);
	draw_text(
			room_width / 2, room_height / 2,
			"Press A or E to start the level.\n"
	);
}
draw_set_halign(fa_left);
draw_set_font(fnt_text_small);

str = " death";
if (argument1 > 1)
	str += "s";
draw_text(30, 45, string(argument1) + str);
	
draw_set_font(fnt_text);
draw_set_halign(fa_center);