
// Красивая кнопка
Scr_obj()

// Пишем текст
draw_set_font(F_RU)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
var w = sprite_width
var h = sprite_height

draw_text(x + w/2, y + h/2, "Очистить")