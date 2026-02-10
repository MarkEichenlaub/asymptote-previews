//TeXeR source: https://artofproblemsolving.com/texer/lfoxmiyz

unitsize(3cm);

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

path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
     (scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
     (scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
     (scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
     (scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.1)*rotate(15)*star;

picture clock(real t){
picture lc;
draw(lc, (0,0)--(2,0), linewidth(2));
draw(lc, (0,1)--(2,1), linewidth(2));
filldraw(lc, shift(1,.5)*star, yellow);
draw(lc, shift(1.2,.2)*scale(.1)*unitcircle);
draw(lc, shift(1.2,.2)*scale(.1)*rotate(- t)*((0,0)--(0,1)));
return scale(.6)*lc;
}

ship((0,.5),0,"A");
ship((0,2),.3,"L, earlier");
ship((3,2),.3,"L, later");

add(shift(.4,.7)*clock(10));
add(shift(.4,2.2)*clock(10));
add(shift(3.4,2.2)*clock(40));

draw((1,2.5)--(1.3,2.8)--(1.9,2.2)--(2.5,2.8)--(3.1,2.2)--(3.7,2.8)--(4,2.5),dotted);