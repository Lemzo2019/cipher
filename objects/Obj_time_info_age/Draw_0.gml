
// Красота
Scr_obj()

// Немного тянем

image_xscale = 2
image_yscale = 2

var w = 64
var h = 64
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (status_age < 100) {
	status_age = 3000
}
else if (status_age > 3000) {
	status_age = 100
}
draw_text(x + w, y + h, string(status_age) + "\n год")