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
	case 5:
		txt = "Шифр Виженера"
		break
	case 6:
		txt = "Шифрация с помощью XOR"
		break
	default:
		txt = "Этого быть не должно"
		break
}