#region Movement

var bbox_side;

accx = movementSpeed;
if (keyboard_check(vk_up) && jumping == false) {
	accy = jumpAcceleration * -1;
	jumping = true;
}

#region Acceleration

// Gravity
	accy += gravitySpeed;	

if (accx < 0) {
	if (speed.x > accx) speed.x -= xAcceleration;
	else if (speed.x < accx) speed.x += xBraking;
} else if (accx > 0) {
	if (speed.x > accx) speed.x -= xBraking;
	else if (speed.x < accx) speed.x += xAcceleration;
} else {
	if (speed.x > accx) speed.x -= xBraking;
	else if (speed.x < accx) speed.x += xBraking;	
}

if (accy < 0) {
	if (speed.y > accy) speed.y -= yAcceleration;
	else if (speed.y < accy) speed.y += yBraking;
} else if (accy > 0) {
	if (speed.y > accy) speed.y -= yBraking;
	else if (speed.y < accy) speed.y += yAcceleration;
} else {
	if (speed.y > accy) speed.y -= yBraking;
	else if (speed.y < accy) speed.y += yBraking;
}

#endregion

#region Collision

//Horizontal Collision
if (speed.x > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side + speed.x, bbox_top) != 0)
|| (tilemap_get_at_pixel(tilemap, bbox_side + speed.x, bbox_bottom) != 0)
{
	if (speed.x > 0) x = int64(x - (x % 64) + 63 - (bbox_right - x));
	else x = int64(x - (x % 64) - (bbox_left - x));
	speed.x = 0;
	accx = 0;
}
x += int64(speed.x);

//Vertical Collision
if (speed.y > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + speed.y) != 0)
|| (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + speed.y) != 0)
{
	if (speed.y > 0) {
		y = int64(y - (y % 64) + 63 - (bbox_bottom - y));
		jumping = false;
	} else y = int64(y - (y % 64) - (bbox_top - y));
	speed.y = 0;
	accy = 0;
}
y += int64(speed.y);

#endregion

#region Animation

if (speed.x != 0 && speed.y == 0) {
	if (speed.x < 0) sprite_index = spr_robot_run_left; else sprite_index = spr_robot_run_right;
} else if (speed.y != 0) {
	if (speed.y < 0) {
		if (speed.x < 0) sprite_index = spr_robot_jump_init_left; else sprite_index = spr_robot_jump_init_right;
	} else {
		if (speed.x < 0) sprite_index = spr_robot_jump_end_left; else sprite_index = spr_robot_jump_end_right;
	}
} else if (speed.x == 0 && speed.y == 0) sprite_index = spr_robot_standby;

#endregion

#endregion