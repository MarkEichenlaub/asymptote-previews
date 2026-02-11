unitsize(30);
Label f; 
f.p=fontsize(4); 
xaxis(.4,.6); 
//yaxis(0,.6); 
real f(real x) 
{ 
return x^2; 
} 
draw(graph(f,.4,.6));
real r = .55;
draw((.5,.25)--(.5,r*r), dashed+red+white);
draw((r,r*r)--(.5,r*r), dashed+blue+white);
draw((.5,.25)--(r,r*r), blue+white);
dot((.5,.25));
label("$x_0$", (.5,.25), SE);
dot((r,r*r));
label("$x$", (r,r*r), 1.5E);
label("$\Delta x$", (r,r*r), 4S+.15E, blue+white);
label(rotate(90)*"rise", (.48,.27), red+white);