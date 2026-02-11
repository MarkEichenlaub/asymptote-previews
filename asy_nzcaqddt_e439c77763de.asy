real x(real t){
return 16*(Sin(t))^3;
}

real y(real t){
return 13*Cos(t) - 5*Cos(2*t) - 2*Cos(3*t) - Cos(4*t);
}

pair heart(real t){
return (x(t),y(t));
}

draw(graph(heart,0,360), deepred);

draw((0,5)--(0,-17),dotted);
label("$\ell$",(0,-3),E);