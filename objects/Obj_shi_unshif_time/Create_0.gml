
Obj_str.room_now = 4

// Создание новых объектов
var w = 64		// Отступ слева
var h = 928		// Отступ сверху
var w_b = 224	// Отступ между объектами по x
var h_b = 128	// Отступ между объектами по y (Это для рядов)

instance_create_depth(w, h, -1, Obj_up_age)
instance_create_depth(w + w_b, h, -1, Obj_up_hour)
instance_create_depth(w + w_b*2, h, -1, Obj_up_min)
instance_create_depth(w, h + h_b, -1, Obj_time_info_age)
instance_create_depth(w + w_b, h + h_b, -1, Obj_time_info_hour)
instance_create_depth(w + w_b*2, h + h_b, -1, Obj_time_info_min)
instance_create_depth(w, h + h_b*2, -1, Obj_down_age)
instance_create_depth(w + w_b, h + h_b*2, -1, Obj_down_hour)
instance_create_depth(w + w_b*2, h + h_b*2, -1, Obj_down_min)

/// shifr(text, shift1, shift2)
function shifr(text, shift1, shift2) {
    var base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    var result = "";
    var len = string_length(text);

    for (var i = 1; i <= len; i++) {
        var c = string_char_at(text, i);
        var code = ord(c);
        var shift = (i mod 2 == 1) ? shift1 : shift2;
        var new_code = code + shift;

        // Переводим new_code в 64-ричную систему
        var encoded = "";
        var n = new_code;
        repeat (3) { // максимум 3 знака для 64-ричной системы (до 262143)
            var digit = n mod 64;
            encoded = string_char_at(base64, digit + 1) + encoded;
            n = n div 64;
            if (n == 0) break;
        }

        // Если число меньше 64, будет 1 знак, если меньше 4096 — 2 знака, иначе 3
        result += encoded + " ";
    }

    // Убираем последний пробел
    if (string_length(result) > 0) result = string_copy(result, 1, string_length(result) - 1);
    return result;
}

/// deshifr(coded_text, shift1, shift2)
function deshifr(_coded_text, _shift1, _shift2) {
    var base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    var result = "";
    var parts = string_split(_coded_text, " ");
    var len = array_length(parts);

    for (var i = 0; i < len; i++) {
        var encoded = parts[i];
        var n = 0;
        // Декодируем из 64-ричной системы
        for (var j = 0; j < string_length(encoded); j++) {
            var ch = string_char_at(encoded, j + 1);
            var digit = string_pos(ch, base64) - 1;
            n = n * 64 + digit;
        }
        // Вычитаем сдвиг
        var shift = ((i + 1) mod 2 == 1) ? _shift1 : _shift2;
        var orig_code = n - shift;
        result += chr(orig_code);
    }
    return result;
}