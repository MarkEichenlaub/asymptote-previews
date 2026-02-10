//TeXeR source: https://artofproblemsolving.com/texer/rccrasaw

unitsize(1.2cm);

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(1,.5));

real v_factor = 5;

if (v>0){
draw(shift(pos + (2.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(v) + "$\;\mathrm{m/s}$";
label(speed,pos + (2.1,.5) + (v/(2*v_factor),0),S);
}
if(v<0){
draw(shift(pos + (-0.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(-v) + "$\;\mathrm{m/s}$";
label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

ship((0,0),0,"A");
ship((3,0),4,"L");
ship((5*3/2,0),10,"G");
label("Alex's Frame",(4,-.3),S);

real dy = -3.5;

ship((0,dy),-4,"A");
ship((3,dy),0,"L");
ship((5*3/2,dy),6,"G");
label("Lizzie's Frame", (4,dy-.3),S);