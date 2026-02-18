draw((0,1)--(1,1));

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

draw(spring((.5,1),(.5,0)),gray);

fill((.4,0)--(.6,0)--(.6,-.2)--(.4,-.2)--cycle);

draw((.5,-.1)--(.5,.4),linewidth(2pt)+blue, arrow = Arrow(6));
label("spring force",(.5,.2),E,blue);
draw((.5,-.1)--(.5,-.6),linewidth(2pt)+heavyred, arrow = Arrow(6));
label("gravitational force",(.5,-.4),E,heavyred);