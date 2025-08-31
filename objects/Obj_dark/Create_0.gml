
instance_deactivate_all(true)

instance_activate_object(Obj_txt_dop)
instance_activate_object(Obj_back)

switch global.room {
	case 3: // По часам
		instance_activate_object(Obj_txt_dop)
		instance_activate_object(Obj_back)
		instance_activate_object(Obj_shif_unshif_1)
		break
	case 4: // С выбором времени
		instance_activate_object(Obj_up_age);
		instance_activate_object(Obj_up_hour);
		instance_activate_object(Obj_up_min);
		instance_activate_object(Obj_time_info_age);
		instance_activate_object(Obj_time_info_hour);
		instance_activate_object(Obj_time_info_min);
		instance_activate_object(Obj_down_age);
		instance_activate_object(Obj_down_hour);
		instance_activate_object(Obj_down_min);
		instance_activate_object(Obj_shi_unshif_time)
	
}