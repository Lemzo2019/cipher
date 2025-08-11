function Scr_bac_col(){ // Поставь в одном объекте. Можно в событии создать
	
	//Выбераем цвет в зависимости от стиля
	var color = make_color_rgb(41,49,51); // дефолт (тёмный)
	switch (global.style) {
	    case 1: // Light
	        color = make_color_rgb(169, 169, 169); // Грязновато белый
	        break;
	    case 2: // AMOLED
	        color = make_color_rgb(10,18,28); // очень тёмно-синий, не тупо чёрный
	        break;
	    case 3: // Sepia
	        color = make_color_rgb(200,200, 100); // светло-сепия, не желтит
	        break;
	    case 4: // Solarized Light
	        color = make_color_rgb(250,247,235); // чуть теплее, чтобы не выбивалось
	        break;
	    case 5: // Nord
	        color = make_color_rgb(59,66,82); // nord background
	        break;
	    case 6: // Dracula
	        color = make_color_rgb(139, 0, 0); // Красноватый
	        break;
	    case 7: // Pastel
	        color = make_color_rgb(255,192, 203	); // очень светлый розовый, под пастель
	        break;
	    case 8: // High Contrast
	        color = make_color_rgb(0,0,0); // чёрный, тут пофиг
	        break;
	    case 9: // Ocean / Teal
	        color = make_color_rgb(10,38,48); // глубокий тёмно-бирюзовый
	        break;
	    default:
	        break;
	}
	
	// Устанавливаем цвет заднего фона
	draw_set_colour(color); // color — твой цвет фона
	draw_rectangle(0, 0, room_width, room_height, false);
}