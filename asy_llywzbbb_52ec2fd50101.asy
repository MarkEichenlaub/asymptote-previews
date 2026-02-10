//TeXeR source: https://artofproblemsolving.com/texer/llywzbbb

unitsize(0.8cm);

path person(){
 return (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle;
    }

path camera(){
return (-.1,0)--(0,.7)--(.1,0)--(0,.7)--(.1,.7)--(.1,.9)--(-.1,.9)--(-.1,.7)--(0,.7)--cycle;
}

real dy = 0;
real dx = 4;

draw(shift(2+.2,dy+.2)*rotate(90)*person());
draw(shift(0,dy)*((-4,0)--(4,0)),linewidth(2pt));
draw(shift(4,dy)*box((-3.5,0),(-.5,1.5)));

dot((-8.6,0), white);

filldraw(shift(.2,-.5)*scale(1.5)*camera(),linewidth(1pt));

label("after, option 1",(0,-0.8));

real dy = -4;
real dx = -4;

draw(shift(-2+.2,dy+.2)*rotate(90)*person());
draw((-4+dx,dy)--(4+dx,dy),linewidth(2pt));
draw(shift(0,dy)*box((-3.5,0),(-.5,1.5)));
filldraw(shift(.2+dx,-4.5)*scale(1.5)*camera(),linewidth(1pt));

label("after, option 2",(0,-4.8));