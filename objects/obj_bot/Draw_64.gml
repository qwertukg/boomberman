draw_set_color(c_white)

var k = 1
draw_text(16, 16 * k,				"Health:     ")
var pc = round((hp / hp_max) * 100)
draw_healthbar(125, 16 * k + 8, 400, 16 * k + 16, pc, c_black, c_red, c_lime, 0, true, true)
var kk = 2
draw_text(16, 16 * kk,				"Bombs:")
for (var i=0; i < bomb.count; i++) {
	draw_sprite(bomb.sprite, bomb.image_index, 130 + 16*i, 16 * kk + 12)
}
draw_text(16, 16 * 3,				"Timer:      " + string(round(bomb.timer / global.game_speed)))
draw_text(16, 16 * 4,				"Power:      " + string(bomb.pow))




draw_text(16, 16 * 10,				"Score:      " + string(round(global.score_point)))
draw_text(16, 16 * 11,				"Next level: " + string(upgrade_score * bomb.pow))






draw_text(16, room_height - 16 * 7, "UP:          Up")
draw_text(16, room_height - 16 * 6, "LEFT:        Left")
draw_text(16, room_height - 16 * 5, "DOWN:        Down")
draw_text(16, room_height - 16 * 4, "RIGHT:       Right")
draw_text(16, room_height - 16 * 3, "PLACE BOMB:  Space")
draw_text(16, room_height - 16 * 2, "CHANGE BOMB: Tab")
