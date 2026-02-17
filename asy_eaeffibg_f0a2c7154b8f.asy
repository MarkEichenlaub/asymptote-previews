size(4cm);
defaultpen(fontsize(10pt));

real wall_th = 0.1, wall_h = 1, wall_w = 0.7;
fill((-wall_th, -wall_th)--(-wall_th, wall_h)--(0, wall_h)--(0, 0)--(wall_w, 0)--(wall_w, -wall_th)--cycle, gray(0.7));
draw((0, wall_h)--(0, 0)--(wall_w, 0));

real ladder_w = 0.5, ladder_h = 0.8;
draw((0, ladder_h)--(ladder_w, 0));

label("$\mu$", (0, ladder_h), dir(180));
label("$\mu$", (ladder_w, 0), dir(-90));

draw("$\theta$", arc((ladder_w, 0), 0.08, 180 - aTan(ladder_h/ladder_w), 180));