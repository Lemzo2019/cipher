
// Красота
Scr_obj()

// Немного тянем

image_xscale = 2
image_yscale = 2


var w = 64
var h = 64
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (status_hour < 0) {
	status_hour = 23
}
else if (status_hour > 23) {
	status_hour = 0
}

// Отображение слов после времени
//draw_text(x + w, y + h, string(status_hour) + "час")

if (status_hour == 0 || 5 <= status_hour || status_hour >= 20) {
	draw_text(x + w, y + h, string(status_hour) + "\n часов")
}
else if (status_hour == 1 || status_hour == 21) {
	draw_text(x + w, y + h, string(status_hour) + "\n час")
}
else if (2 <= status_hour || status_hour <= 4) {
	draw_text(x + w, y + h, string(status_hour) + "\n часа")
}
else {
	draw_text(x + w, y + h, string(status_hour) + "\n часа")
}