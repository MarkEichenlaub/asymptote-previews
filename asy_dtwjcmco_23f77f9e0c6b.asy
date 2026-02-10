//TeXeR source: https://artofproblemsolving.com/texer/dtwjcmco

unitsize(3cm);

dot((0,1));
label("$q$",(0,1),E);

dot((0,-1));
label("$-q$",(0,-1),E);

label("$\mathrm{d}r$",(.2,.2),E);

draw((0,0)--(1,1)*((4*sqrt(2) - 5)/sqrt(2)),dotted);

draw((0,1)--(1,1)*((4*sqrt(2) - 5)/sqrt(2)));

pair corner = (1,1)*((4*sqrt(2) - 5)/sqrt(2));
real le = .1;
draw((corner-le*(1,1))--(corner + le*(-2,0))--(corner + le*(-1,1)));

draw((0,0)--(0,1),dotted);
label("$d/2$",(0,.5),W);

draw(arc((0,0),.3,45,90));
label("$\theta$",(.25*.3/.5,.55*3/5));