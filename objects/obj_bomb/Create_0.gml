name = "Default"

image_speed = 2
size = 2
particles_count = 50
duration = 5

is_detonate = false
if (!variable_instance_exists(id, "is_armed")) is_armed		= false;
if (!variable_instance_exists(id, "pow")) pow				= 2;
if (!variable_instance_exists(id, "timer")) timer			= 5 * global.game_speed 
if (!variable_instance_exists(id, "detonate_timer")) detonate_timer	= 1 * global.game_speed 

time = timer
detonate_time = detonate_timer
image_index = image_number - timer/global.game_speed * 2