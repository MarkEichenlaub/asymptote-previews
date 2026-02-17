size(300);

real personHeight = 10;
real headRadius = 1;
real sunRadius = 2;
real groundLevel = 0;

pair ground = (0, groundLevel);
pair head = (0, personHeight);

pair sun = (10, 20);

real shadowLength = personHeight * (sun.x - head.x) / (sun.y - head.y);
pair shadowEnd = (-shadowLength, groundLevel);

pen groundPen = gray+linewidth(2);
pen personPen = linewidth(3.0);
pen measurePen = blue+opacity(0.7)+linewidth(1);
pen sunPen = yellow;
pen sunRaysPen = yellow+2pt;
pen shadowPen = gray+opacity(0.8);
pen labelPen = fontsize(10pt);

real groundMin = min(-shadowLength-10, -30);
real groundMax = 30;


fill(box((groundMin,groundLevel), (groundMax,groundMax)), 0.8*lightgray);

draw((groundMin, groundLevel)--(groundMax, groundLevel), groundPen);


for(int i = 0; i < 8; ++i) {
  real angle = 2*pi*i/8;
  draw(sun--(sun.x + 3*sunRadius*cos(angle), sun.y + 3*sunRadius*sin(angle)), sunRaysPen);
}

draw((0, groundLevel)--(shadowEnd), shadowPen+linewidth(3));

draw(sun--head, sunRaysPen+dashed);
draw(head--shadowEnd, sunRaysPen+dashed);

filldraw(circle((0,8.5), headRadius), black);
draw((0,8)--(0, groundLevel), personPen);  // body
draw((0,8.5)--(-1.2, 8.5), personPen);  // left arm
draw((0,8)--(-0.5, personHeight*0.4), personPen);  // right arm
draw((0, groundLevel*0.3)--(-1.2, groundLevel), personPen);  // left leg
filldraw(circle(sun, sunRadius), sunPen);

draw(shadowEnd--(shadowEnd.x, shadowEnd.y)--ground--(ground.x, ground.y), measurePen+dashed);

label("Shadow", (shadowEnd.x/2, groundLevel-2), labelPen);
label("Height", (3.5, personHeight/2), labelPen);
label("Sun", (sun.x+3, sun.y+3), labelPen);