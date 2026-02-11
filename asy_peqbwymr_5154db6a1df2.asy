picture pic;
picture vxt;
picture vxd;

currentpicture = vxt;
fill((0,0)--(2,0)--(2,1)--cycle, paleblue);
draw(box((0,0),(2,1)));
draw((0,0)--(2,1), blue+linewidth(1.5pt));
label("$v_{x, \mathrm{avg}; t}$",(0,.5),W);
label("$0$",(0,0),SW);
label("$t$",(1,0),S);
//label(rotate(90)*"$v_x$",(-.75,.5));
draw((0,.5)--(2,.5), dotted);
label("$v_{x; \mathrm{max}}$",(0,1),W);

currentpicture = vxd;
real pm(real d){return sqrt(d)/sqrt(2);}
fill((0,0)--graph(pm,0,2)--(2,0)--cycle, paleblue);
draw(box((0,0),(2,1)));
draw(graph(pm,0,2), blue+linewidth(1.5pt));
label(rotate(90)*"$v_x$",(-.2,.4),W);
label("$0$",(0,0),SW);
label("$d$",(1,0),S);
label("$v_{x; \mathrm{max}}$",(0,1),W);
draw((0,2/3)--(2,2/3), dotted);
label("$v_{x; \mathrm{avg}; d}$",(0,2/3),W);

currentpicture = pic;
unitsize(3cm);
add(vxd);
add(shift(3,0)*vxt);