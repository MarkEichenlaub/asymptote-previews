size(5cm);
DefaultHead = TeXHead;

xaxis(-2.7, 2.7, Arrows());
yaxis(0, 3.5, Arrow());

draw(graph(new real(real t){ return t^2/2; }, -2.6, 2.6), rgb(0, 0.6, 1));
draw(graph(new real(real t){ return 1 - cos(t); }, -2.7, 2.7), rgb(0, 0.6, 0.2));