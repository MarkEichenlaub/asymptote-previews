real theta = 30;

draw((0,0)--(0,-5),linewidth(2pt));

real L = (1 + Cos(theta))/(Sin(theta));
pair C = (1, -L*Cos(theta)-Sin(theta));

draw(shift(C)*unitcircle);

pair contact = C + (Cos(theta),Sin(theta));

draw((0,0)--contact);

draw("$\theta$",arc((0,0),1,-90,-90+theta));

draw("$N$",(0,C.y)--(.8,C.y),arrow = Arrow(6),red);

draw("$T$",contact--(contact/2), arrow = Arrow(6),red );

draw("$F_f$",(0,C.y)--(0,C.y+.8),arrow = Arrow(6),red);

draw("$mg$",C--(C+(0,-1.2)),arrow = Arrow(6),red);