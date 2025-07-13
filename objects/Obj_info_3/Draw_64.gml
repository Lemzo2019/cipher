draw_set_font(F_RU)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (text_room == 1) {
	draw_text(x, y, "Зашифровка \n (По часам)")
}
else {
	draw_text(x, y, "Расшифровка \n (По часам)")
}