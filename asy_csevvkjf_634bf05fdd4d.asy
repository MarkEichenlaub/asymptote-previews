unitsize(1 cm);

label("G,A,L",(0,0),S);
//label("A",(0,0),S);
//label("G",(0,0),S);

//dot((-5,0),5+black);
dot((0,0),5+black);
//dot((3,0),5+black);

draw(shift(.1,0)*((0,0)--(5/3,0)), arrow = Arrow(6));
draw(shift(-.1,0)*((0,0)--(-1,0)), arrow = Arrow(6));
label("$v$",(1,0),N);
label("$u$",(-.5,0),N);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(-5,.5)*scale(1.5)*clock(100));
label("1",(-5,1));
add(shift(0,.5)*scale(1.5)*clock(100));
label("2",(0,1));
add(shift(3,.5)*scale(1.5)*clock(100));
label("3",(3,1));