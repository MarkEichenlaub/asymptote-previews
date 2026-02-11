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

for (int i = -17; i<12; ++i){
for (int j = -16; j<16; ++j){
draw(box((j,i),(j+1,i+1)),lightgray);
}}

draw((-8,12)--(8,12),dotted);
label("$\ell$",(0,12),N);