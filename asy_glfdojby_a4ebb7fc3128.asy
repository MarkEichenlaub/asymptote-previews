real theta = 30;

draw(arc((0,0),1,0,180));

draw((0,0)--(Cos(theta),Sin(theta)));
label("$R$",.5*(Cos(theta),Sin(theta)),NW);

draw("$\theta$",arc((0,0),.4,0,theta));

draw(shift(0,Sin(theta))*yscale(.07)*xscale(Cos(theta))*unitcircle,red);