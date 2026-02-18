path spring(pair start, pair end){
path resist = start--start;
int zigs = 24;

real direction = angle(end-start);

pair zig_end = start;
pair zig_start = zig_end;

for (int i = 1; i <= zigs; ++i){
int pm = -1;
if(quotient(i,2) % 2 == 0){
pm = 1;
}
real zig_length = length(end-start)/12;
zig_end = zig_start + zig_length*(cos(direction+pm*pi/3),sin(direction+pm*pi/3));
resist = resist--zig_end;
zig_start = zig_end;
}
resist = resist--end;
return resist;
}

draw(box((0,0),(2,1.5)));
draw((2.05,0.75)--(3,0.75), arrow = Arrow(6),red);
label("$v$",(2.5,.75),N,red);

draw(shift(3.5,.75)*yscale(3)*spring((0,0),(.5,0)));
draw(shift(4.5,.75)*scale(.5)*unitcircle);

label("club",(1,.75));
label("ball",(4.5,.75));