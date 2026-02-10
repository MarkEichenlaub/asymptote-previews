unitsize(4cm);

path blob = shift(-.55,-.45)*((0,.1)..(.3,0)..(.5,0)..(1,.2)..(.9,.7)..(.5,1)..(.1,.3)..cycle);

pair F1 = .5*dir((1,2));
pair F2 = .5*dir((-1,-.1));

real x1 = -.4;
pair intercept1 = point(blob, times(blob, x1)[0]);

real x2 = .2;
pair intercept2 = point(blob, times(blob,x2)[1]);

pen forcepen = red+linewidth(2pt);

draw(blob);

draw(shift(intercept1)*(-F1--(0,0)), arrow = Arrow(6), forcepen);
draw(shift(intercept2)*(-F2--(0,0)), arrow = Arrow(6), forcepen);

label("$\vec{F}_1$",intercept1-F1/2,SE,red);
label("$\vec{F}_2$",intercept2 - F2/2, N,red);

path extend1 = shift(intercept1)*((0,0)--2.5*F1);
path extend2 = shift(intercept2)*((0,0)--F2);
draw(extend1, red+dotted);
draw(extend2, red+dotted);

dot(intersectionpoint(extend1,extend2),6+red);