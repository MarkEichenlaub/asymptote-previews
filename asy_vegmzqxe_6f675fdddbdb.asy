real y1 = 1.63;
real un1 = .1;

real y2 = 1.65;
real un2 = .08;

unitsize(6cm);
import graph;

real x1 = 5*3.141/90;
real x2 = 10*3.141/90;
un1 = un1/1.65;
un2 = un2/1.65;
y1 = y1/1.65;
y2 = y2/1.65;

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

draw((0,1)--(2,1),red+linewidth(2pt));

draw((x1,1-un1)--(x1,1+un1), heavygreen+linewidth(2pt));
draw((x2,1+.03-un2)--(x2,1.03+un2),heavygreen+linewidth(2pt));
fill(shift((x1,1))*scale(.02)*unitcircle,heavygreen);
fill(shift(x2,1.03)*scale(.02)*unitcircle,heavygreen);