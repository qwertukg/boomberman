if (instance_find(obj_bot, 0) == noone) {
	draw_set_color(c_white)
	var padding_top = 16
	draw_text(room_width/2, padding_top + 16 * 1, "GAME OVER")
	draw_text(room_width/2, padding_top + 16 * 2, "YOUR SCORE: " + string(global.score_point))
	draw_text(room_width/2, padding_top + 16 * 3, "Press left mouse to respawn")
}