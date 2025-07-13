
var pl = Obj_time_now.pl_tim
Obj_time_now.tim = 1

if ((pl + 1) < 23) {
	Obj_time_now.pl_tim += 1
}
else {
	Obj_time_now.pl_tim = 0
}