pen brwn = RGB(166, 123, 7);
real theta = 90;

picture cant(real x){
picture pic;
draw(pic, (0,-.3)--(0,.7), linewidth(2pt));
dot(pic, (0,0),6+black);
draw(pic, (0,0)--dir(90-theta), brwn+linewidth(1.5pt));
draw(pic, (0,.8-.8*x)--(.5,0));
real th = atan((.8-.8*x)/.5)*180/pi;
draw(pic, arc((.5,0),.2,180,180-th));
label(pic, "$\theta$",(.5,0)+ dir(180-th/2)*.25);
draw(pic,(.5,0)--interp((.5,0),(0,.8-.8*x),.5/(.8-.8*x)), arrow = Arrow(6), red+linewidth(2pt));
label(pic,"$\vec{T}$",interp((.5,0),(0,.8-.8*x),.45/(.8-.8*x)),NE,red);
draw(pic,(0,0)--(.5,0), arrow = Arrow(6),linewidth(2pt)+deepgreen);
label(pic,"$\vec{r}$",(.25,0),S,deepgreen);
real r_perp = .5*Sin(th);
real r_parallel = .5*Cos(th);
pair T = scale(.5/(.8-.8*x))*(-.5,.8-.8*x);
pair intercept = scale(r_perp)*rotate(-90)*dir(T);
draw(pic, (0,0)--intercept, deepgreen+dotted);
label(pic,"$r_\perp$",intercept/2,NW,deepgreen);
draw(pic,(.5,0)--intercept, dotted+deepgreen);
label(pic,"$r_\parallel$",(.25,0)+intercept/2,NE,deepgreen);
dot(pic,(0,0),6+cyan);
return pic;
}

real dx = 1.5;

picture P;
currentpicture = P;
unitsize(5cm);
add(cant(.25));
label("(A)",(.5,-.3));
add(shift(dx,0)*cant(.5));
label("(B)",shift(dx,0)*(.5,-.3));
add(shift(dx*2,0)*cant(.75));
label("(C)",shift(2*dx,0)*(.5,-.3));