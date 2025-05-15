/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
image_angle = direction

conn_x = x + lengthdir_x(w, direction)
conn_y = y + lengthdir_y(w, direction)
with (lo_leg) {
	direction = other.direction
	x = other.conn_x
	y = other.conn_y
}