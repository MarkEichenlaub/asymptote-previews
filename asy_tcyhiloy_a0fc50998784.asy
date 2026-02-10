picture pic;
unitsize(4cm);

real theta = 60;

picture drawpic(pen p){
	picture pic_temp;
	currentpicture = pic_temp;
    unitsize(4cm);

    draw(unitcircle,p);
	draw((0,-1)--(0,1),p);
	draw((-1,0)--(1,0),p);

	dot((-1,0),6+p);
	label("$m$",(-1,0),W,p);
	dot((1,0),6+p);
	label("$2M$",(1,0),E,p);

	dot(dir(180-theta),6+p);
	label("$M$",dir(180-theta),NW,p);

	draw((0,0)--dir(180-theta), dotted+p);
	return pic_temp;
}

real dtheta = 10;
picture p2 = drawpic(red);
picture p1 = drawpic(black);

add(shift((0,0))*p1);
add(rotate(-dtheta)*p2);

draw(arc((0,0),.33,180,180-theta));
label("$\theta$",dir(180-theta/2)*.39);

draw(rotate(-dtheta)*arc((0,0),.2,180,180-theta), red);
label("$\theta$",rotate(-dtheta)*dir(180-theta/2)*.26, red);

draw(arc((0,0),.5,0,-dtheta));
label("$\delta\theta$",dir(-dtheta/2)*.56);
label("$r$",(.5,0),N);