size(4cm);
defaultpen(fontsize(10pt));
DefaultHead = TeXHead;

real bound = 1.5;
real k = 1;
real l_r = 1;
xaxis(-bound, bound, Arrows());
yaxis(-bound, bound, Arrows());

draw(graph(new real(real x){ real l_s = sqrt(x^2 + l_r^2); return 2*k*x*(l_s-l_r)/l_s; }, -bound, bound), rgb(0, 0.4, 0));