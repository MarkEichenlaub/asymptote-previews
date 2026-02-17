unitsize(1cm);

dot((0,0));
label("A",(0,0),S);
dot((5,0));
label("L",(5,0),S);

draw(box((1.75,-.5),(3.25,.5)));
label("G",(2.5,0));
draw((1.65,0)--(1,0), arrow = Arrow(6));

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(1.9,0)*clock(0));
add(shift(3.1,0)*clock(0));