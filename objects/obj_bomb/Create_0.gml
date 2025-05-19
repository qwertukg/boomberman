image_speed = 2

frame = 0
is_detonate = false

if (!variable_instance_exists(id, "pow")) pow = 2;
if (!variable_instance_exists(id, "timer")) timer = 10
image_index = image_number - timer/global.game_speed  * 2
size = 2
count = 50
duration = 5
