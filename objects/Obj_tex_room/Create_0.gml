//global.room = 4

switch (global.room) {
	case 1: // Цезфрь
		instance_create_depth(0, 0, 0, Obj_shif_unshif_2)
		break
	case 2: // Мой шифр
		instance_create_depth(0, 0, 0, Obj_shif_unshif)
		break
	case 3: // По часам
		instance_create_depth(0, 0, 0, Obj_shif_unshif_1)
		break
	case 4: // Ультро время
		instance_create_depth(0, 0, 0, Obj_shi_unshif_time)
}

instance_destroy()