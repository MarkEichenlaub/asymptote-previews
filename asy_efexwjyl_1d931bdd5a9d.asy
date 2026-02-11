Label f; 
f.p=fontsize(6); 
xaxis(-2,2); 
yaxis(-1,4); 
real f(real x) 
{ 
return x^2; 
} 
draw(graph(f,-2,2));
real r = 1.6;
draw((.5,.25)--(r,r*r), blue+white);
dot((.5,.25));
label("$x_0$", (.5,.25), SE);