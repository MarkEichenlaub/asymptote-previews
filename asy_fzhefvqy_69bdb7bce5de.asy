import graph;

real y(real d){
return 1-cos(d);
}

real r = 3;
real max = y(r);

draw(graph(y,-r,r), blue);

draw(box((-r,0),(r,max)));

draw((0,0)--(0,max),dashed);

label("$y$",(-r,max/2),W);
label("$d$",(0,-.75));
label("$0$",(0,0),S);
label("$0$",(-r,0),W);

real par(real d){
return d^2/2;
}

draw(graph(par,-r/1.5,r/1.5),dotted+red+linewidth(2pt));