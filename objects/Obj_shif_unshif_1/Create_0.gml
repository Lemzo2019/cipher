
Obj_str.room_now = 3

Obj_str.y = 512
instance_create_depth(194, 384, 0, Obj_time_now)
instance_create_depth(64, 480, -1, Obj_strel_down)
instance_create_depth(672, 384, -1, Obj_strel_up)

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