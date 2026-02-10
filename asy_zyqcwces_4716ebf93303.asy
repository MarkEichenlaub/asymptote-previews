unitsize(3cm);
real w = 1;
real h = 2;

filldraw(shift(0,0)*box((-.05,0),(w+.05,h)), lightgray);

real push_height = .9*h;
real f = 0.3;

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

int springs = 8;

for(int i = 0; i<= springs; ++i){
real x = i/springs*w;
real y = -h/springs;
draw( shift(x,0)*xscale(1.5)*spring((0,y),(0,0)) );
draw((x,0)--(x,.1), arrow = Arrow(6), red);
}

real y = -h/springs;
//draw((-.3,y)--(1.3,y),linewidth(2pt));

draw((w/2,0)--(w/2,.8), arrow = Arrow(6),red+linewidth(2pt));
label("$\vec{N}_{\rm net}$",(w/2,.5),E,red);

draw(shift(-f-.05,push_height)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_P$",(-f/2-.05,push_height),N,red);

dot((w+.05,0),6+red);

draw(arc((w+.05,0),1,85,55), arrow = Arrow(6));