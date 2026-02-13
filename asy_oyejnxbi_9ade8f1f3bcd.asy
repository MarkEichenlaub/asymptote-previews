size(4.5cm);
defaultpen(fontsize(10pt));

real r = 0.15, eps = 0.002, theta = 35, dtheta = 10;
draw(arc((0, 0), 1, theta - dtheta, theta + dtheta));
draw(circle((1+r+eps)*dir(theta), r));

real mg = 0.2;
draw(Label("$mg$", Relative(1), align=dir(0)), shift((1+r+eps)*dir(theta))*((0, 0)--mg*S), rgb(0.7, 0.4, 1), Arrow(TeXHead));
draw("$mg \cos\theta$", shift((1+r+eps)*dir(theta))*((0, 0)-- -mg*Sin(theta)*dir(theta)), rgb(0, 0.6, 1), Arrow(TeXHead));
draw(shift((1 + r + eps - mg*Sin(theta))*dir(theta))*((0, 0)-- mg*Cos(theta)*dir(theta - 90)), rgb(1, 0.4, 0.1), Arrow(TeXHead));

draw("$\theta$", arc((1+r+eps)*dir(theta), 0.02, theta - 180, -90));