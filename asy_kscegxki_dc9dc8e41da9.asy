unitsize(2cm);

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

draw(box((.1,.1),(.9,.9)));
label("$m$",(.5,.5));

//draw(box((3,0),(4,1)));
//label("$M$",(3.5,.5));
draw(shift(0,-.25)*yscale(1.5)*spring((3,.5),(2.5,.5)));
draw((3,-.5)--(3,1.5), linewidth(3pt));

draw((.95,.5)--(1.3,.5), arrow = Arrow(6), blue);
label("$v$",(1.1,.5),N,blue);