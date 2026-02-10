unitsize(1cm);

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(.1,.5),E);

real v_factor = .5;

if (v>0){
draw(shift(pos + (2.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(v) + "$c$";
//label(speed,pos + (2.1,.5) + (v/(2*v_factor),0),S);
}
if(v<0){
draw(shift(pos + (-0.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(-v) + "$v$";
//label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

//ship((0,0),-1,"A");
//ship((10,0),-1,"L");
draw(shift(1.5,0)*xscale(.7)*box((0,0),(2,1)));
label(xscale(.7)*"A",(1.6,.5),E);
draw((1.45,.5)--(-0.55,.5), arrow = Arrow(6));

draw(shift(8.5,0)*xscale(.7)*box((0,0),(2,1)));
label(xscale(.7)*"L",(8.6,.5),E);
draw((8.45,.5)--(6.45,.5), arrow = Arrow(6));
label("$v$",(.2,.5),N);
label("$v$",(7.2,.5),N);

ship((4,1.2),0,"G");
draw((2.35,-.1)--(9.2,-.1),dotted);
label("$1 \;\mathrm{ly}/\gamma$",(5.5,-.1),S);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(5,1.75)*clock(10));