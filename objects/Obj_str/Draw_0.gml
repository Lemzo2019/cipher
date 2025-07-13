// Параметры
var max_width = 650;       // Максимальная ширина текста
var padding = 10;          // Отступы внутри квадрата
var line_spacing = 20;      // Межстрочный интервал (обычно 5-10 достаточно)

// Высота одной строки с учетом межстрочного интервала
var line_height = string_height("M") ;

// Считаем количество строк, которые займёт текст с переносом
var lines_count = 1;
if (txt != "") {
    lines_count = string_count_ext(txt, max_width);
}

// Считаем количество строк, которые займёт текст с переносом
if (lines_count > 4) lines_count = 4;

// Размеры прямоугольника (учитываем отступы сверху и снизу)
var rect_width = max_width + padding * 2;
var rect_height = line_height * lines_count + padding * 2;

// Координаты квадрата (центрируем по объекту)
var rect_x1 = x - rect_width / 2;
var rect_y1 = y;
var rect_x2 = x + rect_width / 2;
var rect_y2 = y + rect_height;

// Рисуем фон - залитый прямоугольник
draw_set_color(make_color_rgb(50, 50, 50));  // Темно-серый фон
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);

// Рисуем обводку прямоугольника
draw_set_color(c_white);
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, true);

// Рисуем текст с переносом
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext(rect_x1 + padding, rect_y1 + padding, txt, line_spacing, max_width);