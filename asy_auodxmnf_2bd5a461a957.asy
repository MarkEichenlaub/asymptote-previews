import stats;
size(5cm);
DefaultHead = TeXHead;

real g(real x){ return 8*Gaussian(x); }

draw(graph(g, -4, 12));
dot((-4, 0));
dot((12, 0));

draw((2, 2)--(4, 2), Arrow());