

if (keyboard_check(vk_control)) {
	
	sprite_index = spr_bot_stick
	
	if (keyboard_check(vk_right)) {
		image_angle = 0
		if (image_index >= 0 && image_index < image_number - 1) image_index++
	} else if (keyboard_check(vk_up)) {
		image_angle = 90
		if (image_index >= 0 && image_index < image_number - 1) image_index++
	} else if (keyboard_check(vk_left)) {
		image_angle = 180
		if (image_index >= 0 && image_index < image_number - 1) image_index++
	} else if (keyboard_check(vk_down)) {
		image_angle = 270
		if (image_index >= 0 && image_index < image_number - 1) image_index++
	} else if (image_index > 0) {
		image_index--
	}
	
	
} else {
	
	sprite_index = spr_bot_run
	var d = point_distance(xprevious, yprevious, x, y)
	
	if (keyboard_check(vk_right)) {
		image_angle = 0
		image_index++
		x += v
	} else if (keyboard_check(vk_up)) {
		image_angle = 90
		image_index++
		y -= v
	} else if (keyboard_check(vk_left)) {
		image_angle = 180
		image_index++
		x -= v
	} else if (keyboard_check(vk_down)) {
		image_angle = 270
		image_index++
		y += v
	} 

	else if (d == 0 && image_index > 0) {
		image_index--
		if (image_angle == 0) x -= v
		if (image_angle == 90) y += v
		if (image_angle == 180) x += v
		if (image_angle == 270) y -= v
	}
	
}

show_debug_message(image_index)



