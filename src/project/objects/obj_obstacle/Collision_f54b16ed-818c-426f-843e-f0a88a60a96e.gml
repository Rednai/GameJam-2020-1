obj_start.alive = false;
obj_game.death_count++;

with(other) {
	instance_destroy();
}