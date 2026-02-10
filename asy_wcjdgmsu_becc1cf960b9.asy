size(4cm);
defaultpen(fontsize(10pt));

real L = 2;
draw((L/2, 0)--(-L/2, 0));

dot((L/2, 0));
dot((-L/2, 0));

real mass_pos = -2/3;
dot((L/2, mass_pos));