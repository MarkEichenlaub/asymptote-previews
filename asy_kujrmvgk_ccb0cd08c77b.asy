import graph;
real pm(real d){return sqrt(d)/sqrt(2);}
draw(box((0,0),(2,1)));
draw(graph(pm,0,2), blue);
label("$p_x$",(0,.5),W);
label("$0$",(0,0),SW);
label("$d$",(1,0),S);