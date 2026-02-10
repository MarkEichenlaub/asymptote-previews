unitsize(1cm);
pair wind = (0, 1),
     plane = 10 * dir(10),
     planeg = wind + plane;

//draw((0,0)--wind,arrow=Arrow(6));
//label("$\vec{v}_{\mathrm{wind}}$", (0, 0)--wind, W);
//draw((0, 0)--plane, Arrow(6));
//label("$\vec{v}_{\mathrm{plane;w}}$", (0, 0)--plane);

draw((0,0)--planeg, Arrow(6));
//draw(plane--planeg, Arrow(6));
label("$\vec{v}_{\mathrm{plane;g}}$", (0, 0)--planeg, dir(120));
draw((0,0)--(10*cos(10*pi/180),0),dotted);
label("$295.4 \;\mathrm{m/s}$",(5,0),S);
draw((10*cos(10*pi/180),0)--(10*cos(10*pi/180),82/5.2*sin(10*pi/180)),dotted);
label("$82.1 \;\mathrm{m/s}$",(9.9,1),E);

label("$\theta_g$",(4.3,.55),red);
draw(arc((0,0),4,0,15.5),red);