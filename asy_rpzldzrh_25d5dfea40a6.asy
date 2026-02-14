size(7cm);

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

draw(box((0,1),(1,2)));
label("$A$",(.5,1.5));
draw(box((1.5,1),(2.5,2)));
label("$B$",(2,1.5));
draw(shift(1,1.5)*yscale(2)*spring((0,0),(.5,0)));
label("$S$",(1.25,1.6),N);
label("time $t_1$",(1.5,.5));

draw((-1.5,-.2)--(4,-.2));

draw(box((-.5,-2),(.5,-1)));
label("$A$",(0,-1.5));
draw(shift(.25,0)*spring((.5,-1.5),(1.5,-1.5)));
draw(box((2,-2),(3,-1)));
label("$B$",(2.5,-1.5));
label("time $t_2$",(1.5,-2.5));

draw((-.55,-1.5)--(-1,-1.5), arrow = Arrow(6));
label("$v$",(-.75,-1.5),N);
draw((3.05,-1.5)--(3.5,-1.5), arrow = Arrow(6));
label("$v$",(3.25,-1.5),N);