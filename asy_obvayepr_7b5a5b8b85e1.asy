//TeXeR source: https://artofproblemsolving.com/texer/obvayepr

unitsize(4cm);

draw(yscale(.3)*unitcircle);

draw(yscale(.3)*scale(.3)*unitcircle,linewidth(2pt));
draw((0,0)--(.3,0),dotted);
label("$r$",(.13,-.04));

for(int i = 1; i<60; ++i){
 draw(yscale(.3)*arc((0,-i/10),1,5,-185));
}

real theta = 135*pi/180;
draw((0,0)--(cos(theta),.3*sin(theta)),dotted);
label("$R$",(-.4,.17));

draw((-1.3,-.4)--(.8,-.4)--(1.3,.4)--(-.8,.4)--cycle);
label("nonmagnetic sheet",(1.13,.15),E);

label("ring",(0,-.09),S);