unitsize(6cm);

import graph;

real period(real theta){
real a = cos(theta/4);
return -log(a)/(1-a);
}

draw(graph(period,0.001,2),linewidth(2pt)+blue);

draw((0,1.5)--(0,0)--(2,0));
label("$A({}^\circ)$",(2,0),S);
label("$T \;(\mathrm{s})$",(0,1.5),W);

for( int i = 1; i<6; ++i){
int deg = i * 10;
label(string(deg),(deg*3.141/90,0),S);
draw((deg*3.141/90,0)--(deg*3.141/90,1.5), gray+linewidth(.5pt));
}

for( int j = 0; j<8; ++j){
real t = j/5*1.65;
label(string(t),(0,t/1.65),W);
draw((0,t/1.65)--(2,t/1.65),gray+linewidth(.5pt));
}