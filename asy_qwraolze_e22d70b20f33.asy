picture pic;
picture vxt;
picture vxd;

currentpicture = vxd;
real pm(real d){return sqrt(d)/sqrt(2);}
draw((0,0)--(2,1), blue+linewidth(2pt));
draw(box((0,0),(2,1)));
draw(graph(pm,0,2), deepgreen+linewidth(2pt));
label(rotate(90)*"$v_x$",(0,.5),W,fontsize(24pt));
label("$0$",(0,0),SW);
label("${\huge d}$",(1,1),N, deepgreen+fontsize(24pt));
label("$t$",(1,0),S, blue+fontsize(24pt));
label("$v_{x; \mathrm{max}}$",(0,1),W);
draw((0,.5)--(2,.5), dotted);
label("$v_{x;{\rm max}} / 2$",(2,.5),E);

currentpicture = pic;
unitsize(4cm);
add(vxd);