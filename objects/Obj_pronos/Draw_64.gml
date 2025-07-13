draw_set_font(F_RU)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

var lo = Obj_lock.loc_st

if (lo == 0) {
	if (stage == 1) {
		draw_text(x, y, s_t_r)
	}
	else {
		draw_text(x, y, s_t_z)
	}
}
else {
	if (stage == 1) {
		draw_text(x, y, s_t_z)
	}
	else {
		draw_text(x, y, s_t_r)
	}
}