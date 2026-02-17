import graph;

real I(real t){
return cos(t);}

real V(real t){
return -.7*sin(t);
}

draw((0,-.1)--(0,1));
draw((-.1,0)--(2*pi,0));

draw(graph(I,0,2*pi),red);
draw(graph(V,0,2*pi),blue);

label("$I$",(0,1),N,red);
label("$V$",(pi/2,-.7),S,blue);