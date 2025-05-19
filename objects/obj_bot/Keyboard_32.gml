if (!instance_place(x, y, obj_bomb)) {
	create_bomb(x, y, bomb_power, bomb_timer)
	show_debug_message("!!!")
}