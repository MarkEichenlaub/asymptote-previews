size(4cm);
defaultpen(fontsize(10pt));

real R = 1, r = 0.22, d = 0.4;
filldraw(scale(R)*unitcircle ^^ reverse(circle((d, 0), r)), gray(0.8));

draw(Label("$d$", align=(0, 0), Fill(gray(0.8))), shift(0, -0.35*R)*((0, 0)--(d, 0)), Bars(size=5));
draw("$R$", (0, 0)--R*dir(100));
draw("$r$", shift(d, 0)*((0, 0)--r*dir(30)));

dot((0, 0));