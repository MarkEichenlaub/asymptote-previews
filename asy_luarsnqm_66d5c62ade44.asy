real inside(real x){
return x;
}

real outside(real x){
return x^(-.5);
}

draw(graph(inside,0,1));
draw(graph(outside,1,5));

draw((0,0)--(0,1));
draw((0,0)--(5,0));
label("$r$",(5,0),S);
label("$v_{\mathrm{rot}}$",(0,1),W);

draw((1,0)--(1,1),dotted);
label("$r_0$",(1,0),S);