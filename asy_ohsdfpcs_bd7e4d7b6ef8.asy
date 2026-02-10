unitsize(4cm);
pen brwn = RGB(166, 123, 7);

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

real dx = .6;
real bx = 1; //box position
real sx = .1+dx; //sandpaper position

draw((0,1)--(0,0)--(2.5,0), linewidth(2pt));
//label("floor / wall (immovable)",(1.25,0),S);

real dy = .02;
draw(shift(sx,dy)*((0,0)--(2.1,0)), linewidth(2pt)+brwn);
//label("sandpaper",(2.1+sx,0),NE,brwn);

filldraw(shift(bx,dy*1.5)*box((0,0),(1,.5)),lightgray);
//label("box",(bx+.5,.25+dy*1.5));

draw(shift(0,dy*1.5+.25)*yscale(1/bx)*spring((0,0),(bx,0)));
//label("spring",(bx/2,.25+dy*1.5 + .05),N);

draw(shift(sx+2.15,.05)*((0,0)--(.3,0)), arrow = Arrow(6), brwn);
label("$v$",(.2,0)+(sx+2.1,.05),N,brwn);

draw((1.5,-.1)--(1.5,.75), dotted);
label("$x = 0$",(1.5,-.1),S);