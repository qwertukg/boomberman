if (keyboard_check(vk_shift)) {
	sprite_index = spr_bot_run
} else {
	sprite_index = spr_bot_move
}

if (image_index > 2 && image_index < image_number) {
    image_index++
}

if (image_index > 0 && image_index < 3 && keyboard_key == 0) {
    image_index--
	if (image_angle == 0) x -= step
	if (image_angle == 90) y += step
	if (image_angle == 180) x += step
	if (image_angle == 270) y -= step
}

show_debug_message(image_index)



