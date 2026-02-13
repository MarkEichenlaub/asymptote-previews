size(3.5cm);

real theta1 = 140, theta2 = 120;

draw((0, 0)--2*dir(0), Arrow(TeXHead), Margins);
draw((0, 0)--dir(theta1), Arrow(TeXHead), Margins);
draw((0, 0)--Sin(theta1)/Sin(theta2)*dir(-theta2), Arrow(TeXHead), Margins);

label("$v_{1}$", 2*dir(0), dir(-90));
label("$v_2$", dir(theta1), dir(90));
label("$v_3$", Sin(theta1)/Sin(theta2)*dir(-theta2), dir(-90));