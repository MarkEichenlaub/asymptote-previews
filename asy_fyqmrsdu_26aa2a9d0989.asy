//TeXeR source: https://artofproblemsolving.com/texer/fyqmrsdu

size(12cm);

path lens(real h, real r){
real dist = sqrt(r^2 - h^2/4);
real theta = asin(h/(2*r));
real theta_deg = theta * 180/pi;
path len = arc((dist,0),r,180+theta_deg,180-theta_deg);
len = len--rotate(180)*len;
return len;
}

draw(lens(1,1));

dot((-1,0));
label("A",(-1,0),S);
dot((1,0));
label("B",(1,0),S);

draw((-1,0)--(0,-.5)--(1,0), dotted);
draw((-1,0)--(-.1,-.24)--(.1,-.24)--(1,0), dotted);
draw((-1,0)--(0,0)--(1,0), dotted);
draw((-1,0)--(-.1,.24)--(.1,.24)--(1,0), dotted);
draw((-1,0)--(0,.5)--(1,0), dotted);

label("(a)",(0,-.5),S);
label("(b)",(0,-.24),S);
label("(c)",(0,0),S);
label("(d)",(0,.25),S);
label("(e)",(0,.5),S);