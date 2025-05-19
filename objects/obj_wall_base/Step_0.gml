if (hp <= 0) {
	var name = string(id.object_index)
	var index = string_digits(name)
	if (index > 0) {
		var obj = walls[index - 1]
		instance_create_layer(x + sprite_width/4, y + sprite_height/4, 0, obj)
		instance_create_layer(x + sprite_width/4, y - sprite_height/4, 0, obj)
		instance_create_layer(x - sprite_width/4, y - sprite_height/4, 0, obj)
		instance_create_layer(x - sprite_width/4, y + sprite_height/4, 0, obj)
	}
	
	var player = instance_find(obj_bot, 0)
	if (player != noone) player.score_point += sprite_width * sprite_height
	
	instance_destroy()
}

if (hp <= (sprite_width * sprite_height) / 2 && image_index + 1 < image_number) {
	image_index++
}