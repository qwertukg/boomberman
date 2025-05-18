depth = -500

if (!variable_instance_exists(id, "pow")) pow = 2;
spd = random_range(pow - 1, pow + 1)
image_angle = random_range(0, 360)
fr = 0

acceliration = random_range(0.1, 0.2)
deceleration = random_range(0.01, 0.02)
dynamics = 0

angle_speed = 0
angle_acceleration = random_range(-0.1, 0.1) 
scale_speed = 0
scale_acceleration = random_range(0.005, 0.01) 

