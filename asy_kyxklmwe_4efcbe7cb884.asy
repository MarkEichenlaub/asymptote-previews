unitsize(2cm);

path person(){
return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
}

draw(shift(-1,3.6)*scale(.2)*unitcircle, deepred);
draw(shift(0,2.3)*xscale(.7)*person());
draw(shift(-.2,2.8)*((0,0)--(-1,0)), arrow = Arrow(6));
label("$v$",(-.7,2.8),N);
label("Ball's frame", (0,2.2));

draw(person());
draw(shift(-1,1.3)*xscale(.7)*scale(.2)*unitcircle, deepred);
draw(shift(-1+.7*.2+.05,1.3)*((0,0)--(1,0)), arrow = Arrow(6), deepred);
label("$v$",(-.4,1.3),N, deepred);

label("Our frame",(0,0),S);