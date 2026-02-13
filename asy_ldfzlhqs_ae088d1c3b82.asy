import trembling;
size(4cm);
defaultpen(fontsize(10pt));

tremble tr = tremble(angle=14, frequency=1);

real ell = 1, rock_size = 1/6, theta = 15;
draw((0, 0)--ell*dir(theta - 90));
filldraw(rotate(theta)*tr.deform(circle((0, -ell), rock_size)), gray(0.9));
dot((0, 0));
dot(ell*dir(theta - 90), gray(0.7));

draw((0, 0)--ell/3*S, dotted);
draw("$\theta$", arc((0, 0), ell/5, -90, theta - 90));