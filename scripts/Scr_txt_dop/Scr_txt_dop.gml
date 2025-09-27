function Scr_txt_dop(st){
if (st == 0) { // Создане
	
	instance_create_depth(x, y, 0, Obj_dark)
	
	if (global.room == 3) {  // По часам
		instance_create_depth(640, 192, 0, Obj_strel_up)
		instance_create_depth(192, 192, 0, Obj_time_now)
		instance_create_depth(96, 288, 0, Obj_strel_down)
	}
	else if (global.room == 4) {  // С выбором времени
		
		// Создание новых объектов
		var w = 140		// Отступ слева
		var h = 0		// Отступ сверху
		var w_b = 150	// Отступ между объектами по x
		var h_b = 128	// Отступ между объектами по y (Это для рядов)
		var d = -1		// Глубина отрисовки

		instance_create_depth(w, h, d, Obj_up_age)
		instance_create_depth(w + w_b, h, d, Obj_up_hour)
		instance_create_depth(w + w_b*2, h, d, Obj_up_min)
		instance_create_depth(w, h + h_b, d, Obj_time_info_age)
		instance_create_depth(w + w_b, h + h_b, d, Obj_time_info_hour)
		instance_create_depth(w + w_b*2, h + h_b, d, Obj_time_info_min)
		instance_create_depth(w, h + h_b*2, d, Obj_down_age)
		instance_create_depth(w + w_b, h + h_b*2, d, Obj_down_hour)
		instance_create_depth(w + w_b*2, h + h_b*2, d, Obj_down_min)
	}
	else if (global.room == 5) {
		instance_create_depth(192, 192, 0, Obj_vindg_key)
	}
	else if (global.room == 6) {
		instance_create_depth(192, 192, 0, Obj_vindg_key)
	}
}
else {	// Удалене созданого
	
	instance_destroy(Obj_dark)
	
	if (global.room == 3) {  // По часам
		instance_destroy(Obj_strel_up)
		instance_destroy(Obj_time_now)
		instance_destroy(Obj_strel_down) 
	}
	else if (global.room == 4) {	// С выбором времени
		instance_destroy(Obj_up_age);
		instance_destroy(Obj_up_hour);
		instance_destroy(Obj_up_min);
		instance_destroy(Obj_time_info_age);
		instance_destroy(Obj_time_info_hour);
		instance_destroy(Obj_time_info_min);
		instance_destroy(Obj_down_age);
		instance_destroy(Obj_down_hour);
		instance_destroy(Obj_down_min);
	}	
	else if (global.room == 5 || 6) {
		instance_destroy(Obj_vindg_key)
	}
	else if (global.room == 6) {
		instance_destroy(Obj_vindg_key)
	}

}
	


}