import graph;
unitsize(0.8cm);
real v(real m){return 4*m/(1+m);}
draw(graph(v,0,10), blue);
draw(box((0,0),(10,4)));
label("$\mu$",(5,-.4),S);
label("$\frac{2\mu}{1+\mu}$",(0,2),W);
draw((2,0)--(2,.2));
draw((4,0)--(4,.2));
draw((6,0)--(6,.2));
draw((8,0)--(8,.2));
label("$0$",(0,0),SW);
label("$2$",(0,4),W);
label("$2$",(2,0),S);
label("$4$",(4,0),S);
label("$6$",(6,0),S);
label("$8$",(8,0),S);
label("$10$",(10,0),S);