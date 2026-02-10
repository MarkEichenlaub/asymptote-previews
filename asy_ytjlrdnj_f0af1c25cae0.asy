//TeXeR source: https://artofproblemsolving.com/texer/ytjlrdnj

real r = 1;
real h = 3;

draw(yscale(.3)*scale(r)*unitcircle);
draw(shift(0,-h)*yscale(.3)*scale(r)*unitcircle);
draw((-r,-h)--(-r,0));
draw((r,-h)--(r,0));

draw("$r$",(0,-h)--(r,-h),dotted);
label("$h$",(r,-h/2),E);