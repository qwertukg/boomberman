if (hp <= 0) {
	var name = string(id.object_index)
	var index = string_digits(name)
	show_debug_message(index)
	if (index > 0) {
		var obj = walls[index - 1]
		instance_create_layer(x + sprite_width/4, y + sprite_height/4, 0, obj)
		instance_create_layer(x + sprite_width/4, y - sprite_height/4, 0, obj)
		instance_create_layer(x - sprite_width/4, y - sprite_height/4, 0, obj)
		instance_create_layer(x - sprite_width/4, y + sprite_height/4, 0, obj)
	}
	instance_destroy()
}