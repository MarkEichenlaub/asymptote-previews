dot((0,0));
dot((1,0));
draw((0,0)--(1,0),linewidth(1.5pt));
draw((-1.2,0)--(1.2,0));
draw((0,0)--(0,.5),dotted);
draw("$\theta = \frac{\pi}{2}$",arc((0,0),.4,0,90));

dot((0,-2));
dot((0,-3));
draw((0,-2)--(0,-3),linewidth(1.5pt));
draw((-1.2,-2)--(1.2,-2));
draw((0,-2)--(0,-1.5),dotted);
draw(arc((0,-2),.4,90,-90));
label("$\theta = \pi$",(.3,-1.8),E);