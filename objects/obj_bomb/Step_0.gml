time--

if (time > 0) exit

if (!is_armed) exit

if (!is_detonate) exit

detonate_time--

if (detonate_time > 0) exit

for (var i = 0; i < particles_count; i++) {
	var _x = random_range(x - size, x + size)
	var _y = random_range(y - size, y + size)

	var fire = instance_create_layer(_x, _y, 0, obj_explosion, { 
		pow: pow,
		direction:  random(360)
	});
	
	var fire1 = instance_create_layer(_x, _y, 0, obj_explosion_1, { 
		pow: pow,
		direction:  random(360)
	});
}

duration--
if (duration <= 0) {
	instance_destroy()
}