/// caesar_cipher(text, shift)
/// @arg text - исходный текст (string)
/// @arg shift - сдвиг (integer)

function caesar_shifer(text, shift) {
    var result = "";
    var len = string_length(text);

    for (var i = 1; i <= len; i++) {
        var c = string_char_at(text, i);
        var code = ord(c);
	
		
        // Обработка заглавных букв A-Z (код 65-90)
        if (code >= 65 && code <= 90) {
            code = 65 + ((code - 65 + shift) mod 26);
            result += chr(code);
        }
        // Обработка строчных букв a-z (код 97-122)
        else if (code >= 97 && code <= 122) {
            code = 97 + ((code - 97 + shift) mod 26);
            result += chr(code);
        }
		//Буквы А-Я + Ё
        else if (code == 1025) { // Ё
            code = 1040 + ((33 - 1 + shift) mod 33);		// Сдвигаем Ё в конец алфавита
			result += chr(code);
        }
		 else if (code == 1105) {										 // ё
            code = 1072 + ((33 - 1 + shift) mod 33);
            result += chr(code);
		}
        else if (code >= 1040 && code <= 1071) {		// А-Я
            code = 1040 + ((code - 1040 + shift) mod 33);
            result += chr(code);
        }
		//Строчные русские 
		else if (code >= 1072 && code <= 1103){
			code = 1072 + ((code - 1072 + shift)mod 33);
			result += chr(code);
		}
		// Из ? в Ё
		else if (code == 63) {
			result += "Ё"
		}
		// Обработка цифр
		else if (code >= 48 && code <= 57) {
		    var digit = code - 48; // преобразуем код в число от 0 до 9
		    var new_digit = (digit + shift) mod 10; // сдвигаем и берем по модулю 10
		    result += string(new_digit); // добавляем в результат
		}
        else {
            // Остальные символы без изменений
            result += c;
        }
}
    return result;
}


function caesar_deshifr(text, shift) {
    var result = "";
    var len = string_length(text);

    for (var i = 1; i <= len; i++) {
        var ch = string_char_at(text, i);
        var code = ord(ch);

        // Латиница заглавные A-Z (65-90)
        if (code >= 65 && code <= 90) {
            code -= shift;
            if (code < 65) code += 26;
            result += chr(code);
        }
        // Латиница строчные a-z (97-122)
        else if (code >= 97 && code <= 122) {
            code -= shift;
            if (code < 97) code += 26;
            result += chr(code);
        }
        // Кириллица заглавные А-Я (1040-1071)
        else if (code >= 1040 && code <= 1071) {
            code -= shift;
            if (code < 1040) code += 32; // В русском алфавите 32 буквы без Ё
            result += chr(code);
        }
        // Кириллица строчные а-я (1072-1103)
        else if (code >= 1072 && code <= 1103) {
            code -= shift;
            if (code < 1072) code += 32;
            result += chr(code);
        }
        // Обработка Ё и ё отдельно
        else if (code == 1025) { // Ё
            // Можно считать Ё как отдельную букву между Е и Ж, либо просто оставить без изменений
            // Здесь оставим без изменений
            result += "?";
        }
        else if (code == 1105) { // ё
            result += "?";
        }
		else if (code == 63) {
			result += "Ё"
		}
		// Обработка цифр
		else if (code >= 48 && code <= 57) { 
		    var digit = code - 48;
		    var new_digit = (digit - shift + 10) mod 10; // обратный сдвиг, +10 чтобы избежать отрицательных
		    result += string(new_digit);
		}	
        else {
            // Все остальные символы (пробелы, знаки препинания и т.п.) оставляем без изменений
            result += ch;
        }
    }

    return result;
}