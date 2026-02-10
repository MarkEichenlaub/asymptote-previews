size(8cm);

import graph;

real phi = 45;
real scalefactor = 100;

real weight = 1.6;

real U(real theta){
return scalefactor*(-Cos(phi + theta) - weight*Cos(phi-theta));
}

real min = -190;

draw(graph(U,-45,45),blue);

real max = U(-45);

draw(box((-45,min),(45,max)));

label("$U_{\rm tot}$",(-45,max),W);
label("$\theta$",(0,min-10),S);

draw((0,min)--(0,max), dashed);
label("$0$",(0,min),S);
label("$45^\circ$",(45,min),S);
label("$-45^\circ$",(-45,min),S);