function create_bomb(_x, _y, _power, _timer_seconds, _detonate_timer) {
	var bomb = instance_create_layer(_x, _y, 0, obj_bomb_timer, {
		is_armed: true,
		pow: _power,
		timer: _timer_seconds * global.game_speed,
		detonate_timer: _detonate_timer * global.game_speed
	})
}


function create_bomb_detect(_x, _y, _power, _timer_seconds, _detonate_timer) {
	var bomb = instance_create_layer(_x, _y, 0, obj_bomb_detect, {
		is_armed: false,
		pow: _power,
		timer: _timer_seconds * global.game_speed,
		detonate_timer: _detonate_timer * global.game_speed
	})
}