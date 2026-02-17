draw(arc((0,0),1,30,45,direction = CCW),linewidth(2pt));
draw(arc((0,0),1.003,30,45,direction = CCW),linewidth(1pt) + red);
draw(arc((0,0),1.03,30,45,direction = CCW),linewidth(1pt) + red);
draw((cos(35*pi/180),sin(35*pi/180))--(cos(35*pi/180),sin(35*pi/180))*1.03,red+dotted);
draw((cos(40*pi/180),sin(40*pi/180))--(cos(40*pi/180),sin(40*pi/180))*1.03,red+dotted);

draw((cos(35*pi/180),sin(35*pi/180))*1.015--((cos(35*pi/180),sin(35*pi/180))*1.015+(cos(-55*pi/180),sin(-55*pi/180))*.05),arrow = Arrow(6));
label("$T_f$",((cos(35*pi/180),sin(35*pi/180))*1.015+(cos(-55*pi/180),sin(-55*pi/180))*.064));
draw((cos(40*pi/180),sin(40*pi/180))*1.015--((cos(40*pi/180),sin(40*pi/180))*1.015+(cos(130*pi/180),sin(130*pi/180))*.04),arrow = Arrow(6));
label("$T_b$",((cos(40*pi/180),sin(40*pi/180))*1.015+(cos(130*pi/180),sin(130*pi/180))*.054));