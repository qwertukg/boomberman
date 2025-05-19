depth = -200
sprite_index = spr_bot_run
image_speed = 0
current_vx = 0
current_vy =0
current_angle = 0
current_key = noone

score_point = 0
hp = 1000
v = sprite_width / 20

moves = [
	[1,  0,   0, "D"], // ВПРАВО
	[0, -1,  90, "W"], // ВВЕРХ
	[-1, 0, 180, "A"], // ВЛЕВО
	[0,  1, 270, "S"]  // ВНИЗ
]

bomb_power = 1
bomb_timer = 5

test_x = 0
test_y = 0

upgrade_score = 10_000
