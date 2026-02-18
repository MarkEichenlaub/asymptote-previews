real theta = 35;
real r = 1;
pair laser_start = r*dir(90+theta);
pair laser_end = r*dir(90-theta);

draw((-1,0)--(1,0), linewidth(2pt));
label("mirror",(0,0),S);

pen g = rgb(4/255, 212/255, 7/255);

draw((0,0)--laser_start, arrow = MidArrow, p = red);
draw(laser_end--(0,0), arrow = MidArrow, p=red);

label("laser",0.8*laser_end,SE,p=red);
label("Specular Reflection", (0,-.4),S);