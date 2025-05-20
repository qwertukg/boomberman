if (!instance_place(x, y, obj_bomb_detect) && detect_bomb_count > 0 /*&& image_index == 0*/) {
	create_bomb_detect(x, y, detect_bomb_power, detect_bomb_timer, 1)
	detect_bomb_count--
}