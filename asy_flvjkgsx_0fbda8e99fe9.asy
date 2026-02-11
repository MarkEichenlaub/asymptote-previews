picture pic;
picture vxt;
picture vxd;

currentpicture = vxt;
draw(box((0,0),(2,1)));
draw((0,0)--(2,1), blue);
label("$v_{x, \mathrm{avg}; t}$",(0,.5),W);
label("$0$",(0,0),SW);
label("$t$",(1,0),S);
//label(rotate(90)*"$v_x$",(-.75,.5));
draw((0,.5)--(2,.5), dotted);
label("$v_{x; \mathrm{max}}$",(0,1),W);

currentpicture = vxd;
real pm(real d){return sqrt(d)/sqrt(2);}
draw(box((0,0),(2,1)));
draw(graph(pm,0,2), deepgreen);
label(rotate(90)*"$v_x$",(0,.5),W);
label("$0$",(0,0),SW);
label("$d$",(1,0),S);
label("$v_{x; \mathrm{max}}$",(0,1),W);

currentpicture = pic;
unitsize(3cm);
add(vxd);
add(shift(3,0)*vxt);