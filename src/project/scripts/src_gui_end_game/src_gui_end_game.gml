draw_set_halign(fa_center);
var text = "You are dead " + string(argument0);
if (argument0 > 1) {
	text += " times\n";
} else {
	text += " time\n";
}
draw_text(
	room_width / 2, room_height / 2,
	 text
);