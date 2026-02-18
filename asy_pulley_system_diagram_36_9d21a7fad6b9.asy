draw((0,2)--(2.5,2));

draw((.2,2)--(.2,-1), deepgreen+linewidth(2pt));
label("$s_1$",(.2,.5),W,deepgreen);

draw(shift(.7,-1)*scale(.5)*unitcircle);
draw((.7,-1.0)--(.7,-2), magenta+linewidth(2pt));
label("$s_5$",(.7,-1.75), E, magenta);

draw((.5,-2)--(.9,-2)--(.9,-2.4)--(.5,-2.4)--cycle);
draw((1.2,-1)--(1.2,.5),blue+linewidth(2pt));
label("$s_2$",(1.2,-.25),W,blue);

draw(shift(1.7,.5)*scale(.5)*unitcircle);
draw((1.7,.5)--(1.7,2),orange+linewidth(2pt));
label("$s_4$",(1.7,1.25), W, orange);
draw((2.2,.5)--(2.2,-.5), deepred+linewidth(2pt));
label("$s_3$",(2.2,0),E,deepred);

draw((2,-.5)--(2.4,-.5)--(2.4,-.9)--(2,-.9)--cycle);

label("$B$",(.7,-2.2));
label("$A$",(2.2,-.7));