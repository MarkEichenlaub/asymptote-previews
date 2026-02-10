import graph;
real ke(real t){return t^2/4;}
draw(box((0,0),(2,1)));
draw(graph(ke,0,2), blue);
label("$KE$",(0,.5),W);
label("$0$",(0,0),SW);
label("$t$",(1,0),S);