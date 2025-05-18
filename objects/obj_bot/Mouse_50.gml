var size = 2
var count = 100
var dir = point_direction(x, y, mouse_x, mouse_y)

for (var i = 0; i < count; i++) {
	var _x = random_range(x - size, x + size)
	var _y = random_range(y - size, y + size)

	var fire1 = instance_create_layer(_x, _y, 0, obj_explosion_1);
	fire1.spd = 2
	//fire1.image_angle = dir
}
