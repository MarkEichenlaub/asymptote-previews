size(4cm);
defaultpen(fontsize(10pt));

real r = 0.6;

fill(unitcircle^^reverse(scale(r)*unitcircle), rgb(0.8, 0.7, 1)+white);
fill(scale(r)*unitcircle, rgb(0.5, 0.8, 1)+white);

draw(unitcircle);
draw(scale(r)*unitcircle);

draw("$r$", (0, 0)--r*dir(60));

dot((0, 0));