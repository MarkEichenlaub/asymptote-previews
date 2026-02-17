import three; import solids;
size(6cm); defaultpen(fontsize(10pt));
currentprojection = orthographic(1, -3, 0.3);

draw(cylinder((0, 0, 0), 1, 6, X));
draw(circle((3, 0, 0), 1, X), rgb("C882FF"));

triple P = (0.8, 0, 0);
draw(Label("$P$", Relative(1)), shift(3, 0, 0)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));
draw(shift(3, 0, 0.4)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));
draw(shift(3, -0.2, -0.4)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));

triple T = (-0.4, 0, 0);
draw(Label("$T$", Relative(1)), shift(3, -1, 0)*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(3, -Cos(50), Sin(50))*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(3, -Cos(40), -Sin(40))*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(3, -Cos(120), -Sin(120))*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(3, Cos(25), Sin(25))*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));