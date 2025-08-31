// Добавление проверки что бы не улетало за рамки дозволенного
var g = keyboard_check(vk_shift)
var g_g = keyboard_check(vk_control)

if (g_g == true && g == true) { // shift + ctrl
	Obj_time_info_min.status_min -= 30
}
else if (g_g == true) { // ctrl
	Obj_time_info_min.status_min -= 10
}
else if (g == true) { // shift
	Obj_time_info_min.status_min -= 5
}
else { // если просто нажать на ползунок
	Obj_time_info_min.status_min -= 1
}