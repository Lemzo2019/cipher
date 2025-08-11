// Обработка ускорения
if (new_zn != 0) {
    tek++;
    if (tek == 15 && con < 10) {
        status_age += new_zn;
        tek = 0;
        con++;
    } 
	else if (con >= 10 && con <= 20 && tek = 30) {
        status_age += new_zn * 5
		tek = 0
        con++
	}
	else if (con >= 20) {status_age += new_zn}
	
} else {
    tek = 0;
    con = 0;
}
