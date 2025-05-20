time--
if (time > 0) exit 

is_armed = true
sprite_index = spr_bomb_detect

var dist_to_bomb = point_distance(x, y, global.player.x, global.player.y)
show_debug_message("distance " + string(dist_to_bomb))

if (is_armed && dist_to_bomb <= distance) {
	image_speed = 10
	is_detonate = true
}

event_inherited()