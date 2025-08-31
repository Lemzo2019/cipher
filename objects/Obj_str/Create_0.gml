text_input = ""
txt = ""
text_text = ""
text_paste = ""
room_now = 0

temp_text = ""
stage_1 = 0
text = 0
text_tik = 0
stage = 1
lines_count = 0
ch = 0
hag_1 = 0
hag_2 = 0

// Ещё одна страшная функция
/// text_wrap_lines(_txt, _w) -> array of lines
function text_wrap_lines(_txt, _w) {
    var lines = [];
    if (is_undefined(_txt)) _txt = "";
    if (_txt == "") { lines[0] = ""; return lines; }

    // Разбиваем по # (ручной перенос)
    var paras = string_split(_txt, "#");

    for (var p = 0; p < array_length(paras); p++) {
        var para = paras[p];
        var words = string_split(para, " ");
        var line = "";

        for (var i = 0; i < array_length(words); i++) {
            var word = words[i];
            if (word == "") continue;

            var test = (line == "") ? word : (line + " " + word);

            if (string_width(test) > _w) {
                // зафиксировать текущую строку
                if (line != "") {
                    lines[array_length(lines)] = line;
                    line = "";
                }

                // слово само по себе шире _w — рубим по символам
                if (string_width(word) > _w) {
                    var chunk = "";
                    for (var k = 1; k <= string_length(word); k++) {
                        var ch = string_char_at(word, k);
                        var tryc = chunk + ch;
                        if (string_width(tryc) > _w) {
                            lines[array_length(lines)] = chunk;
                            chunk = ch;
                        } else {
                            chunk = tryc;
                        }
                    }
                    line = chunk;
                } else {
                    line = word;
                }
            } else {
                line = test;
            }
        }

        if (line != "") {
            lines[array_length(lines)] = line;
            line = "";
        }

        // Между параграфами просто начинаем новую строку (без пустой строки)
    }

    if (array_length(lines) == 0) lines[0] = "";
    return lines;
}
