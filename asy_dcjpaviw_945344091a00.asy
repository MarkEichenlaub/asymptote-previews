//TeXeR source: https://artofproblemsolving.com/texer/dcjpaviw

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
string speed = string(-v) + "$v$";
label(speed,pos + (-.1,.5) + (v/(2*v_factor),0),S);
}
}

path add_arrow = shift(2,.1)*((0,.5)--(2/ v_factor,.5));

real dx = .3+2;

ship((0,0),0,"A");
draw(add_arrow, arrow = Arrow(6), red);
label("$2 \;\mathrm{m/s}$", (1/v_factor+dx,.6),N,red);
ship((3,0),4,"L");
label("$2 \;\mathrm{m/s}$", (1/v_factor+3+dx,.6),N,red);
draw(shift(3,0)*add_arrow, arrow = Arrow(6), red);
ship((5*3/2,0),10,"G");
label("$2 \;\mathrm{m/s}$", (1/v_factor+7.5+dx,.6),N,red);
draw(shift(5*3/2,0)*add_arrow, arrow = Arrow(6), red);
label("Alex's Frame, adding $2 \;\mathrm{m/s}$ to the right",(4,-.3),S);

real dy = -3.5;

ship((0,dy),0,"A");
draw(shift(2.05,.5+dy)*((0,0)--(2/v_factor,0)), arrow = Arrow(6));
label("$2 \;\mathrm{m/s}$",(2.05,.5+dy),SE);
ship((3,dy),6,"L");
ship((5*3/2,dy),12,"G");
label("New Frame", (4,dy-.3),S);