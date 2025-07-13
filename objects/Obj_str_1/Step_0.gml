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
var st = Obj_pronos_1.stage
var lo = Obj_lock.loc_st

// Получение времени
var time = Obj_time_now.pl_tim

// Копирование текста
if (Obj_copy.zcp >= 1) {
	// Онуление
	Obj_copy.zcp = 0
	if (lo == 0 && st == 1) {
		clipboard_set_text(Obj_shif_unshif_1.shifr(text_input, time))
	}
	else if (lo == 1 && st == 1) {
		clipboard_set_text(Obj_shif_unshif_1.deshifr(text_input, time))
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
		txt = Obj_shif_unshif_1.shifr(text_input, time)
	}
}
else {
	if (st == 0) {
		txt = text_input
	}
	else {
		txt = Obj_shif_unshif_1.deshifr(text_input, time)
	}
}