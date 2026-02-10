size(5cm);
defaultpen(fontsize(10pt));
DefaultHead = TeXHead;

dot((0, 0));

real theta = 20, l = 1;
draw((0, 0)--l*dir(-90 + theta));

draw((0, 0)--(0, -0.4), dashed);
draw("$\theta$", arc((0, 0), 0.2, -90, -90 + theta));
draw(arc((0, 0), l, -90, -90 + theta), dashed);

currentpicture = shift(-l*dir(-90 + theta))*currentpicture;
real mg = 0.4;

draw(Label("$mg$", Relative(1)), (0, 0)--(0, -mg), rgb(0.7, 0.4, 1), Arrow());
draw(Label("$mg \cos\theta$", Relative(1), dir(-30)), (0, 0)--mg*Cos(theta)*dir(-90 + theta), rgb(0.7, 0.4, 1), Arrow());
draw(Label("$mg \sin\theta$", Relative(1), dir(-120)), (0, 0)--mg*Sin(theta)*dir(180 + theta), rgb(0.7, 0.4, 1), Arrow());

dot((0, 0));