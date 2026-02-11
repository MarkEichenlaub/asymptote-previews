size(8cm);
defaultpen(fontsize(10pt));
DefaultHead = TeXHead;

real bound = 2;
xaxis(-bound, bound, Arrows());
yaxis(-bound, bound, Arrows());

draw(graph(new real(real t){ return sin(t); }, -bound, bound), rgb(0, 0.4, 0));
draw(graph(new real(real t){ return t; }, -bound, bound), rgb(0, 0.4, 1)); // oops lazy
label("$\theta$", (2,0),E);
label("$y$",(0,2),N);

draw((1,-.06)--(1,.06));
draw((-1,-.06)--(-1,.06));
draw(reflect((0,0),(1,1))*((1,-.06)--(1,.06)));
draw(reflect((0,0),(1,1))*((-1,-.06)--(-1,.06)));
label("$1$",(1,-.06),S);
label("$1$",(-.06,1),W);