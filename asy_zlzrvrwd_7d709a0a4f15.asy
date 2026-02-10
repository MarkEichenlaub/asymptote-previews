size(4cm);
defaultpen(fontsize(10pt));

real L = 2;
draw("$\ell$", (L/2, 0)--(-L/2, 0));

dot("$m$", (L/2, 0), dir(90));
dot("$m$", (-L/2, 0), dir(90));

real mass_pos = -2/3;
draw("$v$", (0,0)--(0, -0.6), Arrow(TeXHead), BeginMargin);
dot("$m$", (L/2, mass_pos));