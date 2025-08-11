function Scr_butt(){
	// Переменные 
	var dist = sprite_height/1.5			      // Степень закругления
	var ots = 3									  // Отспуп от кнопки для обводки
	var alf = 0.7								  // Прозрачность
	var col_b = make_color_rgb(200, 200, 200)     // Цвет кнопки
	var col_m = make_color_rgb(150, 150, 150)	  // Цвет при наводке на кнопку
	var col_t = c_black							  // Цвет обводки
	var col_txt = c_black						  // Цвет текста на кнопке
	var w = sprite_width	// Техническое
	var h = sprite_height

	// Настраиваем палитру
	switch (global.style) {
	    case 1: // Light
	        dist = sprite_height/1.5;
	        ots  = 3;
	        alf  = 0.90;
	        col_b = make_color_rgb(33,150,243);      // синий
	        col_m = make_color_rgb(21,101,192);      // темнее
	        col_t = make_color_rgb(221,225,230);     // светлая обводка
	        break;

	    case 2: // AMOLED
	        dist = sprite_height/1.5;
	        ots  = 3;
	        alf  = 0.85;
	        col_b = make_color_rgb(30,144,255);      // ярко-синий
	        col_m = make_color_rgb(0,80,200);        // темнее
	        col_t = make_color_rgb(80,80,80);        // тёмно-серая обводка
	        break;

	    case 3: // Sepia
	        dist = sprite_height/1.6;
	        ots  = 3;
	        alf  = 0.90;
	        col_b = make_color_rgb(193,154,107);     // мягкий коричневый
	        col_m = make_color_rgb(160,120,90);      // темнее
	        col_t = make_color_rgb(210,195,175);     // светлая обводка
	        col_txt = make_color_rgb(60,40,20);      // тёмно-коричневый текст
	        break;

	    case 4: // Solarized Light
	        dist = sprite_height/1.5;
	        ots  = 3;
	        alf  = 0.90;
	        col_b = make_color_rgb(38,139,210);      // синий solarized
	        col_m = make_color_rgb(17,87,138);       // темнее
	        col_t = make_color_rgb(223,216,198);     // светлая обводка
	        break;

	    case 5: // Nord
	        dist = sprite_height/1.5;
	        ots  = 3;
	        alf  = 0.85;
	        col_b = make_color_rgb(129,161,193);     // nord blue
	        col_m = make_color_rgb(94,129,172);      // nord darker blue
	        col_t = make_color_rgb(76,86,106);       // nord border
	        break;

	    case 6: // Dracula
	        dist = sprite_height/1.6;
	        ots  = 3;
	        alf  = 0.85;
	        col_b = make_color_rgb(178, 34, 34);     // dracula purple
	        col_m = make_color_rgb(250, 50, 50);      // dracula green (ярко для ховера)
	        col_t = make_color_rgb(68,71,90);        // dracula border
	        break;

	    case 7: // Pastel
	        dist = sprite_height/1.3;
	        ots  = 3;
	        alf  = 0.95;
	        col_b = make_color_rgb(255,183,197);     // розовый пастель
	        col_m = make_color_rgb(255,223,186);     // светло-оранжевый пастель
	        col_t = make_color_rgb(220,225,235);     // светлая обводка
	        break;

	    case 8: // High Contrast
	        dist = sprite_height/1.5;
	        ots  = 3;
	        alf  = 1.00;
	        col_b = make_color_rgb(255,255,0);       // жёлтый
	        col_m = make_color_rgb(255,128,0);       // оранжевый
	        col_t = make_color_rgb(255,255,255);     // белая обводка
	        break;

	    case 9: // Ocean / Teal
	        dist = sprite_height/1.5;
	        ots  = 3;
	        alf  = 0.85;
	        col_b = make_color_rgb(0,168,150);       // teal
	        col_m = make_color_rgb(0,210,190);       // светлее
	        col_t = make_color_rgb(40,60,74);        // тёмная обводка
	        break;

	    default:
	        break;
	}
	
	// Смена цвета при нажатии 
	var make_color 
	if (is_pressed) {
		make_color = col_m
	}
	else {
		make_color = col_b
	}

	// Круглая кнопка
	draw_set_colour(make_color)
	draw_set_alpha(alf)
	draw_roundrect_ext(x, y, x + w, y + h, dist, dist, false)
	draw_set_alpha(1)

	// Особая обводка для кнопки (Но её особеность не видно :) 
	draw_set_colour(col_t)
	draw_set_alpha(alf)
	draw_roundrect_ext(x - ots, y - ots, x + w + ots, y + h + ots, dist, dist, true)
	draw_set_alpha(1)
	
	// Цвет текста на кнопке
	draw_set_colour(col_txt)

}