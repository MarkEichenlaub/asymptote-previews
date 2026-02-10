size(3.5cm);
defaultpen(fontsize(10pt));

real ell = 2;

pair X = (-ell/2, 0), com = (ell/6, -1/3);

draw(shift(X.x, 0)*((0, 0.5)--(0, -1)), linetype("4 8") + gray(0.6));
draw("$2\ell/3$", com--(-ell/2, com.y), linetype("4 8"), Margin(1, 0));

dot("$X$", X, dir(180));
draw(Label("$v_0/3$", Relative(1)), align=dir(180), X--(X - (0, 1/2)), Arrow(TeXHead), Margin(1, 0));

label("$\otimes$", com);