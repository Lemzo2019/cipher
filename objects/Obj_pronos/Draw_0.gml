
// Красивая кнопка
Scr_obj()

// Пишем текст
draw_set_font(F_RU)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
var w = sprite_width
var h = sprite_height

var lo = Obj_lock.loc_st

if (lo == 0) {
	if (stage == 1) {
		draw_text(x + w/2, y + h/2, s_t_r)
	}
	else {
		draw_text(x + w/2, y + h/2, s_t_z)
	}
}
else {
	if (stage == 1) {
		draw_text(x + w/2, y + h/2, s_t_z)
	}
	else {
		draw_text(x + w/2, y + h/2, s_t_r)
	}
}
