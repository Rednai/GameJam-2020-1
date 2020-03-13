var key_right = keyboard_check(vk_right);
var key_left = keyboard_check(vk_left);
var key_up = keyboard_check(vk_up);
var key_down = keyboard_check(vk_down);

var hsp = (key_right - key_left) * 4;
var vsp = (key_down - key_up) * 4;

x += hsp;
y += vsp;