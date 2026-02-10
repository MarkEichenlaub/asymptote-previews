//TeXeR source: https://artofproblemsolving.com/texer/wryehndn

real h = 1;
real r = 3;

draw(yscale(.3)*scale(r)*unitcircle);
draw(shift(0,-h)*yscale(.3)*scale(r)*unitcircle);
draw((-r,-h)--(-r,0));
draw((r,-h)--(r,0));

draw("$h$",(0,-h)--(r,-h),dotted);
label("$r$",(r,-h/2),E);