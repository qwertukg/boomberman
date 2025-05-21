if (!instance_place(x, y, obj_bomb) && bomb.count > 0 /*&& image_index == 0*/) {
	create_bomb(x, y, bomb)
	bomb.count--
}