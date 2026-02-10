unitsize(3cm);

real theta_deg = 20;
real theta = theta_deg*pi/180;

pair left = (0,1)+(-cos(theta),sin(theta));
pair right = (0,1)+(cos(theta),-sin(theta));

pair top_center = (left + right)/2;
pair com = top_center + 3/8*(-sin(theta),-cos(theta));
pair bottom = top_center +(-sin(theta),-cos(theta));
pair contact = (0,0);

fill(left--right--arc((0,1),1,-theta_deg,-180-theta_deg)--cycle);
draw((-2,0)--(2,0),linewidth(2pt));

draw(top_center--bottom,dotted+white);
draw(top_center--contact,dotted+white);
dot(com,white);

label("$r$",(0,.5),E,white);
label("$\frac38 r$",(-.01,.9),W,white);

draw(arc((0,1),.6,-90,-90-theta_deg),white);
label("$\theta$",(-.1,.25),white);