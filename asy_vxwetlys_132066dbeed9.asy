unitsize(8cm);
draw((.3,0)--(.7,0), linewidth(2pt));
draw((.5,0)--(.5,-.25), deepgreen+linewidth(2pt));
draw(shift(.02,0)*((.5,-.25)--(.5,-.05)), arrow = Arrow(6) , red);
label("$2T$",(.02,0)+(.5,-.13),E,red);
draw(shift(.5,-.25)*scale(.1)*unitcircle);
draw((.4,-.25)--(.4,-.5));
dot((.4,-.5),black+10);
draw((.6,-.25)--(.6,-.5));
dot((.6,-.5),black+10);
label("$m$",(.4,-.5),W*2);
label("$m$",(.6,-.5),E*2);

draw(shift(.4,-.53)*((0,0)--(0,-.1)), arrow = Arrow(6), red);
draw(shift(.6,-.53)*((0,0)--(0,-.1)), arrow = Arrow(6), red);
label("$T$",(.4,-.53-.05),W,red);
label("$T$",(.6,-.53-.05),E,red);