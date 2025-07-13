
// Отображение слов после времени

if (tim == 0) {
	pl_tim = current_hour

	if (pl_tim == 0 || 5 <= pl_tim || pl_tim >= 20) {
		draw_text(x, y, "Сейчас " + string(pl_tim) + " часов")
	}
	else if (pl_tim == 1 || pl_tim == 21) {
		draw_text(x, y, "Сейчас " + string(pl_tim) + " час")
	}
	else if (2 <= pl_tim || pl_tim <= 4) {
		draw_text(x, y, "Сейчас " + string(pl_tim) + " часа")
	}
	else {
		draw_text(x, y, "Сейчас " + string(pl_tim) + " часа")
	}
}

// Пользовательское время

else {

	if (pl_tim == 0 || 5 <= pl_tim || pl_tim >= 20) {
		draw_text(x, y, "Установлено:  " + string(pl_tim) + " часов")
	}
	else if (pl_tim == 1 || pl_tim == 21) {
		draw_text(x, y, "Установлено: " + string(pl_tim) + " час")
	}
	else if (2 <= pl_tim || pl_tim <= 4) {
		draw_text(x, y, "Установлено: " + string(pl_tim) + " часа")
	}
	else {
		draw_text(x, y, "Установлено: " + string(pl_tim) + " часа")
	}
}