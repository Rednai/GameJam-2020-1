obj_game.alive = false;
obj_game.death_count++;

with(other) {
	instance_destroy();
}