
// Добавление проверки что бы не улетало за рамки дозволенного
var g = keyboard_check(vk_shift)
var g_g = keyboard_check(vk_control)

if (g_g == true && g == true) { // shift + ctrl
	Obj_time_info_age.status_age += 1000
}
else if (g_g == true) { // ctrl
	Obj_time_info_age.status_age += 100
}
else if (g == true) { // shift
	Obj_time_info_age.status_age += 10
}
else { // если просто нажать на ползунок
	Obj_time_info_age.status_age += 1
}