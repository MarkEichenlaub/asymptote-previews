size(5cm);

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

draw(box((0,0),(1,1)));
label("$A$",(.5,.5));
draw(box((1.5,0),(2.5,1)));
label("$B$",(2,.5));
draw(shift(1,.5)*yscale(2)*spring((0,0),(.5,0)));
label("$S$",(1.25,.6),N);

draw((.5,1.1)--(-.1,1.1), arrow = Arrow(6));
label("$v$",(.2,1.1),N);
draw((2,1.1)--(1.4,1.1), arrow = Arrow(6));
label("$v$",(1.7,1.1),N);