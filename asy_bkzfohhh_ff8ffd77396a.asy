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

draw(spring((-1,.5),(-0,.5)));
filldraw(box((0,0),(1,1)),lightgray);
draw(spring((1,.5),(2,.5)));
draw((-1,1.5)--(-1,0)--(2,0)--(2,1.5), linewidth(2pt));

label("$k_1$",(-.5,.6),N);
label("$k_2$",(1.5,.6),N);