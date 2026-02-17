import three; import solids;
size(6cm); defaultpen(fontsize(10pt));
currentprojection = orthographic(1, -3, 0.3);

draw(cylinder((0, 0, 0), 1, 6, X));
draw((0, -1, 0)--(6, -1, 0)--(6, 1, 0)--(0, 1, 0)--cycle, rgb("C882FF")+dashed);

triple P = (0, 0, 0.6);
draw(Label("$P$", Relative(1)), shift(3, 0, 0)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));
draw(shift(1, 0, 0)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));
draw(shift(2, 0, 0)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));
draw(shift(4, 0, 0)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));
draw(shift(5, 0, 0)*((0, 0, 0)--P), rgb("42a1ff"), Arrow3(TeXHead3));

triple T = (0, 0, -0.4);
draw(Label("$T$", Relative(1)), shift(3, -1, 0)*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(4.5, -1, 0)*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(1.5, -1, 0)*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(3, 1, 0)*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(4.5, 1, 0)*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));
draw(shift(1.5, 1, 0)*((0, 0, 0)--T), rgb("64ff8c"), Arrow3(TeXHead3));