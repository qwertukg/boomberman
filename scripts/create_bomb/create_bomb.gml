function create_bomb(_x, _y, _power, _timer_seconds) {
	var bomb = instance_create_layer(_x, _y, 0, obj_bomb, {
		pow: _power,
		timer: _timer_seconds * global.game_speed 
	})

}
