size(3cm);
defaultpen(fontsize(10pt));

draw(unitcircle);

real eps = 0.05;
draw(Label("$Mg$", Relative(1)), shift(-eps, 0)*((0, -1)--(0, 0.3)), rgb(0, 0.4, 0.0), Arrow(TeXHead));
draw(Label("$Mg$", Relative(1)), shift(eps, 0)*((0, 0)--1.3*dir(-90)), rgb(0, 0.6, 1), Arrow(TeXHead));
draw(Label("$\mu Mg$", Relative(1)), shift(0, -eps)*((0, -1)--(-1, -1)), rgb(1, 0.2, 0.4), Arrow(TeXHead));