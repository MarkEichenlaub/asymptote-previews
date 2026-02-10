size(5cm);
defaultpen(fontsize(10pt));

real ell = 2;

draw((-ell/2, 0)--(ell/2, 0));
dot("$A$", (-ell/2, 0), dir(180));
dot("$B$", (ell/2, 0), dir(0));

dot("$C$", (ell/2, -1), dir(0));

draw("$2v_0/3$", align=dir(0), (ell/2, -1)--(ell/2, 0), Arrow(TeXHead), Margin(1, 4));
draw(Label("$v_0/3$", Relative(1)), align=dir(180), (0, 0)--(0, -1/2), Arrow(TeXHead), Margin(1, 1));

label("$\times$", (ell/6, -1/3));