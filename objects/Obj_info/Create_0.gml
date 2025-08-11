text_room = 0
is_pressed = 0
txt = ""
switch global.room {
	case 1: 
		txt = "Шифр Цезаря"
		break
	case 2: 
		txt = "Авторский шифр"
		break
	case 3:
		txt = "Шифр по часам"
		break
	case 4:
		txt = "Шифр по времени"
		break
	default:
		txt = "Этого быть не болжно"
		break
}