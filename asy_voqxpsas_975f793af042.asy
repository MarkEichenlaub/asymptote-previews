//TeXeR source: https://artofproblemsolving.com/texer/voqxpsas

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

path add_arrow = shift(2,.1)*((0,.5)--(4/ v_factor,.5));

real dx = .1+2;

ship((0,0),-4,"A");
ship((3,0),0,"L");
ship((5*3/2,0),6,"G");

label("$4 \;\mathrm{m/s}$", (2/v_factor+7.5+dx,.6),N,red);
draw(shift(5*3/2,0)*add_arrow, arrow = Arrow(6), red);
draw(add_arrow, arrow = Arrow(6), red);
label("$4 \;\mathrm{m/s}$", (2/v_factor+dx,.6),N,red);
label("$4 \;\mathrm{m/s}$", (2/v_factor+3+dx,.6),N,red);
draw(shift(3,0)*add_arrow, arrow = Arrow(6), red);

label("Lizzie's Frame, switching to Alex's", (4,0-.3),S);

real dy = -3.5;

ship((0,dy),0,"A");
ship((3,dy),4,"L");
ship((5*3/2,dy),10,"G");
label("Alex's Frame",(4,-.3+dy),S);