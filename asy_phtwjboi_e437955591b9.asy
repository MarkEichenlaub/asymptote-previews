size(5cm);
defaultpen(fontsize(10pt));
DefaultHead = TeXHead;

dot((0, 0));

real theta = 20, l = 1;
draw((0, 0)--l*dir(-90 + theta));

draw((0, 0)--(0, -0.4), dashed);
draw("$\theta$", arc((0, 0), 0.2, -90, -90 + theta));

currentpicture = shift(-l*dir(-90 + theta))*currentpicture;
real mg = 0.4;

draw(Label("$mg$", Relative(1)), (0, 0)--(0, -mg), rgb(0.7, 0.4, 1), Arrow());
draw(Label("$T$", Relative(1), dir(theta)), shift(0.03*dir(theta))*((0, 0)--0.3*dir(90 + theta)), rgb(0, 0.6, 1), Arrow());

dot((0, 0));