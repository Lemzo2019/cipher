
// Параметры
var max_width = 650; // Максимальная ширина текста


// --- Ввод символов ---
ch = keyboard_lastchar; // последний введённый символ

if (ch != "") {
    var code = ord(ch);
    var is_cyrillic = (code >= 1040 && code <= 1105) || code == 1025;
    var is_english = (code >= 65 && code <= 90) || (code >= 97 && code <= 122);
    var is_special = (code >= 33 && code <= 47) || (code >= 58 && code <= 64) || (code >= 91 && code <= 96) || (code >= 123 && code <= 126);
	var is_numb = (code >= 48 && code <= 57)

	temp_text = text_input + ch;
	if ((is_cyrillic || is_english || is_special || is_numb || code == 63) && string_count_ext(temp_text, max_width) <= 4) {
	    text_input = temp_text;
	    keyboard_lastchar = "";
	}
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

// Копирование текста
if (Obj_copy.zcp >= 1) {
	Obj_copy.zcp = 0
	clipboard_set_text(text_input)
}
 

// Обработка пробела
if (keyboard_check_pressed(vk_space)) {
    text_input += " ";
}

// Обработка Backspace
if (keyboard_check_pressed(vk_backspace) && string_length(text_input) > 0) {
    text_input = string_copy(text_input, 1, string_length(text_input) - 1);
}

// Отображения текста
var st = Obj_pronos_2.stage
var lo = Obj_lock.loc_st

// Отображение в зависимости от замка
if (lo == 0) {
	if (st == 0) {
		txt = text_input
	}
	else {
		txt = Obj_shif_unshif_2.caesar_shifer(text_input, 3)
	}
}
else {
	if (st == 0) {
		txt = text_input
	}
	else {
		txt = Obj_shif_unshif_2.caesar_deshifr(text_input, 3)	
	}
}