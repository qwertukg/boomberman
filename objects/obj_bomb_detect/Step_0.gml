time--
if (time > 0) exit 

is_armed = true

if (!is_detonate) {
	sprite_index = spr_bomb_detect_armed
	image_speed = 2
}

var dist_to_bomb = point_distance(x, y, global.player.x, global.player.y)
if (is_armed && dist_to_bomb <= distance) {
	image_speed = 10
	is_detonate = true
	
}

event_inherited()