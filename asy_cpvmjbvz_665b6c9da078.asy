import trembling;
defaultpen(fontsize(10pt));
size(5cm);

tremble tr = tremble(angle=15, frequency=0.1, random=10, fuzz=1);

draw(unitcircle);
draw((-1, -1)--(3, -1));
draw("$\mu$", tr.deform((3, -1)--(8, -1)), 1.5*dir(-90));

draw((3, -1.2)--(3, -0.8));
label("$t = 0$", (3, -1.2), dir(-90));

draw(Label("$\vec v_0$", Relative(1), dir(90)), (1, 0)--(2, 0), Arrow(TeXHead), BeginMargin);