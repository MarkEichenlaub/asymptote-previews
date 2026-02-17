size(7cm);
defaultpen(fontsize(10pt));

real d = 0.2;
dot("planet", (0, 0), dir(-90), linewidth(5));
dot("$\leftarrow$\,satellite", (d, 0), 1.5*dir(7));
draw((0, 0)--(d, 0), dashed);

real theta = 50, v = 0.3*d;
draw("$\theta$", arc((d, 0), v/2.5, 180, 180 + theta));
draw(Label("$v$", align=dir(-90+theta), Relative(0.8)), shift(d, 0)*((0, 0)--v*dir(180 + theta)), EndArrow(TeXHead));

real eps = 0.1*d;
draw(Label("$d$", align=(0, 0), UnFill), shift(0, eps)*((0, 0)--(d, 0)), Bars(size=5));