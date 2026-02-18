real theta = 5;

draw((0,0)--(0,-30),linewidth(2pt));

real L = (1 + Cos(theta))/(Sin(theta));
pair C = (1, -L*Cos(theta));

draw(shift(C)*unitcircle);

draw((0,0)--(C + (Cos(theta),Sin(theta))));

//draw("$\theta$",arc((0,0),3,-90,-90+theta));