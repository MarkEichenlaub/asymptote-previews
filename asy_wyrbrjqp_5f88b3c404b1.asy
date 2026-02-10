draw(unitcircle);
dot((-1,0));
dot((1,0));

draw(shift(.6,.8)*rotate(30)*xscale(.6)*scale(.05)*unitcircle);

draw((-1,0)--(.6,.8)--(1,0),blue);
draw((-1,0)--(1,0));
label("$c$",(0,0),S);

label("$a$",(-.4,.4));
label("$b$",(.7,.4));