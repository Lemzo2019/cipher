draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (status_hour < 0) {
	status_hour = 23
}
else if (status_hour > 23) {
	status_hour = 0
}

// Отображение слов после времени
//draw_text(x, y, string(status_hour) + "час")

if (status_hour == 0 || 5 <= status_hour || status_hour >= 20) {
	draw_text(x, y, string(status_hour) + " часов")
}
else if (status_hour == 1 || status_hour == 21) {
	draw_text(x, y, string(status_hour) + " час")
}
else if (2 <= status_hour || status_hour <= 4) {
	draw_text(x, y, string(status_hour) + " часа")
}
else {
	draw_text(x, y, string(status_hour) + " часа")
}