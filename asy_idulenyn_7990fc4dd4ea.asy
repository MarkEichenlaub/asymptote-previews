unitsize(3cm);

draw((0,0)--(1,0)--(1,1)--(0,1)--cycle);
draw((-.5,0)--(1.5,0), linewidth(2pt));

draw((.5,.5)--(.5,-.5), arrow = Arrow(6), deepgreen);
label("$p$",(.5,-.5),S,deepgreen);

draw(shift(.5,.5)*scale(2)*((0,0)--dir(60)), arrow = Arrow(6), deepgreen);
label("$J_{\rm floor}$",shift(.5,.5)*scale(2)*dir(60), NE, deepgreen);

draw(shift(.5,.5)*((0,0)--(2*.5,0)), dotted+deepgreen);
label("$\mu \cdot 2p$",(1.2,.5),S,deepgreen);

draw(shift(.5,.5)*((2*.5,0)--(2*.5,sqrt(3)/2*2)), dotted+deepgreen);
label("$2p$",shift(.5,-.3)*(2*.5,sqrt(3)/2*2),NE,deepgreen);

draw(arc((.5,.5),.2,0,60),deepgreen);
label("$\phi$",(.75,.65), deepgreen);