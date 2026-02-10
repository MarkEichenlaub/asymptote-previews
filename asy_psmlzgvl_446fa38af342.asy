size(8cm);

path ramp(real h, real x){
pair last_point = (.9*x,h*.1);
real deltax = .1*x/h;
real s = h/x;
return (0,h)--last_point{1,-s}..{1,0}(.9*x+2*deltax,0){1,0}--(.9*x + 2*deltax + x/5,0);
}

draw(ramp(1,.5));
draw((0,0)--(0,1), dotted);
label("$h$",(0,.5),W);
label("(A)",(-.5,.5),W);

draw(shift(0,-1.5)*ramp(1,1));
draw((0,-1.5)--(0,-.5), dotted);
label("$h$",(0,-1),W);
label("(B)",(-.5,-1),W);

draw(shift(0,-3)*ramp(1,2));
draw((0,-3)--(0,-2), dotted);
label("$h$",(0,-2.5),W);
label("(C)",(-.5,-2.5),W);