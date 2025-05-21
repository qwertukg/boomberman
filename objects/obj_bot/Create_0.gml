frame = 0
is_animate = true
depth = -200
image_speed = 0
current_vx = 0
current_vy =0
current_angle = 0
current_key = noone
is_change = false

hp_max = 1000
hp = hp_max

v = sprite_width / 20

moves = [
	[1,  0,   0, vk_right], // ВПРАВО
	[0, -1,  90, vk_up],	// ВВЕРХ
	[-1, 0, 180, vk_left],	// ВЛЕВО
	[0,  1, 270, vk_down]	// ВНИЗ
]

// bombs
//bomb_power = 1
//bomb_timer = 5
//bomb_max_count = 5
//bomb_count = bomb_max_count

//detect_bomb_power = 1
//detect_bomb_timer = 3
//detect_bomb_max_count = 5
//detect_bomb_count = detect_bomb_max_count

bombs = [
	{
		obj: obj_bomb_timer,
		pow : 1,
		timer: 5 * global.game_speed,
		detonate_timer: 0 * global.game_speed,
		max_count: 5,
		count: 0,
		is_armed: true,
		sprite: spr_bomb_timer,
		image_index: 1,
	},
	{
		obj: obj_bomb_detect,
		pow : 2,
		timer: 3 * global.game_speed,
		detonate_timer: 1 * global.game_speed,
		max_count: 3,
		count: 0,
		is_armed: false,
		sprite: spr_bomb_detect_armed,
		image_index: 0,
	},
]
bomb_index = 0
bomb = bombs[bomb_index]



test_x = 0
test_y = 0

upgrade_score = 10_000
