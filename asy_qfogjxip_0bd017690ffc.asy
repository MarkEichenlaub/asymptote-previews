//TeXeR source: https://artofproblemsolving.com/texer/qfogjxip

unitsize(1.2cm);

real v_factor = 5;

void ship(pair pos, real v, string name){
draw(shift(pos)* box((0,0),(2,1)));
label(name,pos+(1,.5));

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

path add_arrow = (0,.5)--(-4/ v_factor,.5);

real dx = -.1;

ship((0,0),0,"A");
draw(add_arrow, arrow = Arrow(6), red);
label("$4 \;\mathrm{m/s}$", (-2/v_factor+dx,.5),N,red);
ship((3,0),4,"L");
label("$4 \;\mathrm{m/s}$", (-2/v_factor+3+dx,.5),N,red);
draw(shift(3,0)*add_arrow, arrow = Arrow(6), red);
ship((5*3/2,0),10,"G");
label("$4 \;\mathrm{m/s}$", (-2/v_factor+7.5+dx,.5),N,red);
draw(shift(5*3/2,0)*add_arrow, arrow = Arrow(6), red);
label("Alex's Frame, switching to Lizzie's",(4,-.3),S);

real dy = -3.5;

ship((0,dy),-4,"A");
ship((3,dy),0,"L");
ship((5*3/2,dy),6,"G");
label("Lizzie's Frame", (4,dy-.3),S);