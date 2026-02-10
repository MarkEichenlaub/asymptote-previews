unitsize(6cm);

//declarations
path blob = shift(-.55,-.45)*((0,.1)..(.3,0)..(.5,0)..(1,.2)..(.9,.7)..(.5,1)..(.1,.3)..cycle);

pair F1 = .5*dir((1,2));
pair F2 = .5*dir((-1,-.1));

//directions perpendicular to forces
pair F1perp = dir(rotate(90)*F1);
pair F2perp = dir(rotate(90)*F2);

//where the force will hit the blob edge
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
pair zero = intersectionpoint(extend1,extend2);
dot(zero,6+red);

//hypothetical new rotation point
pair rot = (.2,-.1);
pair rot2 = (0,-.1);
//dot(rot,blue+5);

//not drawn, used to find perpendicular from rot to line
path rline1 = shift(rot)*scale(1)*(F1perp--rotate(180)*F1perp);
path rline2 = shift(rot)*scale(10)*(F2perp--rotate(180)*F2perp);

path rline3 = shift(rot2)*scale(1)*(F1perp--rotate(180)*F1perp);
path rline4 = shift(rot2)*scale(10)*(F2perp--rotate(180)*F2perp);

//moment arms
path parallel1 = shift(rot)*(-F1 -- 1.2*F1);
pair inter_ext1 = intersectionpoint(rline1,extend1);
real r1 = length(inter_ext1 - rot);
//draw(rot--inter_ext1,blue+dotted);
//label("$r_{\perp}$",interp(rot,inter_ext1,.3),SW,blue);

pair s = zero + scale(r1)*F2perp;
path parallel2 = shift(s)*(-F2 -- F2);

pair inter_ext2 = intersectionpoint(rline2,parallel2);
//draw(shift(F2*.3)*(zero--s),deepgreen+dotted);
//label("$r_{\perp}$",shift(F2*.3)*interp(s,zero,.5),W,deepgreen);

draw(parallel1, blue+dashed);
draw(parallel2, deepgreen+dashed);

dot(intersectionpoint(parallel1, parallel2), red+6);

//moment arms
path parallel3 = shift(rot2)*(-F1 -- 1.2*F1);
pair inter_ext1 = intersectionpoint(rline3,extend1);
real r2 = length(inter_ext1 - rot2);
//draw(rot2--inter_ext1,blue+dotted);
//label("$r_{\perp}$",interp(rot2,inter_ext1,.3),SW,blue);

pair s = zero + scale(r2)*F2perp;
path parallel4 = shift(s)*(-F2 -- F2);

pair inter_ext2 = intersectionpoint(rline4,parallel2);
//draw(shift(F2*.3)*(zero--s),deepgreen+dotted);
//label("$r_{\perp}$",shift(F2*.3)*interp(s,zero,.5),W,deepgreen);

draw(parallel3, blue+dashed);
draw(parallel4, deepgreen+dashed);

dot(intersectionpoint(parallel3, parallel4), red+6);

pair no_rot1 = intersectionpoint(extend1,extend2);
pair no_rot3 = intersectionpoint(parallel1, parallel2);
pair no_rot2 = intersectionpoint(parallel3, parallel4);

path shifted = shift(-no_rot2)*(no_rot1--no_rot3);
path no_rotate_long = shift(no_rot2)*scale(5)*shift(-no_rot2)*(no_rot1--no_rot3);

pair[] ends =  intersectionpoints(no_rotate_long,blob);

//draw(ends[0]--ends[1], purple+linewidth(2pt));