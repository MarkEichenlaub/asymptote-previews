// Angled Ground Shadow Length Diagram
size(300, 300);
// Define constants for easier modifications
real personHeight = 10;
real headRadius = 1;
real sunRadius = 2;
real groundLevel = 0;
real groundAngle = -24.3; // Angle in degrees (negative slopes downward to the right)

// Convert angle to radians for calculations
real groundSlope = tan(radians(groundAngle));

// Define key points
pair ground = (0, groundLevel);
pair head = (0, personHeight);

// Sun position (can be adjusted to see how shadow changes)
pair sun = (10, 20);

// Define ground line using slope-intercept form: y = mx + b
// We know the ground passes through (0, groundLevel)
// So the y-intercept b = groundLevel
real groundIntercept = groundLevel;
// Function for ground y-coordinate at any x
real groundY(real x) {
  return groundSlope * x + groundIntercept;
}

// Calculate shadow endpoint by finding intersection of:
// 1. Line from sun through head (ray of light)
// 2. The ground line
// First, get slope of the ray from sun through head
real raySlope = (sun.y - head.y) / (sun.x - head.x);
real rayIntercept = head.y - raySlope * head.x;

// Intersection happens when:
// raySlope * x + rayIntercept = groundSlope * x + groundIntercept
// Solve for x:
real shadowX = (groundIntercept - rayIntercept) / (raySlope - groundSlope);
pair shadowEnd = (shadowX, groundY(shadowX));

// Colors and styling
pen groundPen = gray+linewidth(2);
pen personPen = linewidth(3.0);
pen measurePen = blue+opacity(0.7)+linewidth(1);
pen sunPen = yellow;
pen sunRaysPen = yellow+2pt;
pen shadowPen = gray+opacity(0.8);
pen labelPen = fontsize(10pt);

// Calculate boundaries for ground line
real groundMin = min(shadowEnd.x - 10, -30);
real groundMax = 30;
fill(box((groundMin,-15), (groundMax,groundMax)), 0.8*lightgray);
// Draw the angled ground
draw((groundMin, groundY(groundMin))--(groundMax, groundY(groundMax)), groundPen);

// Draw the sun and rays
// Add sun rays
for(int i = 0; i < 8; ++i) {
  real angle = 2*pi*i/8;
  draw(sun--(sun.x + 3*sunRadius*cos(angle), sun.y + 3*sunRadius*sin(angle)), sunRaysPen);
}
filldraw(circle(sun, sunRadius), sunPen);
// Draw shadow on the ground (following ground angle)
draw((0, groundY(0))--(shadowEnd), shadowPen+linewidth(3));

// Draw light ray from sun to head to shadow end (showing how shadow forms)
draw(sun--head, sunRaysPen+dashed);
draw(head--shadowEnd, sunRaysPen+dashed);

// Draw the person (stick figure)
filldraw(circle((0, personHeight-1.5), headRadius), black);
draw((0,personHeight-2)--(0, groundY(0)), personPen);  // body
draw((0,personHeight-1.5)--(-1.2, personHeight-1.5), personPen);  // left arm
draw((0,personHeight-2)--(-0.5, personHeight*0.4), personPen);  // right arm

// Calculate shadow length along the ground (arc length)
real shadowLength = sqrt((shadowEnd.x)^2 + (shadowEnd.y - groundY(0))^2);

// Add measurement indicators - perpendicular to ground
real perpAngle = radians(groundAngle + 90); // Perpendicular to ground
real measHeight = 2;

// Draw shadow measurement
pair perpBase = (0, groundY(0));
draw(perpBase--(shadowEnd), measurePen+dashed);

// Add labels with better positioning
label("Shadow", (shadowEnd.x/2, groundY(shadowEnd.x/2) - 2), labelPen);
label("Height", (4, (groundY(0) + personHeight)/2), labelPen);
label("Sun", (sun.x+3, sun.y+3), labelPen);