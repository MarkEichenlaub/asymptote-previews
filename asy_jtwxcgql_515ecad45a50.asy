size(6cm);
defaultpen(fontsize(10pt));

real h = 5, w = 1, l = 1.5, a1 = 1, a2 = 5;

draw((-l - a1, h)--(-l - a1, 0)--(l + a2, 0)--(l + a2, h));
draw((-l, h)--(-l, w)--(l, w)--(l, h));

real epsh = 0.6, epsl = 0.1;
draw((-l - a1 + epsl, h - epsh)--(-l - epsl, h - epsh), linewidth(3));
draw((l + a2 - epsl, h - epsh)--(l + epsl, h - epsh), linewidth(3));

real F = 1;
draw(Label("$F_L$", Relative(0)), shift(-l - a1/2, h - epsh)*((0, F)--(0, 0)), Arrow(TeXHead), Margin);
draw(Label("$F_R$", Relative(1)), shift(l + a2/2, h - epsh)*((0, 0)--(0, 2*F)), Arrow(TeXHead), BeginMargin);

label("Fluid", (l + a2/2, h/2));