draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if (status_min < 0) {
	status_min = 59
}
else if (status_min > 59) {
	status_min = 0
}

// Отображение слов после времени
//draw_text(x, y, string(status_min) + " мин")
var p = [1, 21, 31, 41, 51]
var l = status_min

if (status_min == 1 || status_min == 21 || status_min == 31 || status_min == 41 || status_min == 51) {
	draw_text(x, y, string(status_min) + " минута")
}
else if ((2 <= l && l >= 4) || (22 <= l && l >= 24) || (32 <= l && l >= 34) || (42 <= l && l >= 44) || (2 <= l && l >= 54)) {
	draw_text(x, y, string(status_min) + " минуты")
}
else {
	draw_text(x, y, string(status_min) + " минут")
}