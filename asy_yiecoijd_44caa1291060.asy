//TeXeR source: https://artofproblemsolving.com/texer/yiecoijd

unitsize(2cm);

fill(scale(2)*unitcircle,gray);
draw(scale(2)*unitcircle);
fill(unitcircle,white);
draw(unitcircle);

dot((.5,0));
label("$q$",(.5,0),S);

draw((0,0)--(.5,0),dotted);
label("$r/2$",(.25,0),N);

draw((0,0)--(0,1),dotted);
label("$r$",(0,.5),W);

draw((0,0)--(-1,-1)*sqrt(2),dotted);
label("$2r$",(-1,-1),NW);