// ▶ STEP: отражение от стен через инверсию вектора скорости

var vx = lengthdir_x(spd, image_angle);
var vy = lengthdir_y(spd, image_angle);

function slide_sign(base) {
    var val = base != 0 ? sign(base) : choose(-1, 1);
	if (random(3) < 1) return val * -1 else return val
}

var damping = 1

// ───────── Дополнительно: отскальзывание от квадратных объектов ─────────
var wall = instance_place(x + vx, y + vy, obj_wall_base);
if (wall != noone) {
    var dx = (x + vx) - wall.x;
    var dy = (y + vy) - wall.y;

    // Учитываем размер маски объекта, чтобы определить нормализованное направление
    var rx = dx / (wall.sprite_width * 0.5);
    var ry = dy / (wall.sprite_height * 0.5);

    if (abs(rx) > abs(ry)) {
        x -= vx;
        vy += abs(vx) * slide_sign(vy) / damping;
        vx = 0;
    } else {
        y -= vy;
        vx += abs(vy) * slide_sign(vx) / damping;
        vy = 0;
    }
	
}


// ───────── 3. обратно в скорость + угол ─────────
spd			= point_distance(0, 0, vx, vy);
image_angle = point_direction(0, 0, vx, vy)

// wall is damaged
if (wall != noone) wall.hp -= spd

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

