
var vk_s = keyboard_check(vk_shift)
var vk_c = keyboard_check(vk_control)

if (vk_s) {
	global.style++
}
else if (vk_c) {
	global.style--
}