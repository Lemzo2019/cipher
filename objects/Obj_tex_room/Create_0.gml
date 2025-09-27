
switch (global.room) {
	case 1: // Цезфрь
		instance_create_depth(0, 0, 0, Obj_shif_unshif_2)
		break
	case 2: // Мой шифр
		instance_create_depth(0, 0, 0, Obj_shif_unshif)
		break
	case 3: // По часам
		instance_create_depth(0, 0, 0, Obj_shif_unshif_1)
		instance_create_depth(224, 384, -1, Obj_txt_dop)
		break
	case 4: // Ультро время
		instance_create_depth(0, 0, 0, Obj_shi_unshif_time)
		instance_create_depth(224, 384, -1, Obj_txt_dop)
		break
	case 5: // Шифр виндера
		instance_create_depth(0, 0, 0, Obj_shif_unshif_3)
		instance_create_depth(224, 384, -1, Obj_txt_dop)
		global.key = "Заглушка"
		break
	case 6: // XOR
		instance_create_depth(0, 0, 0, Obj_shif_deshif_XOR)
		instance_create_depth(224, 384, -1, Obj_txt_dop)
		global.key = "XOR"
		break
}

instance_destroy()