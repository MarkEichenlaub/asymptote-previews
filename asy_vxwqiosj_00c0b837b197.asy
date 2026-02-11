size(4cm);
DefaultHead = TeXHead;

xaxis(-2.7, 2.7, Arrows());
yaxis(0, 2, Arrow());

draw(graph(new real(real t){ return 1 - cos(t); }, -2.7, 2.7), rgb(0, 0.6, 0.2));