draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (status_age < 100) {
	status_age = 3000
}
else if (status_age > 3000) {
	status_age = 100
}
draw_text(x, y, string(status_age) + " год")