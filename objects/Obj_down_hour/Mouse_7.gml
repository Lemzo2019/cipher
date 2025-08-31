// Добавление проверки что бы не улетало за рамки дозволенного
var g = keyboard_check(vk_shift)
var g_g = keyboard_check(vk_control)

if (g_g == true && g == true) { // shift + ctrl
	Obj_time_info_hour.status_hour -= 10
}
else if (g_g == true) { // ctrl
	Obj_time_info_hour.status_hour -= 5
}
else if (g == true) { // shift
	Obj_time_info_hour.status_hour -= 3
}
else { // если просто нажать на ползунок
	Obj_time_info_hour.status_hour -= 1
}