size(8cm);

import graph;

real phi = 45;
real scalefactor = 100;

real U(real theta){
return scalefactor*(-Cos(phi + theta) - Cos(phi-theta));
}

draw(graph(U,-45,45),blue);

real min = U(0);
real max = U(45);

draw(box((-45,min),(45,max)));

label("$U_{\rm tot}$",(-45,max),W);
label("$\theta$",(0,min-10),S);

draw((0,min)--(0,max), dashed);
label("$0$",(0,min),S);
label("$45^\circ$",(45,min),S);
label("$-45^\circ$",(-45,min),S);