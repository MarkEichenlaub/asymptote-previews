size(5cm);
DefaultHead = TeXHead;

xaxis(-5, 5, Arrows());
yaxis(0, 4, Arrow());

real L = 2, k = 1;
draw(graph(new real(real t){ return sqrt(L^2 + (k*t)^2) - L; }, -5, 5), rgb(0, 0.6, 0.2));
draw(graph(new real(real t){ return (k*t)^2/(2*L); }, -4, 4), rgb(0, 0.6, 1));

xtick(Label("$L$", align=dir(-90)), dir=dir(-90), (L,0), 3);
xtick(Label("$-L$", align=dir(-90)), dir=dir(-90), (-L,0), 3);