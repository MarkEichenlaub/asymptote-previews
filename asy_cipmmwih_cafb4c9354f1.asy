// Set up the main picture size
size(350, 350);

// Ground angles to use
real[] groundAngles = {24.3, -24.3, 24.3, -24.3};
real spacing = 40; // Space between diagrams

// Draw first diagram (top-left)
{
pair offset = (0, spacing);
real groundAngle = groundAngles[2]; // 10°

// Set parameters
real personHeight = 10;
real headRadius = 1;
real sunRadius = 2;
real groundLevel = 0;
real groundSlope = tan(radians(groundAngle));
pair ground = offset + (0, groundLevel);
pair head = offset + (0, personHeight);
pair sun = offset + (10, 20);
real groundIntercept = groundLevel;

// Function to calculate ground height at position x
real groundY(real x) {
  return groundSlope * (x - offset.x) + groundIntercept + offset.y;
}

// Calculate shadow position
real raySlope = (sun.y - head.y) / (sun.x - head.x);
real rayIntercept = head.y - raySlope * head.x;
real shadowX = (groundIntercept + offset.y - offset.x * groundSlope - rayIntercept) / 
            (raySlope - groundSlope);
pair shadowEnd = (shadowX, groundY(shadowX));

// Define pens
pen groundPen = gray+linewidth(2);
pen personPen = linewidth(3.0);
pen measurePen = blue+opacity(0.7)+linewidth(1);
pen sunPen = yellow;
pen sunRaysPen = yellow+2pt;
pen shadowPen = gray+opacity(0.8);
pen labelPen = fontsize(10pt);

// Draw the ground
real groundMin = min(shadowEnd.x - 5, offset.x - 10);
real groundMax = offset.x + 10;
draw((groundMin, groundY(groundMin))--(groundMax, groundY(groundMax)), groundPen);

// Draw the sun and sun rays

for(int i = 0; i < 8; ++i) {
  real angle = 2*pi*i/8;
  draw(sun--(sun.x + 3*sunRadius*cos(angle), sun.y + 3*sunRadius*sin(angle)), sunRaysPen);
}
  filldraw(circle(sun, sunRadius), sunPen);

// Draw the person
filldraw(circle(offset + (0, personHeight-1.5), headRadius), black);
draw(offset + (0,personHeight-2)--(offset.x, groundY(offset.x)), personPen);  // body
draw(offset + (0,personHeight-1.5)--offset + (-1.2, personHeight-1.5), personPen);  // left arm
draw(offset + (0,personHeight-2)--offset + (-0.5, personHeight*0.4), personPen);  // right arm

// Draw labels
//draw((offset.x, groundY(offset.x))--(shadowEnd), measurePen+dashed);

//label("Shadow", (shadowEnd.x/2 + offset.x/2, groundY(shadowEnd.x/2) - 2), labelPen);
label("You", offset + (3.5, (personHeight)/2), labelPen);
label("Sun", offset + (13, 23), labelPen);
label("(a)", offset+(-10,20));
}

// Draw second diagram (top-right)
{
pair offset = (spacing, spacing);
real groundAngle = groundAngles[3]; // 24.3°

// Set parameters
real personHeight = 10;
real headRadius = 1;
real sunRadius = 2;
real groundLevel = 0;
real groundSlope = tan(radians(groundAngle));
pair ground = offset + (0, groundLevel);
pair head = offset + (0, personHeight);
pair sun = offset + (10, 20);
real groundIntercept = groundLevel;

// Function to calculate ground height at position x
real groundY(real x) {
  return groundSlope * (x - offset.x) + groundIntercept + offset.y;
}

// Calculate shadow position
real raySlope = (sun.y - head.y) / (sun.x - head.x);
real rayIntercept = head.y - raySlope * head.x;
real shadowX = (groundIntercept - rayIntercept) / (raySlope - groundSlope) + offset.x;
pair shadowEnd = (shadowX, groundY(shadowX));

// Define pens
pen groundPen = gray+linewidth(2);
pen personPen = linewidth(3.0);
pen measurePen = blue+opacity(0.7)+linewidth(1);
pen sunPen = yellow;
pen sunRaysPen = yellow+2pt;
pen shadowPen = gray+opacity(0.8);
pen labelPen = fontsize(10pt);

// Draw the ground
real groundMin = min(shadowEnd.x - 10, offset.x - 10);
real groundMax = offset.x + 10;
draw((groundMin, groundY(groundMin))--(groundMax, groundY(groundMax)), groundPen);

// Draw the sun and sun rays

for(int i = 0; i < 8; ++i) {
  real angle = 2*pi*i/8;
  draw(sun--(sun.x + 3*sunRadius*cos(angle), sun.y + 3*sunRadius*sin(angle)), sunRaysPen);
}
filldraw(circle(sun, sunRadius), sunPen);

// Draw the person
filldraw(circle(offset + (0, personHeight-1.5), headRadius), black);
draw(offset + (0,personHeight-2)--(offset.x, groundY(offset.x)), personPen);  // body
draw(offset + (0,personHeight-1.5)--offset + (-1.2, personHeight-1.5), personPen);  // left arm
draw(offset + (0,personHeight-2)--offset + (-0.5, personHeight*0.4), personPen);  // right arm

// Draw labels
//draw((offset.x, groundY(offset.x))--(shadowEnd), measurePen+dashed);

//label("Shadow", (shadowEnd.x/2 + offset.x/2, groundY(shadowEnd.x/2) - 14), labelPen);
label("You", offset + (3.5, (personHeight)/2), labelPen);
label("Sun", offset + (13, 23), labelPen);
label("(b)", offset+(-10,20));
}

// Draw third diagram (bottom-left)
{
pair offset = (0, 0);
real groundAngle = groundAngles[0]; // -15°

// Set parameters
real personHeight = 10;
real headRadius = 1;
real sunRadius = 2;
real groundLevel = 0;
real groundSlope = tan(radians(groundAngle));
pair ground = offset + (0, groundLevel);
pair head = offset + (0, personHeight);
pair sun = offset + (10, 20);
real groundIntercept = groundLevel;

// Function to calculate ground height at position x
real groundY(real x) {
  return groundSlope * (x - offset.x) + groundIntercept + offset.y;
}

// Calculate shadow position
real raySlope = (sun.y - head.y) / (sun.x - head.x);
real rayIntercept = head.y - raySlope * head.x;
real shadowX = (groundIntercept - rayIntercept) / (raySlope - groundSlope) + offset.x;
pair shadowEnd = (shadowX, groundY(shadowX));

// Define pens
pen groundPen = gray+linewidth(2);
pen personPen = linewidth(3.0);
pen measurePen = blue+opacity(0.7)+linewidth(1);
pen sunPen = yellow;
pen sunRaysPen = yellow+2pt;
pen shadowPen = gray+opacity(0.8);
pen labelPen = fontsize(10pt);

// Draw the ground
real groundMin = min(shadowEnd.x - 5, offset.x - 10);
real groundMax = offset.x + 10;
draw((groundMin, groundY(groundMin))--(groundMax, groundY(groundMax)), groundPen);

// Draw the sun and sun rays

for(int i = 0; i < 8; ++i) {
  real angle = 2*pi*i/8;
  draw(sun--(sun.x + 3*sunRadius*cos(angle), sun.y + 3*sunRadius*sin(angle)), sunRaysPen);
}
filldraw(circle(sun, sunRadius), sunPen);

// Draw the person
filldraw(circle(offset + (0, personHeight-1.5), headRadius), black);
draw(offset + (0,personHeight-2)--(offset.x, groundY(offset.x)), personPen);  // body
draw(offset + (0,personHeight-1.5)--offset + (1.2, personHeight-1.5), personPen);  // left arm
draw(offset + (0,personHeight-2)--offset + (0.5, personHeight*0.4), personPen);  // right arm

// Draw labels
//draw((offset.x, groundY(offset.x))--(shadowEnd), measurePen+dashed);

//label("Shadow", (shadowEnd.x/2 + offset.x/2, groundY(shadowEnd.x/2) - 2), labelPen);
label("You", offset + (4, (groundY(offset.x) + personHeight)/2), labelPen);
label("Sun", offset + (13, 23), labelPen);
label("(c)", offset+(-10,20));
}

// Draw fourth diagram (bottom-right)
{
pair offset = (spacing, 0);
real groundAngle = groundAngles[1]; // 0°

// Set parameters
real personHeight = 10;
real headRadius = 1;
real sunRadius = 2;
real groundLevel = 0;
real groundSlope = tan(radians(groundAngle));
pair ground = offset + (0, groundLevel);
pair head = offset + (0, personHeight);
pair sun = offset + (10, 20);
real groundIntercept = groundLevel;

// Function to calculate ground height at position x
real groundY(real x) {
  return groundSlope * (x - offset.x) + groundIntercept + offset.y;
}

// Calculate shadow position
real raySlope = (sun.y - head.y) / (sun.x - head.x);
real rayIntercept = head.y - raySlope * head.x;
real shadowX = (groundIntercept + offset.y - offset.x * groundSlope - rayIntercept) / 
            (raySlope - groundSlope);
pair shadowEnd = (shadowX, groundY(shadowX));

// Define pens
pen groundPen = gray+linewidth(2);
pen personPen = linewidth(3.0);
pen measurePen = blue+opacity(0.7)+linewidth(1);
pen sunPen = yellow;
pen sunRaysPen = yellow+2pt;
pen shadowPen = gray+opacity(0.8);
pen labelPen = fontsize(10pt);

// Draw the ground
real groundMin = min(shadowEnd.x - 10, offset.x - 10);
real groundMax = offset.x + 10;
draw((groundMin, groundY(groundMin))--(groundMax, groundY(groundMax)), groundPen);

// Draw the sun and sun rays

for(int i = 0; i < 8; ++i) {
  real angle = 2*pi*i/8;
  draw(sun--(sun.x + 3*sunRadius*cos(angle), sun.y + 3*sunRadius*sin(angle)), sunRaysPen);
}
filldraw(circle(sun, sunRadius), sunPen);

// Draw the person
filldraw(circle(offset + (0, personHeight-1.5), headRadius), black);
draw(offset + (0,personHeight-2)--(offset.x, groundY(offset.x)), personPen);  // body
draw(offset + (0,personHeight-1.5)--offset + (1.2, personHeight-1.5), personPen);  // left arm
draw(offset + (0,personHeight-2)--offset + (0.5, personHeight*0.4), personPen);  // right arm

// Draw labels
//draw((offset.x, groundY(offset.x))--(shadowEnd), measurePen+dashed);

//label("Shadow", (shadowEnd.x/2 + offset.x/2,-2), labelPen);
label("You", offset + (4, (groundY(offset.x) + personHeight)/2), labelPen);
label("Sun", offset + (13, 23), labelPen);
label("(d)", offset+(-10,20));
}