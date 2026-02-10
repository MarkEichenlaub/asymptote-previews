unitsize(7cm);

draw(arc((0,0),10,85,95),linewidth(1.6pt));
draw(arc((0,0),10.01,85,95),blue);
draw(arc((0,0),10.1,85,95),blue);

pair left = 10.05*(cos(95*pi/180),sin(95*pi/180));
pair right = 10.05*(cos(85*pi/180),sin(85*pi/180));
//dot(left);
draw(left--(left-.2*(1,.07)),arrow = Arrow(6),red);
label("$T$",left - (.1,0),N,red);

draw(right--(right+.25*(1,-.07)),arrow = Arrow(6),red);
label("$T+\mathrm{d}T$",right + (.14,0),N,red);

draw((0,10.01)--(0,10.15),arrow = Arrow(6),red);
label("$\mathrm{d}N$",(0,10.18),red);
draw((0,10.01)--(-.1,10.01),red,arrow = Arrow(6));
label("$\mathrm{d}F_{\mu}$",(.05,10.01),S,red);