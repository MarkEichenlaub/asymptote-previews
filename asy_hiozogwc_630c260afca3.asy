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

draw((0,0)--(2,0),linewidth(2pt));
draw(spring((1,0),(1,-1)));
filldraw(box((.5,-2),(1.5,-1)), lightgray);
draw(spring((1,-2),(1,-3)));
draw((1,-3.05)--(1,-3.55), arrow = Arrow(6), blue);
label("$v$",(1,-3.55),S,blue);