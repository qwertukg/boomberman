/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
image_angle = direction

right_up_conn_x = x + lengthdir_x(w/2, direction + 0)
right_up_conn_y = y + lengthdir_y(h/2, direction + 90)

with (right_up_leg) {
	x = other.right_up_conn_x
	y = other.right_up_conn_y
}
