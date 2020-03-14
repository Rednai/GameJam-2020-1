obj_start.alive = false;

with(other) {
	instance_destroy();
}
if (targetRoom) room_goto(targetRoom);