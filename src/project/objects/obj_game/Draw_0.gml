draw_set_color(c_white);
draw_set_font(fnt_text);
switch (room) {
	case rms_title_menu:
		script_execute(src_gui_game);
		break;
	
	case rms_end_game:
		script_execute(src_gui_end_game, death_count);
		break;
	
	default:
		script_execute(src_gui_game, alive);
}