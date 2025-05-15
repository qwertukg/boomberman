/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

w = sprite_width
h = sprite_height
conn_x = x + lengthdir_x(w, direction)
conn_y = y + lengthdir_y(w, direction)
lo_leg = instance_create_layer(x + conn_x, y + conn_y, 0, obj_lo_leg)
with (lo_leg) {
	direction = other.direction
	x = other.conn_x
	y = other.conn_y
}