
var g = keyboard_check(vk_shift)
var g_g = keyboard_check(vk_control)

if (g_g == true && g == true) { //ctrl + shift
	Obj_time_info_min.status_min -= 20
}
else if (g_g == true) {			//ctrl
	Obj_time_info_min.status_min -= 10
}
else if (g == true) {			//shift
	Obj_time_info_min.status_min -= 5
}
else {
	Obj_time_info_min.status_min -= 1
}