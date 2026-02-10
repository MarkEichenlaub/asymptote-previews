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
label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

ship((0,0),0,"A");
ship((10,0),0,"L");
//ship((4,1.2),1,"G");
label(xscale(.7)*"G",(4.1, 1.7),E);
draw(shift(4,1.2)*xscale(.7)*box((0,0),(2,1)) );
draw(shift(5.45,1.7)*((0,0)--(2,0)), arrow = Arrow(6));

draw((1,-.1)--(11,-.1),dotted);
label("$1 \;\mathrm{ly}$",(5.5,-.1),S);

picture clock(real t){
picture lc;
draw(lc, scale(.25)*unitcircle);
draw(lc, scale(.25)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

add(shift(5,1.75)*xscale(.7)*clock(10));
label("$v$",(6.5,1.75),N);