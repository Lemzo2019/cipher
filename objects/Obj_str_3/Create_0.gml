text_input = ""
txt = ""
text_text = ""
hag_1 = 0
hag_2 = 0


// Страшно большая функция для переноса строк
function string_count_ext(_txt, _w) {
    var _lines = 1;
    var _line = "";
    var _words = string_split(_txt, " ");
    for (var i = 0; i < array_length(_words); i++) {
        var _word = _words[i];
        // Обработка явного переноса строки
        if (string_pos("#", _word) > 0) {
            var _parts = string_split(_word, "#");
            for (var j = 0; j < array_length(_parts); j++) {
                if (_line != "") _line += " ";
                _line += _parts[j];
                if (string_width(_line) > _w) {
                    _lines += 1;
                    _line = _parts[j];
                }
                if (j < array_length(_parts) - 1) {
                    _lines += 1;
                    _line = "";
                }
            }
        } else {
            var _test_line = _line == "" ? _word : _line + " " + _word;
            if (string_width(_test_line) > _w) {
                _lines += 1;
                _line = _word;
            } else {
                _line = _test_line;
            }
        }
    }
    return _lines;
}