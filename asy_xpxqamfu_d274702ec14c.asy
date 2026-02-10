unitsize(4cm);
import graph;
real y(real x){
return -2x^2;
}
real dx = .45^.5/sqrt(2);
draw(shift(-1,.15)*graph(y,-dx,.03), lightblue+linewidth(4pt));
fill(box((-.99,.012),(1,.5)), lightblue);
draw((-1,1)--(-1,.18), linewidth(2pt));
draw((-1,.12)--(-1,0)--(1,0)--(1,1), linewidth(2pt));

filldraw(shift(-.8,-.1)*scale(.2)*unitcircle, lightgray);
filldraw(shift(.8,-.1)*scale(.2)*unitcircle, lightgray);

draw((1.05,.25)--(1.55,.25), arrow = Arrow(6));
label("$v$",(1.3,.25),N);
draw((-1.6,-.3)--(1.5,-.3));