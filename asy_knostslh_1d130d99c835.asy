path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;

draw((0,0)--(0,1), linewidth(2pt));

draw(shift((.06,.25))*scale(.5)*person);

draw((.05,.52)--(-.55,.52), arrow = Arrow(6),red);
label("$3.1 g$",(-.4,.52),N,red);

draw((.06,.25)--(.06,.05), arrow = Arrow(6), red);
label("$g$",(.06,.05),S,red);