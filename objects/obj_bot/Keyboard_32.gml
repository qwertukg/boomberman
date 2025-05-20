if (!instance_place(x, y, obj_bomb_timer) && bomb_count > 0 /*&& image_index == 0*/) {
	create_bomb(x, y, bomb_power, bomb_timer, 0)
	bomb_count--
}