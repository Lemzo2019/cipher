
Obj_str.room_now = 5


function shifr(key_, str_) {
    /// @function scr_vigenere_cipher(key, str)
    /// @param {string} key Ключ для шифрования.
    /// @param {string} str Текст для шифрования.
    /// @return {string} Зашифрованный текст.

    var key = argument[0];
    var str = argument[1];

    var cipher_alphabet = ds_list_create();
    ds_list_add(cipher_alphabet, "А", "Б", "В", "Г", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Л", "М", "Н", "О", "П", "Р", "С", "Т", "У", "Ф", "Х", "Ц", "Ч", "Ш", "Щ", "Ъ", "Ы", "Ь", "Э", "Ю", "Я");
    ds_list_add(cipher_alphabet, "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z");

    var result = "";
    var len_k = string_length(key);
    var len_s = string_length(str);
    var alphabet_size = ds_list_size(cipher_alphabet);

    var key_char_idx_in_key = 0;

    for (var i = 0; i < len_s; i++) {
        var msg_char = string_char_at(str, i + 1);
        var msg_char_upper = string_upper(msg_char);

        var msg_alphabet_index = ds_list_find_index(cipher_alphabet, msg_char_upper);

        if (msg_alphabet_index == -1) {
            result += msg_char;
        } else {
            var current_key_char = string_char_at(key, (key_char_idx_in_key mod len_k) + 1);
            var current_key_char_upper = string_upper(current_key_char);

            var key_alphabet_index = ds_list_find_index(cipher_alphabet, current_key_char_upper);

            if (key_alphabet_index == -1) {
                key_alphabet_index = 0;
            }

            var shifted_alphabet_index = (msg_alphabet_index + key_alphabet_index) mod alphabet_size;
            var cipher_char = cipher_alphabet[| shifted_alphabet_index];

            // Сохраняем регистр
            if (msg_char != string_upper(msg_char)) {
                cipher_char = string_lower(cipher_char);
            }

            result += cipher_char;
            key_char_idx_in_key++;
        }
    }

    ds_list_destroy(cipher_alphabet);

    return result;
}

function deshifr(key_, str_) {
    /// @function scr_vigenere_decipher(key, str)
    /// @param {string} key Ключ для дешифрования.
    /// @param {string} str Текст для дешифрования.
    /// @return {string} Дешифрованный текст.

    var key = argument[0];
    var str = argument[1];

    var cipher_alphabet = ds_list_create();
    ds_list_add(cipher_alphabet, "А", "Б", "В", "Г", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Л", "М", "Н", "О", "П", "Р", "С", "Т", "У", "Ф", "Х", "Ц", "Ч", "Ш", "Щ", "Ъ", "Ы", "Ь", "Э", "Ю", "Я");
    ds_list_add(cipher_alphabet, "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z");

    var result = "";
    var len_k = string_length(key);
    var len_s = string_length(str);
    var alphabet_size = ds_list_size(cipher_alphabet);

    var key_char_idx_in_key = 0;

    for (var i = 0; i < len_s; i++) {
        var msg_char = string_char_at(str, i + 1);
        var msg_char_upper = string_upper(msg_char);

        var msg_alphabet_index = ds_list_find_index(cipher_alphabet, msg_char_upper);

        if (msg_alphabet_index == -1) {
            result += msg_char;
        } else {
            var current_key_char = string_char_at(key, (key_char_idx_in_key mod len_k) + 1);
            var current_key_char_upper = string_upper(current_key_char);

            var key_alphabet_index = ds_list_find_index(cipher_alphabet, current_key_char_upper);

            if (key_alphabet_index == -1) {
                key_alphabet_index = 0;
            }

            var shifted_alphabet_index = (msg_alphabet_index - key_alphabet_index + alphabet_size) mod alphabet_size;
            var plain_char = cipher_alphabet[| shifted_alphabet_index];

            // Сохраняем регистр
            if (msg_char != string_upper(msg_char)) {
                plain_char = string_lower(plain_char);
            }

            result += plain_char;
            key_char_idx_in_key++;
        }
    }

    ds_list_destroy(cipher_alphabet);

    return result;
}