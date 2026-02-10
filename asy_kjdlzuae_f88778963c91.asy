unitsize(7cm);

pen brwn = RGB(166, 123, 7);

draw((0,0)--(1,0), brwn+linewidth(2pt));

draw((.4,-.05)--(.6,-.05)--(.6,.05)--(.4,.05)--cycle, dotted);

draw((.4,.025)--(.2,.025), arrow = Arrow(6),red);
draw((.6,.025)--(.8,.025), arrow = Arrow(6), red);
label("$T_L$",(.3,.03),NW,red);
label("$T_R$",(.7,.03),NE,red);