// Проверка касания в области объекта с позицией (x, y) и размерами спрайта
var touch_x = device_mouse_x(0);
var touch_y = device_mouse_y(0);

is_pressed = device_mouse_check_button(0, mb_left) && point_in_rectangle(touch_x, touch_y, x, y, x + sprite_width, y + sprite_height);
