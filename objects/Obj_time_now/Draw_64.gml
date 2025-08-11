
image_xscale = 5.5
image_yscale = 1.5

// Красиво
Scr_obj()

var w = x + sprite_width/2
var h = y + sprite_height/2
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

// Отображение слов после времени

if (tim == 0) {
	pl_tim = current_hour

	if (pl_tim == 0 || 5 <= pl_tim || pl_tim >= 20) {
		draw_text(w, h, "Сейчас " + string(pl_tim) + " часов")
	}
	else if (pl_tim == 1 || pl_tim == 21) {
		draw_text(w, h, "Сейчас " + string(pl_tim) + " час")
	}
	else if (2 <= pl_tim || pl_tim <= 4) {
		draw_text(w, h, "Сейчас " + string(pl_tim) + " часа")
	}
	else {
		draw_text(w, h, "Сейчас " + string(pl_tim) + " часа")
	}
}

// Пользовательское время

else {

	if (pl_tim == 0 || 5 <= pl_tim || pl_tim >= 20) {
		draw_text(w, h, "Установлено:  " + string(pl_tim) + " часов")
	}
	else if (pl_tim == 1 || pl_tim == 21) {
		draw_text(w, h, "Установлено: " + string(pl_tim) + " час")
	}
	else if (2 <= pl_tim || pl_tim <= 4) {
		draw_text(w, h, "Установлено: " + string(pl_tim) + " часа")
	}
	else {
		draw_text(w, h, "Установлено: " + string(pl_tim) + " часа")
	}
}