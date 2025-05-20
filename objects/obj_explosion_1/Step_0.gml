// ▶ STEP: отражение от стен через инверсию вектора скорости

var vx = lengthdir_x(spd, image_angle);
var vy = lengthdir_y(spd, image_angle);

function slide_sign(base) {
    var val = base != 0 ? sign(base) : choose(-1, 1);
	if (random(3) < 1) return val * -1 else return val
}

// --- Новая часть: столкновение с квадратными объектами (obj_block) ---
var wall = instance_place(x + vx, y + vy, obj_wall_base);
if (wall != noone) {
	var nx
	var ny
	
    // Разница центра объекта и нашей позиции
    var dx = (x + vx) - wall.x;
    var dy = (y + vy) - wall.y;

    var rx = dx / (wall.sprite_width * 0.5);
    var ry = dy / (wall.sprite_height * 0.5);

    if (abs(rx) > abs(ry)) {
        nx = sign(rx);
        ny = 0;
    } else {
        nx = 0;
        ny = sign(ry);
    }

    var dot = vx * nx + vy * ny;
    vx = vx - 2 * dot * nx;
    vy = vy - 2 * dot * ny;
	
	//vx *= damping
	//vy *= damping
}


// ───────── 3. обратно в скорость + угол ─────────
spd       = point_distance(0, 0, vx, vy);
image_angle = point_direction(0, 0, vx, vy)

// wall is damaged
if (wall != noone) {
	wall.hp -= spd
}

// player is damaged
var enemy = instance_place(x + vx, y + vy, obj_bot);
if (enemy != noone) {
	enemy.hp -= spd
}

// boomb is damaged
var boomb = instance_place(x + vx, y + vy, obj_bomb_timer);
if (boomb != noone) {
	boomb.is_armed = true
	boomb.detonate_time = 0
	boomb.is_detonate = true
}

// ───────── 4. теперь можно удалять, если нужно ─────────
if (spd <= 0.01 || image_alpha <= 0) {
    instance_destroy();
    exit;                   // дальнейший код не нужен
}


//────────────────────────────────────────────────────────────
// 4. дальнейшая ваша логика (цвет, альфа, ускорения и т.д.)
dynamics     = acceliration - fr;
var progress = clamp(abs(dynamics) / acceliration, 0, 1);
var color    = 255 - lerp(255, 0, progress);

image_angle  += angle_speed;
image_xscale += scale_speed;
image_yscale += scale_speed;
angle_speed  += angle_acceleration;
scale_speed  += scale_acceleration;
spd          += acceliration;
fr			 += deceleration;

if (dynamics >= 0) {
    image_blend = make_color_rgb(255, color, 0);
    image_alpha = progress;
    image_index = 0;
} else {
    image_blend = make_color_rgb(color, color, color);
    image_index = 1;
}

spd = max(0, spd - fr);

vx = lengthdir_x(spd, image_angle);
vy = lengthdir_y(spd, image_angle);

x += vx
y += vy

