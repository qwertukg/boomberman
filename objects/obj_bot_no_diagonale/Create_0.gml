depth = -200
image_speed = 0
current_vx = 0
current_vy =0
current_angle = 0
current_key = noone
is_change = false
frame = 0

score_point = 0
hp = 1000
v = sprite_width / 20

moves = [
	[1,  0,   0, vk_right], // ВПРАВО
	[0, -1,  90, vk_up],	// ВВЕРХ
	[-1, 0, 180, vk_left],	// ВЛЕВО
	[0,  1, 270, vk_down]	// ВНИЗ
]

// bombs
bomb_power = 1
bomb_timer = 5
bomb_max_count = 5
bomb_count = bomb_max_count

test_x = 0
test_y = 0

upgrade_score = 10_000
