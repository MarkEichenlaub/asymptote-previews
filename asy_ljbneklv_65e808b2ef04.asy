unitsize(2 cm);
real dx = .25;

real y_max = 30/18*1.1;

draw(box((-dx/2,0),(14.5*dx*60/55,y_max)));

label(rotate(90)*"$v$",(-dx/2-.1,1),W);
real xmax = 14.5*dx*60/55;

real myx = 0;
for(int i = 0; i<13; ++i){
myx = i*(xmax+dx/2)/12-dx/2;
}

label("$\frac{t_{\rm tot}}{2}$",(dx*7,-.1),S);
draw((dx*7,0)--(dx*7,1.1+(2/5.5)*1.1),dotted);

draw((-dx/2,0)--(5*dx,1.1)--(7*dx,1.1 + (2/5.5)*1.1)--(9*dx,1.1)--(14.5*dx,0)--(xmax,0),red);

draw((-dx/2,1.1+(2/5.5)*1.1)--(7*dx,1.1+(2/5.5)*1.1), dotted);
label("$v_{\rm max}$",(-dx/2,1.1+(2/5.5)*1.1),W);

//draw((14.5*dx,0)--(14.5*dx,y_max), dotted);
label("$t_{\rm tot}$",(14.5*dx,0),S);
draw((-dx/2,0)--(7*dx,1.1 + (2/5.5)*1.1),red+linewidth(3pt));