frame++
var vx = lengthdir_x(v, image_angle);
var vy = lengthdir_y(v, image_angle);

for (var i = 0; i < array_length(moves); i++) {
	var key = moves[i][3]

	if (keyboard_check(key) && current_key == noone) {
		// Предсказанное движение
		var dx = moves[i][0]
		var dy = moves[i][1]
		var test_x = x + v * dx
		var test_y = y + v * dy
		
		// Проверка на стену
		if (instance_place(test_x, test_y, obj_wall_base) == noone) {
			current_vx = dx;
			current_vy = dy;
			current_angle = moves[i][2];
			current_key = key
		}
	}
}

if (current_key != noone) {
	image_index++
	image_angle = current_angle
	x += v * current_vx
	y += v * current_vy

}

if (image_index == image_number) {
	current_key = noone
}

// back if intersect wall
if (instance_place(x, y, obj_wall_base) != noone) {
	x -= v * current_vx
	y -= v * current_vy
}

// GAME OVER
if (hp <= 0) {
	instance_destroy()
}

// boomb upgrade
if (score_point > upgrade_score * bomb_power) {
	bomb_power++
	upgrade_score *= 2
}

// bomb reload
var placed_bombs = instance_number(obj_bomb_timer)
bomb_count = bomb_max_count - placed_bombs
if (bomb_count == 0) sprite_index = spr_bot_empty
else if (bomb_count == 1) sprite_index = spr_bot_min
else sprite_index = spr_bot_armed












