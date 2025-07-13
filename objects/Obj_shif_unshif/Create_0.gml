/// caesar_cipher(text, shift)
/// @arg text - исходный текст (string)
/// @arg shift - сдвиг (integer)
codes = [58, 59, 60, 61, 62, 63, 64, 91, 92, 93, 94, 95, 96, 123, 124, 125, 126]

function shifr(text) {
    var result = "";                 // Результат функции
    var len = string_length(text);  // Длина входящего текста

    for (var i = 1; i <= len; i++) {
        var c = string_char_at(text, i);
        var code = ord(c);
        var encoded_char = "";

        // Обработка русского алфавита
        if ((code >= 1040 && code <= 1103) || code == 1025 || code == 1105) {
            switch (code) {
                case 1040: encoded_char = "Z"; break; // А
                case 1041: encoded_char = "Y"; break; // Б
                case 1042: encoded_char = "X"; break; // В
                case 1043: encoded_char = "W"; break; // Г
                case 1044: encoded_char = "V"; break; // Д
                case 1045: encoded_char = "U"; break; // Е
                case 1025: encoded_char = "T"; break; // Ё
                case 1046: encoded_char = "S"; break; // Ж
                case 1047: encoded_char = "R"; break; // З
                case 1048: encoded_char = "Q"; break; // И
                case 1049: encoded_char = "P"; break; // Й
                case 1050: encoded_char = "O"; break; // К
                case 1051: encoded_char = "N"; break; // Л
                case 1052: encoded_char = "M"; break; // М
                case 1053: encoded_char = "L"; break; // Н
                case 1054: encoded_char = "K"; break; // О
                case 1055: encoded_char = "J"; break; // П
                case 1056: encoded_char = "I"; break; // Р
                case 1057: encoded_char = "H"; break; // С
                case 1058: encoded_char = "G"; break; // Т
                case 1059: encoded_char = "F"; break; // У
                case 1060: encoded_char = "E"; break; // Ф
                case 1061: encoded_char = "D"; break; // Х
                case 1062: encoded_char = "C"; break; // Ц
                case 1063: encoded_char = "B"; break; // Ч
                case 1064: encoded_char = "A"; break; // Ш
                case 1065: encoded_char = "Я"; break; // Щ (пример, можно заменить)
                // Для остальных букв добавьте по необходимости
                case 1072: encoded_char = "z"; break; // а
                case 1073: encoded_char = "y"; break; // б
                case 1074: encoded_char = "x"; break; // в
                case 1075: encoded_char = "w"; break; // г
                case 1076: encoded_char = "v"; break; // д
                case 1077: encoded_char = "u"; break; // е
                case 1105: encoded_char = "t"; break; // ё
                case 1078: encoded_char = "s"; break; // ж
                case 1079: encoded_char = "r"; break; // з
                case 1080: encoded_char = "q"; break; // и
                case 1081: encoded_char = "p"; break; // й
                case 1082: encoded_char = "o"; break; // к
                case 1083: encoded_char = "n"; break; // л
                case 1084: encoded_char = "m"; break; // м
                case 1085: encoded_char = "l"; break; // н
                case 1086: encoded_char = "k"; break; // о
                case 1087: encoded_char = "j"; break; // п
                case 1088: encoded_char = "i"; break; // р
                case 1089: encoded_char = "h"; break; // с
                case 1090: encoded_char = "g"; break; // т
                case 1091: encoded_char = "f"; break; // у
                case 1092: encoded_char = "e"; break; // ф
                case 1093: encoded_char = "d"; break; // х
                case 1094: encoded_char = "c"; break; // ц
                case 1095: encoded_char = "b"; break; // ч
                case 1096: encoded_char = "a"; break; // ш
                // Добавьте остальные буквы по необходимости
                default: encoded_char = c; break;
            }
        }
        // Обработка английского алфавита
        else if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122)) {
            switch (code) {
                case 65:  // A
                case 97:  // a
                    encoded_char = "~"; break;
                case 66:  // B
                case 98:  // b
                    encoded_char = "}"; break;
                case 67:  // C
                case 99:  // c
                    encoded_char = "|"; break;
                case 68:  // D
                case 100: // d
                    encoded_char = "{"; break;
                case 69:  // E
                case 101: // e
                    encoded_char = "`"; break;
                case 70:  // F
                case 102: // f
                    encoded_char = "_"; break;
                case 71:  // G
                case 103: // g
                    encoded_char = "^"; break;
                case 72:  // H
                case 104: // h
                    encoded_char = "\\"; break;
                case 73:  // I
                case 105: // i
                    encoded_char = "]"; break;
                case 74:  // J
                case 106: // j
                    encoded_char = "["; break;
                case 75:  // K
                case 107: // k
                    encoded_char = "@"; break;
                case 76:  // L
                case 108: // l
                    encoded_char = "?"; break;
                case 77:  // M
                case 109: // m
                    encoded_char = ">"; break;
                case 78:  // N
                case 110: // n
                    encoded_char = "="; break;
                case 79:  // O
                case 111: // o
                    encoded_char = "<"; break;
                case 80:  // P
                case 112: // p
                    encoded_char = ";"; break;
                case 81:  // Q
                case 113: // q
                    encoded_char = ":"; break;
                case 82:  // R
                case 114: // r
                    encoded_char = "/"; break;
                case 83:  // S
                case 115: // s
                    encoded_char = "."; break;
                case 84:  // T
                case 116: // t
                    encoded_char = "-"; break;
                case 85:  // U
                case 117: // u
                    encoded_char = ","; break;
                case 86:  // V
                case 118: // v
                    encoded_char = "+"; break;
                case 87:  // W
                case 119: // w
                    encoded_char = "*"; break;
                case 88:  // X
                case 120: // x
                    encoded_char = ")"; break;
                case 89:  // Y
                case 121: // y
                    encoded_char = "("; break;
                case 90:  // Z
                case 122: // z
                    encoded_char = "'"; break;
                default:
                    encoded_char = c; break;
            }
        }
	// Проверка спец. символов	
    else if ((code >= 33 && code <= 47) || (code >= 58 && code <= 64) || (code >= 91 && code <= 96) || (code >= 123 && code <= 126)) {
    // Проверяем, заглавный ли символ (для спецсимволов обычно нет, но для единообразия)
    var prefix = "";
    if ((code >= 65 && code <= 90) || (code >= 1040 && code <= 1071) || code == 1025) {
        prefix = "^";
    }

    switch (code) {
        case 33:  encoded_char = "я"; break;  // !
        case 34:  encoded_char = "ю"; break;  // "
        case 35:  encoded_char = "э"; break;  // #
        case 36:  encoded_char = "ь"; break;  // $
        case 37:  encoded_char = "ы"; break;  // %
        case 38:  encoded_char = "ъ"; break;  // &
        case 39:  encoded_char = "щ"; break;  // '
        case 40:  encoded_char = "ш"; break;  // (
        case 41:  encoded_char = "ч"; break;  // )
        case 42:  encoded_char = "ц"; break;  // *
        case 43:  encoded_char = "х"; break;  // +
        case 44:  encoded_char = "ф"; break;  // ,
        case 45:  encoded_char = "у"; break;  // -
        case 46:  encoded_char = "т"; break;  // .
        case 47:  encoded_char = "с"; break;  // /
        case 58:  encoded_char = "р"; break;  // :
        case 59:  encoded_char = "п"; break;  // ;
        case 60:  encoded_char = "о"; break;  // <
        case 61:  encoded_char = "н"; break;  // =
        case 62:  encoded_char = "м"; break;  // >
        case 63:  encoded_char = "л"; break;  // ?
        case 64:  encoded_char = "к"; break;  // @
        case 91:  encoded_char = "й"; break;  // [
        case 92:  encoded_char = "и"; break;  // \
        case 93:  encoded_char = "з"; break;  // ]
        case 94:  encoded_char = "ж"; break;  // ^
        case 95:  encoded_char = "ё"; break;  // _
        case 96:  encoded_char = "е"; break;  // `
        case 123: encoded_char = "д"; break;  // {
        case 124: encoded_char = "г"; break;  // |
        case 125: encoded_char = "в"; break;  // }
        case 126: encoded_char = "б"; break;  // ~
        default:
            encoded_char = c;  // Если символ не в списке — оставляем без изменений
            prefix = "";       // И префикс не ставим
            break;
    }

    // Добавляем префикс для заглавных символов (если есть)
    encoded_char = prefix + encoded_char;
}

        
        // Обработка цифр
		else if (code >= 48 && code <= 57) {
		    var digit = code - 48; // преобразуем код в число от 0 до 9
		    var new_digit = (digit + 5) mod 10; // сдвигаем и берем по модулю 10
		    result += string(new_digit); // добавляем в результат
		}
        else {
            // Если символ не попал ни в одну категорию - оставляем без изменений
            encoded_char = c;
        }

        result += encoded_char;
    }

    return result;
}

// Дешифратор говна, нету перевода из русского
function deshifr(text) {
    var result = "";
    var len = string_length(text);

    for (var i = 1; i <= len; i++) {
        var c = string_char_at(text, i);
        var code = ord(c);
        var decoded_char = "";

        // --- ДЕШИФРОВКА ЦИФР ---
        if (code >= 48 && code <= 57) {
            var digit = code - 48;
            var orig_digit = (digit - 5 + 10) mod 10; // обратный сдвиг
            decoded_char = string(orig_digit);
        }
        // --- ДЕШИФРОВКА РУССКИХ БУКВ ---
        else switch (c) {
            case "Z": decoded_char = chr(1040); break; // А
            case "Y": decoded_char = chr(1041); break; // Б
            case "X": decoded_char = chr(1042); break; // В
            case "W": decoded_char = chr(1043); break; // Г
            case "V": decoded_char = chr(1044); break; // Д
            case "U": decoded_char = chr(1045); break; // Е
            case "T": decoded_char = chr(1025); break; // Ё
            case "S": decoded_char = chr(1046); break; // Ж
            case "R": decoded_char = chr(1047); break; // З
            case "Q": decoded_char = chr(1048); break; // И
            case "P": decoded_char = chr(1049); break; // Й
            case "O": decoded_char = chr(1050); break; // К
            case "N": decoded_char = chr(1051); break; // Л
            case "M": decoded_char = chr(1052); break; // М
            case "L": decoded_char = chr(1053); break; // Н
            case "K": decoded_char = chr(1054); break; // О
            case "J": decoded_char = chr(1055); break; // П
            case "I": decoded_char = chr(1056); break; // Р
            case "H": decoded_char = chr(1057); break; // С
            case "G": decoded_char = chr(1058); break; // Т
            case "F": decoded_char = chr(1059); break; // У
            case "E": decoded_char = chr(1060); break; // Ф
            case "D": decoded_char = chr(1061); break; // Х
            case "C": decoded_char = chr(1062); break; // Ц
            case "B": decoded_char = chr(1063); break; // Ч
            case "A": decoded_char = chr(1064); break; // Ш
            case "Я": decoded_char = chr(1065); break; // Щ (пример)
            case "z": decoded_char = chr(1072); break; // а
            case "y": decoded_char = chr(1073); break; // б
            case "x": decoded_char = chr(1074); break; // в
            case "w": decoded_char = chr(1075); break; // г
            case "v": decoded_char = chr(1076); break; // д
            case "u": decoded_char = chr(1077); break; // е
            case "t": decoded_char = chr(1105); break; // ё
            case "s": decoded_char = chr(1078); break; // ж
            case "r": decoded_char = chr(1079); break; // з
            case "q": decoded_char = chr(1080); break; // и
            case "p": decoded_char = chr(1081); break; // й
            case "o": decoded_char = chr(1082); break; // к
            case "n": decoded_char = chr(1083); break; // л
            case "m": decoded_char = chr(1084); break; // м
            case "l": decoded_char = chr(1085); break; // н
            case "k": decoded_char = chr(1086); break; // о
            case "j": decoded_char = chr(1087); break; // п
            case "i": decoded_char = chr(1088); break; // р
            case "h": decoded_char = chr(1089); break; // с
            case "g": decoded_char = chr(1090); break; // т
            case "f": decoded_char = chr(1091); break; // у
            case "e": decoded_char = chr(1092); break; // ф
            case "d": decoded_char = chr(1093); break; // х
            case "c": decoded_char = chr(1094); break; // ц
            case "b": decoded_char = chr(1095); break; // ч
            case "a": decoded_char = chr(1096); break; // ш
            default: decoded_char = ""; break;
        }
        // --- ДЕШИФРОВКА АНГЛИЙСКИХ БУКВ ---
        if (decoded_char == "") switch (c) {
            case "~": decoded_char = "A"; break;
            case "}": decoded_char = "B"; break;
            case "|": decoded_char = "C"; break;
            case "{": decoded_char = "D"; break;
            case "`": decoded_char = "E"; break;
            case "_": decoded_char = "F"; break;
            case "^": decoded_char = "G"; break;
            case "\\": decoded_char = "H"; break;
            case "]": decoded_char = "I"; break;
            case "[": decoded_char = "J"; break;
            case "@": decoded_char = "K"; break;
            case "?": decoded_char = "L"; break;
            case ">": decoded_char = "M"; break;
            case "=": decoded_char = "N"; break;
            case "<": decoded_char = "O"; break;
            case ";": decoded_char = "P"; break;
            case ":": decoded_char = "Q"; break;
            case "/": decoded_char = "R"; break;
            case ".": decoded_char = "S"; break;
            case "-": decoded_char = "T"; break;
            case ",": decoded_char = "U"; break;
            case "+": decoded_char = "V"; break;
            case "*": decoded_char = "W"; break;
            case ")": decoded_char = "X"; break;
            case "(": decoded_char = "Y"; break;
            case "'": decoded_char = "Z"; break;
            default: decoded_char = ""; break;
        }
        // --- ДЕШИФРОВКА СПЕЦСИМВОЛОВ ---
        if (decoded_char == "") switch (c) {
            case "я": decoded_char = "!"; break;
            case "ю": decoded_char = "\""; break;
            case "э": decoded_char = "#"; break;
            case "ь": decoded_char = "$"; break;
            case "ы": decoded_char = "%"; break;
            case "ъ": decoded_char = "&"; break;
            case "щ": decoded_char = "'"; break;
            case "ш": decoded_char = "("; break;
            case "ч": decoded_char = ")"; break;
            case "ц": decoded_char = "*"; break;
            case "х": decoded_char = "+"; break;
            case "ф": decoded_char = ","; break;
            case "у": decoded_char = "-"; break;
            case "т": decoded_char = "."; break;
            case "с": decoded_char = "/"; break;
            case "р": decoded_char = ":"; break;
            case "п": decoded_char = ";"; break;
            case "о": decoded_char = "<"; break;
            case "н": decoded_char = "="; break;
            case "м": decoded_char = ">"; break;
            case "л": decoded_char = "?"; break;
            case "к": decoded_char = "@"; break;
            case "й": decoded_char = "["; break;
            case "и": decoded_char = "\\"; break;
            case "з": decoded_char = "]"; break;
            case "ж": decoded_char = "^"; break;
            case "ё": decoded_char = "_"; break;
            case "е": decoded_char = "`"; break;
            case "д": decoded_char = "{"; break;
            case "г": decoded_char = "|"; break;
            case "в": decoded_char = "}"; break;
            case "б": decoded_char = "~"; break;
            default: decoded_char = ""; break;
        }
        // --- Если не расшифровали — оставить как есть ---
        if (decoded_char == "") decoded_char = c;

        result += decoded_char;
    }
    return result;
}
