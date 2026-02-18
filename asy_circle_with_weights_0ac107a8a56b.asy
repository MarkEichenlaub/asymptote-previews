draw(unitcircle);

draw((-1,0)--(-1,-2));

draw((-1.4,-2.8)--(-.6,-2.8)--(-.6,-2)--(-1.4,-2)--cycle);
draw((1,0)--(1,-2));
draw((.5,-2)--(1.5,-2)--(1.5,-3)--(.5,-3)--cycle);

label("$A$",(-1,-2.5));
label("$B$",(1,-2.5));

draw((1,-3.1)--(1,-4), arrow = Arrow(6), deepred);
draw((-1.1,-1.9)--(-1.1,-1), arrow = Arrow(6), deepred);

draw((-1,0)--(-1,-2)--arc((0,0),1,180,0)--(1,-2), brown+linewidth(2pt));