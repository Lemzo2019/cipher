
var g = keyboard_check(vk_shift)
var g_g = keyboard_check(vk_control)

if (g_g == true) {		//ctrl
	Obj_time_info_hour.status_hour += 10
}
else if (g == true) {	//shift
	Obj_time_info_hour.status_hour += 5
}
else {
	Obj_time_info_hour.status_hour += 1
}