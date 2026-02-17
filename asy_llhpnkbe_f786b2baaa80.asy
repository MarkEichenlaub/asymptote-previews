size(5cm);
defaultpen(fontsize(10pt));

real a = 0.7, b = 1, theta = aTan(b/a);
transform tr = rotate(-theta);

draw(tr*box((-b/2, -a/2), (b/2, a/2)));

real mg = 0.9, eps = 0.03, mu_s = 0.8;
draw(Label("$Mg$", Relative(1)), (0, 0)--(0, -mg), rgb(0.7, 0.4, 1), Arrow(TeXHead));
draw(Label("$\mu_s Mg\cos\theta$", Relative(0.8), align=dir(-90-theta)), tr*shift(a/2*Tan(theta), 0)*((0, -a/2 - eps)--(-mu_s*mg*Cos(theta), -a/2 - eps)), rgb(0, 0.6, 1), Arrow(TeXHead));
draw(Label("$Mg \cos\theta$", Relative(1), align=dir(theta-90)), tr*shift(a/2*Tan(theta), 0)*((0, -a/2)--(0, mg*Cos(theta) - a/2)), rgb(1, 0.4, 0.1), Arrow(TeXHead));