//TeXeR source: https://artofproblemsolving.com/texer/eclscjdn

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
draw(shift(0,.7)*((0,0)--(-1,0)), arrow = Arrow(6),red);
draw(shift(-3,-.2)*((0,0)--(-1,0)), arrow = Arrow(6),red);
label("before",(0,-.8));

real dy = -4;
real dx = -4;

draw(shift(-2+.2,dy+.2)*rotate(90)*person());
draw((-4+dx,dy)--(4+dx,dy),linewidth(2pt));
draw(shift(0,dy)*box((-3.5,0),(-.5,1.5)));
draw(shift(dx,.7+dy)*((0,0)--(-1,0)), arrow = Arrow(6),red);
draw(shift(-3+dx,-.2+dy)*((0,0)--(-1,0)), arrow = Arrow(6),red);

filldraw(shift(.2,-.5)*scale(1.5)*camera(),linewidth(1pt));
filldraw(shift(.2+dx,-4.5)*scale(1.5)*camera(),linewidth(1pt));
label("after",(0,-4.8));

label("Option 2: Camera and Platform Move",(0,-6));