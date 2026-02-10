//TeXeR source: https://artofproblemsolving.com/texer/dexbaxim

unitsize(1.2cm);

real v_factor = 5;

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(1,.5));

if (v>0){
draw(shift(pos + (2.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(v) + "$\;\mathrm{m/s}$";
//label(speed,pos + (2.1,.5) + (v/(2*v_factor),0),S);
}
if(v<0){
draw(shift(pos + (-0.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(-v) + "$v$";
//label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

path add_arrow = shift(1,1)*((0,0)--(0,3/v_factor));

real dx = 1;

ship((0,0),0,"A");
draw(add_arrow, arrow = Arrow(6), red);

ship((3,0),4,"L");

draw(shift(3,0)*add_arrow, arrow = Arrow(6), red);
ship((5*3/2,0),10,"G");

draw(shift(5*3/2,0)*add_arrow, arrow = Arrow(6), red);
label("Alex's Frame, adding upward velocity",(4,-.3),S);

real dy = -3.5;

ship((0,dy),0,"A");
ship((3,dy),0,"L");
ship((5*3/2,dy),0,"G");
label("New Frame", (4,dy-.3),S);
draw(shift(0,dy)*add_arrow, arrow = Arrow(6));
draw(shift(5,dy+1)*((0,0)--(4/v_factor, 4/v_factor)), arrow = Arrow(6));
draw(shift(7.5+2,dy+1)*((0,0)--(10/v_factor,4/v_factor)), arrow = Arrow(6));