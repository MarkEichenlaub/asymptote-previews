picture pic;
unitsize(12cm);

real theta = 60;

picture drawpic(pen p, real marker_radius = .3){
picture pic_temp;
currentpicture = pic_temp;
unitsize(8cm);

draw(unitcircle,p);
draw((0,-1)--(0,1),p);
draw((-1,0)--(1,0),p);

dot((-1,0),6+p);
label("$m$",(-1,0),W,p);
dot((1,0),6+p);
label("$2M$",(1,0),E,p);

dot(dir(180-theta),6+p);
label("$M$",dir(180-theta),NW,p);

draw(arc((0,0),marker_radius,180,180-theta),p);
label("$\theta$",dir(180-theta/2)*(marker_radius + .06),p);

draw((0,0)--dir(180-theta), dotted+p);
return pic_temp;
}

real dtheta = 10;
picture p2 = drawpic(red, .2); // Red angle marker with smaller radius
picture p1 = drawpic(black);   // Black angle marker with default radius

add(shift((0,0))*p1);
add(rotate(-dtheta)*p2);

draw(arc((0,0),.5,0,-dtheta));
label("$\delta\theta$",dir(-dtheta/2)*.56);

draw(dir(180-theta)--dir(180-theta-dtheta), arrow = Arrow(6),linewidth(2pt)+blue);

pair M1 = dir(180-theta);
pair M2 = dir(180-theta-dtheta);
clip((-.7,1.1)--(.1,1.1)--(.1,-.1)--(-.7,-.1)--cycle);
draw(M1--(M2.x,M1.y), blue+dotted);
draw((M2.x,M1.y)--M2, blue+dotted);
label("$\delta x_M$",(.5*(M1+M2).x,M1.y),S,blue);
label("$\delta y_M$",(M2.x,.5*(M1+M2).y), E, blue);

label("$r\delta \theta$",(M1+M2)/2,NW,blue);