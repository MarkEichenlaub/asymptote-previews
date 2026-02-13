import geometry;
size(4cm);
defaultpen(fontsize(10pt));
real angle = -2*aTan(1/5);

real eps = 0.03;
draw("$(0.65\;\mathrm{kg})(5.00\;\mathrm{m/s})$", (0, eps)--(1, eps), dir(90), Arrow(TeXHead));
draw("$p_1$", (0, 0)--Cos(angle)*dir(angle), dir(-130), Arrow(TeXHead));
draw("$p_2$", Cos(angle)*dir(angle)--(1, 0), dir(-30), Arrow(TeXHead));

perpendicularmark(Cos(angle)*dir(angle), dir(angle + 135));