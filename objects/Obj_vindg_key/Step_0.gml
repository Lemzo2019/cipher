
// Параметры
var max_width = sprite_width; // Максимальная ширина текста
var wor_con = 10			  // Количество букв


// --- Ввод символов ---
ch = keyboard_lastchar; // последний введённый символ

if (ch != "") {
    var code = ord(ch);
    var is_cyrillic = (code >= 1040 && code <= 1105) || code == 1025;
    var is_english = (code >= 65 && code <= 90) || (code >= 97 && code <= 122);
    var is_special = (code >= 33 && code <= 47) || (code >= 58 && code <= 64) || (code >= 91 && code <= 96) || (code >= 123 && code <= 126);
	var is_numb = (code >= 48 && code <= 57)

	temp_text = text_input + ch;
	if ((is_cyrillic || is_english || is_special || is_numb || code == 63) && string_length(text_input) < wor_con) {
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