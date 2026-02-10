//TeXeR source: https://artofproblemsolving.com/texer/skllzdjd

unitsize(1cm);

draw(yscale(.3)*unitcircle);
draw(shift(0,-3)*yscale(.3)*unitcircle);
draw((-1,-3)--(-1,0));
draw((1,-3)--(1,0));
draw("$r$",(0,-3)--(1,-3),dotted);
label("$h$",(1,-1.5),E);
draw(shift(6,-1)*yscale(.3)*scale(3)*unitcircle);
draw(shift(6,-1)*shift(0,-1)*yscale(.3)*scale(3)*unitcircle);
draw(shift(6,-1)*((-3,-1)--(-3,0)));
draw(shift(6,-1)*((3,-1)--(3,0)));
draw("$h$",(6,-2)--(9,-2),dotted);
label("$r$",(9,-1.5),E);

label("$V_{\rm tall} = \pi r^2 h$",(0,-4));
label("$V_{\rm short} = \pi h^2 r$",(6,-4));