unitsize(1cm);

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(1,.5));

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

ship((6,0),0,"A");
draw((5.95,.5)--(4.95,.5), arrow = Arrow(6));
label("$v$",(5.55,.5),N);

ship((0,1.2),0,"L");

draw((0,1)--(2,1), brown+dotted, Arrows(2mm));
label("$\ell$",(1,1), brown, UnFill);