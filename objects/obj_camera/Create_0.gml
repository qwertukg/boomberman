var cam_width = 640;
var cam_height = 360;

obj_player = global.player

var border = 8;
var spd = 0.1; // очень медленно, можно меньше 1 (например, 0.5) для ещё медленнее

// Создаём камеру с автослежением
camera = camera_create_view(
    0, 0,            // Положение камеры в комнате (можно оставить 0, 0 — не используется при следовании)
    640, 360,        // Размер камеры
    0,               // Угол — без поворота
    obj_player,      // Объект, за которым следим
    0.1, 0.1,        // Очень медленная скорость перемещения камеры
    8, 8             // Границы (deadzone) — 8 пикселей по X и Y
);

// Активируем камеру в Viewport 0
view_enabled = true;
view_visible[0] = true;
view_camera[0] = camera;

// Устанавливаем размер viewport (например, масштаб 2x)
view_wport[0] = cam_width * 2;
view_hport[0] = cam_height * 2;
view_xport[0] = 0;
view_yport[0] = 0;
