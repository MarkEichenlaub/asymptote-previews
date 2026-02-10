//TeXeR source: https://artofproblemsolving.com/texer/racxlqrc

unitsize(0.8cm);

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

path camera(){
return (-.1,0)--(0,.7)--(.1,0)--(0,.7)--(.1,.7)--(.1,.9)--(-.1,.9)--(-.1,.7)--(0,.7)--cycle;
}

draw(shift(-2,0)*person());
draw((-4,0)--(4,0),linewidth(2pt));
draw(box((-3.5,0),(-.5,1.5)));
draw((-.4,1.4)--(.6,1.4), arrow = Arrow(6),red);
draw((-1.7,.5)--(-0.7,.5), arrow = Arrow(6), red);
label("before",(0,-.8));

real dy = -4;
real dx = 4;

draw(shift(2+.2,dy+.2)*rotate(90)*person());
draw(shift(0,dy)*((-4,0)--(4,0)),linewidth(2pt));
draw(shift(4,dy)*box((-3.5,0),(-.5,1.5)));
//label("later in shot",(0,-.5+dy),S);
draw((-.4+dx,1.4+dy)--(.6+dx,1.4+dy), arrow = Arrow(6),red);
draw((-1.7+dx,.3+dy)--(-0.7+dx,.3+dy), arrow = Arrow(6), red);

dot((-8.6,0), white);

filldraw(shift(.2,-.5)*scale(1.5)*camera(),linewidth(1pt));
filldraw(shift(.2,-4.5)*scale(1.5)*camera(),linewidth(1pt));

label("after",(0,-4.8));

label("Option 1: Train and Inspector Move",(0,-6));