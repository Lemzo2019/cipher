// Параметры
var max_width = 650; // Максимальная ширина текста

// --- Ввод символов ---
var ch = keyboard_lastchar; // последний введённый символ

if (ch != "") {
    var code = ord(ch);
    var is_cyrillic = (code >= 1040 && code <= 1105) || code == 1025;
    var is_english = (code >= 65 && code <= 90) || (code >= 97 && code <= 122);
    var is_special = (code >= 33 && code <= 47) || (code >= 58 && code <= 64) || (code >= 91 && code <= 96) || (code >= 123 && code <= 126);

	var temp_text = text_input + ch;
	if ((is_cyrillic || is_english || is_special || code == 63) && string_count_ext(temp_text, max_width) <= 4) {
	    text_input = temp_text;
	    keyboard_lastchar = "";
	}
}

// Обработка пробела
if (keyboard_check_pressed(vk_space)) {
    text_input += " ";
}

// Обработка Backspace
if (keyboard_check_pressed(vk_backspace) && string_length(text_input) > 0) {
    text_input = string_copy(text_input, 1, string_length(text_input) - 1);
}

// Вставленный текст
if (Obj_paste.znk >= 1) {
	Obj_paste.znk = 0
	var text_paste = clipboard_get_text() //проверка буфера

	if (text_paste != "") {
		if (4 >= string_count_ext(text_paste + text_input, 650)) {
			text_input += text_paste
			text_paste = ""
		}
		else {
			text_paste = ""	
		}	
	}
}

// Отображения текста
var st = Obj_pronos_3.stage
var lo = Obj_lock.loc_st

// Копирование текста
if (Obj_copy.zcp >= 1) {
	// Шаг сдвига
	hag_1 = Obj_time_info_age.status_age + (Obj_time_info_hour.status_hour * Obj_time_info_min.status_min)
	hag_2 = Obj_time_info_age.status_age - (Obj_time_info_hour.status_hour * Obj_time_info_min.status_min)
	// Онуление
	Obj_copy.zcp = 0
	// Копирование текста на экране
	if (lo == 0 && st == 1) {
		clipboard_set_text(Obj_shi_unshif_time.shifr(text_input, hag_1, hag_2))
	}
	else if (st == 1 && lo == 1) {
		clipboard_set_text(Obj_shi_unshif_time.deshifr(text_input, hag_1, hag_2))
	}
	else {
		clipboard_set_text(text_input)
	}
}

// Отображение в зависимости от замка
if (lo == 0) {
	if (st == 0) {
		txt = text_input
	}
	else {
		hag_1 = Obj_time_info_age.status_age + (Obj_time_info_hour.status_hour * Obj_time_info_min.status_min)
		hag_2 = Obj_time_info_age.status_age - (Obj_time_info_hour.status_hour * Obj_time_info_min.status_min)
		txt = Obj_shi_unshif_time.shifr(text_input, hag_1, hag_2)
	}
}
else {
	if (st == 0) {
		txt = text_input
	}
	else {
		hag_1 = Obj_time_info_age.status_age + (Obj_time_info_hour.status_hour * Obj_time_info_min.status_min)
		hag_2 = Obj_time_info_age.status_age - (Obj_time_info_hour.status_hour * Obj_time_info_min.status_min)
		txt = Obj_shi_unshif_time.deshifr(text_input, hag_1, hag_2)
	}
}