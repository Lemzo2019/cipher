/// caesar_cipher(text, shift)
/// @arg text - исходный текст (string)
/// @arg shift - сдвиг (integer)
haur_shag = 50


function shifr(text, hour) {

    var result = "";                 // Результат функции
    var len = string_length(text);  // Длина входящего текста

    for (var i = 1; i <= len; i++) {
		
        var c = string_char_at(text, i);
        var code = ord(c);
        var encoded_char = "";
		
		encoded_char = chr(code + hour + haur_shag)
		result += encoded_char
	}
	
	return result
}

function deshifr(encoded_text, hour) {
    var result = "";                 // Результат функции
    var len = string_length(encoded_text);  // Длина зашифрованного текста

    for (var i = 1; i <= len; i++) {
        var c = string_char_at(encoded_text, i);
        var code = ord(c);
        var decoded_char = "";
        
        decoded_char = chr(code - hour - haur_shag)  // Вычитаем вместо сложения
        result += decoded_char
    }
    
    return result
}