size(300, 300);
real personHeight = 10;
real headRadius = 1;
real sunRadius = 2;
real groundLevel = 0;
real groundAngle = 24.3; // Angle in degrees (negative slopes downward to the right)
real groundSlope = tan(radians(groundAngle));
pair ground = (0, groundLevel);
pair head = (0, personHeight);
pair sun = (10, 20);
real groundIntercept = groundLevel;
real groundY(real x) {
  return groundSlope * x + groundIntercept;
}
real raySlope = (sun.y - head.y) / (sun.x - head.x);
real rayIntercept = head.y - raySlope * head.x;
real shadowX = (groundIntercept - rayIntercept) / (raySlope - groundSlope);
pair shadowEnd = (shadowX, groundY(shadowX));
pen groundPen = gray+linewidth(2);
pen personPen = linewidth(3.0);
pen measurePen = blue+opacity(0.7)+linewidth(1);
pen sunPen = yellow;
pen sunRaysPen = yellow+2pt;
pen shadowPen = gray+opacity(0.8);
pen labelPen = fontsize(10pt);
real groundMin = min(shadowEnd.x - 10, -30);
real groundMax = 30;
fill(box((groundMin, groundY(groundMin)), (groundMax,groundMax)), 0.8*lightgray);
draw((groundMin, groundY(groundMin))--(groundMax, groundY(groundMax)), groundPen);
for(int i = 0; i < 8; ++i) {
  real angle = 2*pi*i/8;
  draw(sun--(sun.x + 3*sunRadius*cos(angle), sun.y + 3*sunRadius*sin(angle)), sunRaysPen);
}
filldraw(circle(sun, sunRadius), sunPen);
draw((0, groundY(0))--(shadowEnd), shadowPen+linewidth(3));
draw(sun--head, sunRaysPen+dashed);
draw(head--shadowEnd, sunRaysPen+dashed);
filldraw(circle((0, personHeight-1.5), headRadius), black);
draw((0,personHeight-2)--(0, groundY(0)), personPen);  // body
draw((0,personHeight-1.5)--(-1.2, personHeight-1.5), personPen);  // left arm
draw((0,personHeight-2)--(-0.5, personHeight*0.4), personPen);  // right arm
real shadowLength = sqrt((shadowEnd.x)^2 + (shadowEnd.y - groundY(0))^2);
real perpAngle = radians(groundAngle + 90); // Perpendicular to ground
real measHeight = 2;
pair perpBase = (0, groundY(0));
draw(perpBase--(shadowEnd), measurePen+dashed);
label("Shadow", (shadowEnd.x/2, groundY(shadowEnd.x/2) - 2), labelPen);
label("Height", (4, (groundY(0) + personHeight)/2), labelPen);
label("Sun", (sun.x+3, sun.y+3), labelPen);