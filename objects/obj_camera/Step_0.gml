

if (!instance_exists(obj_player)) exit;

var cam_w = camera_get_view_width(camera);
var cam_h = camera_get_view_height(camera);

var target_x = obj_player.x - cam_w / 2;
var target_y = obj_player.y - cam_h / 2;

camera_set_view_pos(camera, target_x, target_y);
