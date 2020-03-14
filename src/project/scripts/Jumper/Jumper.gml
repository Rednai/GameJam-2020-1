var player = argument0;
var jumper = argument1;

if (collision_rectangle(jumper.bbox_top, jumper.bbox_left, jumper.bbox_right, jumper.bbox_bottom, player, false, false)) {
	player.accy = player.jumpAcceleration;
	player.jumping = true;
}