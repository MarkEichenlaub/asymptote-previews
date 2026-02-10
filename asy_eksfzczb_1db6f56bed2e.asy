unitsize(6cm);

//declarations
path blob = shift(-.55,-.45)*((0,.1)..(.3,0)..(.5,0)..(1,.2)..(.9,.7)..(.5,1)..(.1,.3)..cycle);

pair F1 = .5*dir((1,2));
pair F2 = .5*dir((-1,-.1));

//directions perpendicular to forces
pair F1perp = dir(rotate(90)*F1);
pair F2perp = dir(rotate(90)*F2);

//where the force will the blob edge
real x1 = -.4;
real x2 = .2;

pair intercept1 = point(blob, times(blob, x1)[0]);
pair intercept2 = point(blob, times(blob,x2)[1]);

pen forcepen = red+linewidth(2pt);

//start drawing
draw(blob);

//forces
draw(shift(intercept1)*(-F1--(0,0)), arrow = Arrow(6), forcepen);
draw(shift(intercept2)*(-F2--(0,0)), arrow = Arrow(6), forcepen);

label("$\vec{F}_1$",intercept1-F1/2,SE,red);
label("$\vec{F}_2$",intercept2 - F2/2, N,red);

//dotted lines coming out of the forces
path extend1 = shift(intercept1)*((0,0)--2.5*F1);
path extend2 = shift(intercept2)*((0,0)--F2);
draw(extend1, red+dotted);
draw(extend2, red+dotted);

//zero torque point
dot(intersectionpoint(extend1,extend2),6+red);

//hypothetical new rotation point
pair rot = (0,-.1);
dot(rot,blue+5);

//not drawn, used to find perpendicular from rot to line
path rline1 = shift(rot)*scale(10)*(F1perp--rotate(180)*F1perp);
path rline2 = shift(rot)*scale(10)*(F2perp--rotate(180)*F2perp);

//moment arms
pair inter_ext1 = intersectionpoint(rline1,extend1);
draw(rot--inter_ext1,blue+dotted);
label("$r_{\perp;1}$",interp(rot,inter_ext1,.3),SW,blue);

pair inter_ext2 = intersectionpoint(rline2,extend2);
draw(rot--inter_ext2,deepgreen+dotted);
label("$r_{\perp;2}$",interp(rot,inter_ext2,.5),E,deepgreen);

//points where r_perp1 is unchanged

draw((rot-F1)--(rot+1.2*F1), blue+dashed);