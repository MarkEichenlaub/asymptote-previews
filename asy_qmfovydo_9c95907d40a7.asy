//TeXeR source: https://artofproblemsolving.com/texer/qmfovydo

unitsize(2cm);
draw((0,0)--(0,1), linewidth(2pt)+brown );
draw((-.1,1)--(1.1,1), linewidth(2pt)+brown );
draw((1,0)--(1,1), linewidth(2pt)+brown );
draw(shift((-.2,1.13))*scale(.1)*unitcircle);
draw(shift((1.2,1.13))*scale(.1)*unitcircle);
draw((1.35,1.13)--(1.85,1.13), arrow = Arrow(6));
draw((-1,0)--(4,0));
draw((-.2,0)--(-.2,1.13),dotted);
import graph;
real y(real x){return 1.13-(x/2)^2;}
draw(shift(1.2,0)*graph(y,0,2*sqrt(1.13)), dotted);