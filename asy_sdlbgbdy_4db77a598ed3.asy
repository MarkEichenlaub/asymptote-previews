size(3cm);
defaultpen(fontsize(10pt));

dot((0, 0));

real theta = 20, l = 1;
draw((0, 0)--l*dir(-90 + theta));
dot(l*dir(-90 + theta));

draw((0, 0)--(0, -0.4), dashed);
draw("$\theta$", arc((0, 0), 0.2, -90, -90 + theta));