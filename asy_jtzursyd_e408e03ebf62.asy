unitsize(1cm);

draw(unitcircle);
draw(shift(6,0)*unitcircle);

real r = 1.02;

draw((0,r)--(6,r)--arc((6,0),r,90,-90)--(0,-r)--arc((0,0),r,-90,-270)--cycle, linewidth(2pt));
label("belt",(3,-r),S);

real cr = 1.12;
draw((0,cr)--(6,cr), linewidth(4pt)+brown);

path tri = ((0,1)--dir(210)--dir(330)--cycle);

filldraw(shift(4,1.5 - .5*.2*dir(210).y)*yscale(.2)*scale(.5)*tri);

real left = 4 + .5*dir(210).x;
real right = 4 + .5*dir(330).x;
real h = (1 - dir(210).y)*.5*.2;

filldraw((left,2)--(left,1.5)--(4,1.5+h)--(right,1.5)--(right,2)--cycle, lightgray );
draw((3.3,2)--(3.3,1.5), arrow = Arrow(6));
label("cutter",(4,2),N);

label("dough",(3,1),S,brown);
draw(shift(6.15,cr)*((0,0)--(1,0)), arrow = Arrow(6), brown);
label("$v$",(6.6,cr),N,brown);