filldraw(unitcircle,lightgray);
dot((0,0));
dot((.9,0),blue+5);
//draw((0,0)--(.9,0), dotted);

draw(scale(.2)*unitcircle, dotted);
dot((.2,0),red+3);
draw((.2,0)--(.2,.2), arrow = Arrow(6), red);
label("$\vec{v}_{\rm cm}$",(.2,.2),N,red);
draw(arc((0,0),1.1,90-20,90+20), arrow = Arrow(6));