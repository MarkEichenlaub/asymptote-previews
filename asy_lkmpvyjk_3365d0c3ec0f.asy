import solids;
import graph3;
size(5cm);
defaultpen(fontsize(10pt));

currentprojection = orthographic(2, 3, 1.3);

real k = 0.7;
triple f(real t){ return (t, 0, k*t^2); }
material M = material(gray(0.8), black, gray(0.5));

draw(surface(revolution(graph(f, 0, 1))), M);
draw(circle((0, 0, k), 1));

xaxis(-1, 1, Arrows(TeXHead));
yaxis(0, 1, Arrow(TeXHead));
draw(Label("$z = kr^2$", Relative(1)), graph(new real(real t){ return k*t^2; }, -1, 1));

currentpicture = shift(2.3, 0)*currentpicture;