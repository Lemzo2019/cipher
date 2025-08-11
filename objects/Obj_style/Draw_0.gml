
// Красивая кнопка
Scr_obj()

// Текст

draw_set_valign(fa_middle)
draw_set_halign(fa_center)
var w = x + sprite_width/2
var h = y + sprite_height/2

// сообщаем текущий стиль
switch global.style {
	case 0:
		txt = "Тёмный \n (Стандартный)"
		break
	case 1:
		txt = "Светлый"
		break
	case 2:
		txt = "AMOLED"
		break
	case 3:
		txt = "Sepia"
		break
	case 4:
		txt = "Соляризованный \n свет"
		break
	case 5:
		txt = "Nord"
		break
	case 6:
		txt = "Дракула"
		break
	case 7:
		txt = "Пастель"
		break
	case 8:
		txt = "Высокий \n контраст"
		break
	case 9:
		txt = "Океан"
		break
	default:
		txt = "Это что \n такое?"
		break		
}

draw_text(w, h, txt)