if (instance_find(obj_bot, 0) == noone) {
	draw_set_color(c_white)
	draw_text(room_width/2, 100, "GAMR OVER")
	draw_text(room_width/2, 100 + 16, "Press left mouse to respawn")
}