picture pic;
picture pic1;

currentpicture = pic1;

unitsize(4cm);

real theta = 60;

real M = .25;
real m = M*(2-Cos(theta));

pair m1 = (-1,0);
pair m2 = dir(180-theta);
pair m3 = (1,0);

draw(unitcircle);
draw((0,-1)--(0,1));
draw((-1,0)--(1,0));

dot((-1,0),6+black);
label(rotate(180)*"$m$",(-1,0),W);
dot((1,0),6+black);
label(rotate(180)*"$2M$",(1,0),E);

dot(dir(180-theta),6+black);
label(rotate(180)*"$M$",dir(180-theta),NW);

draw(arc((0,0),.3,180,180-theta));
label(rotate(180)*"$\theta$",dir(180-theta/2)*.36);

draw((0,0)--dir(180-theta), dotted);
//label("$R$",(.5,0),S);

draw((0,0)--m1,arrow = Arrow(6),red+linewidth(1.5pt));
label(rotate(180)*"$\vec{r}_m$",(-.5,0),S,red+linewidth(1.5pt));

draw((0,0)--m2,arrow = Arrow(6),red+linewidth(1.5pt));
label(rotate(180)*"$\vec{r}_M$",m2/2,NE,red+linewidth(1.5pt));

draw((0,0)--m3,arrow = Arrow(6),red+linewidth(1.5pt));
label(rotate(180)*"$\vec{r}_{2M}$",m3/2,S,red+linewidth(1.5pt));

dot((1.2,0),black+0);
dot((-1.2,0),black+0);
dot((0,1.2),black+0);
dot((0,-1.2),black+0);

real MM = m+3*M;
pair R = (m*m1+M*m2+2*M*m3)/MM;

dot(R, blue+7);

draw(scale(R.y)*unitcircle,blue+dotted);

currentpicture = pic;
unitsize(4cm);
add(rotate(180)*pic1);