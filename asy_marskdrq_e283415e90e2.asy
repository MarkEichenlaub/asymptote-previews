import graph;

real sine(real x){
return 1+cos(x);
}

draw(graph(sine,0,4*3.141));

draw((0,0)--(0,2));
draw((0,0)--(4*3.141,0));
label("$\phi$",(4*3.141,0),S);

label("$4I_0$",(0,2),W);