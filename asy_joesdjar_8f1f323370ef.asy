unitsize(1cm);

real gamma = 1/sqrt(1 - .6^2);

picture s;

path person(){
return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
}

draw(s,box((0,0),(6,2)));

draw(s,shift(.5,0)*person());
draw(s,shift(5.5,0)*person());
label(s,"A",(.5,0),S);
label(s,"L",(5.5,0),S);

draw(s,(3,0)--(3,.6));
draw(s,shift(3,.8)*scale(.2)*unitcircle);

path star;
star=expi(0)--(scale((3-sqrt(5))/2)*expi(pi/5))--expi(2*pi/5)--
(scale((3-sqrt(5))/2)*expi(3*pi/5))--expi(4pi/5)--
(scale((3-sqrt(5))/2)*expi(5*pi/5))--expi(6*pi/5)--
(scale((3-sqrt(5))/2)*expi(7*pi/5))--expi(8*pi/5)--
(scale((3-sqrt(5))/2)*expi(9*pi/5))--cycle;
star = scale(.1)*rotate(15)*star;

filldraw(s,shift(2.5,.8)*scale(1.5)*star, yellow);
filldraw(s,shift(3.5,.8)*scale(1.5)*star, yellow);

draw(s,shift(2.2,.8)*xscale(gamma)*((0,0)--(-.5,0)), arrow = Arrow(6));
label(s,"$c$",(2,.8),N);
draw(s,shift(3.8,.8)*xscale(gamma)*((0,0)--(.5,0)), arrow = Arrow(6));
label(s,"$c$",(4,.8),N);

draw(s,(0,2.15)--(6,2.15), brown+dotted+1bp, Arrows(2mm));
label(s,"$\ell/\gamma$",(3,2.15),UnFill);

draw(shift(2.5,-1.5)*person());
label("G",(2.5,-1.5),S);

picture v(){
picture vp;
draw(vp,(0,0)--(-.3,0), arrow = Arrow(6));
label(vp,"$v$",(-.15,0),N);
return vp;
}

add(s,shift(-.05,1.8)*xscale(gamma)*v() );
add(s,shift(.05,.8)*xscale(gamma)*v());
add(s,shift(5.05,.8)*xscale(gamma)*v());
add(s,shift(2.95,.2)*xscale(gamma)*v());

add(xscale(1/gamma)*s);