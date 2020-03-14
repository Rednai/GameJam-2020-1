var player = argument0;
var jumper = argument1;

if (collision_rectangle(jumper.bbox_left, jumper.bbox_top, jumper.bbox_right, jumper.bbox_bottom, player, false, false)) {
	if (player.jumping == false) {
		player.accy = player.jumpAcceleration * -1;
		player.jumping = true;
	}
}

jumper.image_speed = 0.5;