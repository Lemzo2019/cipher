draw_set_font(F_RU); // шрифт выставь ДО измерений

// Параметры
var max_width = sprite_width;	// Ширина строки, сейчас равна спрайту
var padding   = 10;				// Отступ между символами
var sep       = 16;				// сделал больше, чтобы не слипалось
var lin_con   = 4				// Количество строк 

// Расчёты
var base_h = string_height("M");
var lines  = (txt == "") ? [""] : text_wrap_lines(txt, max_width);
var lines_count = array_length(lines);
var lines_drawn = min(lines_count, 5);

var rect_width  = max_width + padding * 2;
var rect_height = base_h * lines_drawn + sep * (lines_drawn - 1) + padding * 2;

var rect_x1 = x;
var rect_y1 = y;
var rect_x2 = rect_x1 + rect_width;
var rect_y2 = rect_y1 + rect_height;

var result = Scr_obj_str()
var col_b = result[0]
var col_t = result[1]
var col_txt = result[2]

// Сам прямоугольник
draw_set_color(col_b) //(make_color_rgb(50, 50, 50));
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);

// Обводка
draw_set_color(col_t)  //(c_white);
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, true);

// Текст
draw_set_color(col_txt)  //(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var tx = rect_x1 + padding;
var ty = rect_y1 + padding;
var step = base_h + sep;

for (var i = 0; i < lines_drawn; i++) {
    draw_text(tx, ty + i * step, lines[i]);
}