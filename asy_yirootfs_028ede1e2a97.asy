//TeXeR source: https://artofproblemsolving.com/texer/yirootfs

unitsize(1cm);

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(1,.5));

real v_factor = 3;

if (v>0){
draw(shift(pos + (2.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(v) + "$\;\mathrm{m/s}$";
label(speed,pos + (2.1,.5) + (v/(2*v_factor),0),S);
}
if(v<0){
draw(shift(pos + (-0.1,.5))*((0,0)--(v/v_factor,0)),arrow = Arrow(6));
string speed = string(-v) + "$v$";
label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

ship((0,0),0,"A");
ship((3,0),4,"L");
ship((5*3/2,0),10,"G");

draw((5,.7)--(5*3/2,.7),blue+dashed+linewidth(0.8pt), Arrows);