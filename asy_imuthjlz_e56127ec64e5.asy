size(4cm);
defaultpen(fontsize(10pt));

real wall_th = 0.1, wall_h = 1.1, wall_w = 0.7;
fill((-wall_th, -wall_th)--(-wall_th, wall_h)--(0, wall_h)--(0, 0)--(wall_w, 0)--(wall_w, -wall_th)--cycle, gray(0.8));
draw((0, wall_h)--(0, 0)--(wall_w, 0));

real ladder_w = 0.5, ladder_h = 0.8;
draw((0, ladder_h)--(ladder_w, 0));

draw("$\theta$", arc((ladder_w, 0), 0.08, 180 - aTan(ladder_h/ladder_w), 180));

real N = 1/5, mu = 0.8, eps = 0.02;
draw(Label("$N$", Relative(1), dir(0)), shift(ladder_w, 0)*((0, 0)--(0, N)), rgb(0, 0.4, 0), Arrow(TeXHead));
draw(Label("$\mu N$", Relative(1), dir(-90)), shift(ladder_w, -eps)*((0, 0)--(-mu*N, 0)), rgb(0, 0.4, 0), Arrow(TeXHead));
draw(Label("$\mu N$", Relative(1), dir(90)), shift(0, ladder_h)*((0, 0)--(mu*N, 0)), rgb(0, 0.4, 0), Arrow(TeXHead));
draw(Label("$\mu^2 N$", Relative(1), dir(180)), shift(-eps, ladder_h)*((0, 0)--(0, mu^2*N)), rgb(0, 0.4, 0), Arrow(TeXHead));

real mg = N+mu^2*N;
draw(Label("$mg$", Relative(1), dir(190)), shift(ladder_w/2, ladder_h/2)*((0, 0)--(0, -mg)), rgb(0, 0.3, 0.6), Arrow(TeXHead));