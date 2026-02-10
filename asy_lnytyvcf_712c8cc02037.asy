unitsize(1 cm);

label("L",(-5,0),S);
label("A",(0,0),S);
label("G",(3,0),S);

dot((-5,0),5+black);
dot((0,0),5+black);
dot((3,0),5+black);

draw(shift(-4.9,0)*((0,0)--(5/3,0)), arrow = Arrow(6));
draw(shift(2.9,0)*((0,0)--(-1,0)), arrow = Arrow(6));
label("$v$",(-4,0),N);
label("$u$",(2.4,0),N);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(-5,.5)*scale(1.5)*clock(0));
add(shift(0,.5)*scale(1.5)*clock(0));
add(shift(3,.5)*scale(1.5)*clock(0));

draw((-5,1)--(0,1), brown+dotted+1bp, Arrows(2mm));
label("$vt$",(-2.5,1),brown,UnFill);
draw((0,1)--(3,1), brown+dotted+1bp, Arrows(2mm));
label("$ut$",(1.5,1),brown, UnFill);