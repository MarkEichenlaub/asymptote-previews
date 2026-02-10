unitsize(1cm);

real theta =0;

draw(box((0,-1),(2*pi,1)));
label("$\Delta \ell$",(-.5,0),W,red);
label("$t$",(pi,-1.6),S);

draw((0,0)--(2*pi,0),dashed);
label("$0$",(0,0),W,red);
label("$0$",(0,-1),S);

label("$A$",(0,1), W,red);
label("$-A$",(0,-1),W,red);
label("$A\sqrt{\frac{k}{m}}$",(0,1),N,deepgreen);
label("$-A\sqrt{\frac{k}{m}}$",(0,-1),S,deepgreen);

//dot((0,0),5+palered);

//dot((theta*pi/180,sin(theta*pi/180)),5+red);

draw((pi/2,-1)--(pi/2,-1+.1));
draw((pi/2,1)--(pi/2,1-.1));

draw((pi,-1)--(pi,-1+.1));
draw((pi,1)--(pi,1-.1));

draw((3/2*pi,-1)--(3*pi/2,-1+.1));
draw((3/2*pi,1)--(3*pi/2,1-.1));

label("$\frac{A \pi}{2s}$",(pi/2,-1),S);
label("$\frac{A \pi}{s}$",(pi,-1),S);
label("$\frac{3A \pi}{2s}$",(3*pi/2,-1),S);
label("$\frac{2A \pi}{s}$",(4*pi/2,-1),S);

real th = 0;
for(int i = 1; i<=10; ++i){
th = i/10*pi/2*10/11;
//dot((th, sin(th)), 5+palered);
}

import graph;

real y(real t){
return sin(t);
}

draw(graph(y,0,8*pi/4),red+linewidth(1.5pt));
draw(yscale(-1)*graph(y,0,8*pi/4),blue+linewidth(1.5pt));
label("$a_{\rm SHM}$",(8*pi/4+.5,0), E,blue);
label("$0$",(8*pi/4,0),E,blue);
label("$Ak/m$",(8*pi/4,1),E,blue);
label("$-Ak/m$",(8*pi/4,-1),E,blue);

draw(shift(-2*pi/4,0)*graph(y,2*pi/4,10*pi/4),deepgreen+linewidth(1.5pt));