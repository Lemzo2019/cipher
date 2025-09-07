if (st_t == 1) {
	sprite_index = Sp_inf_shif_1
	st_t = 0
	instance_create_depth(0, 0, -3, Obj_inf)
} else {
	sprite_index = Sp_inf_shif
	instance_destroy(Obj_inf)
	st_t = 1
}