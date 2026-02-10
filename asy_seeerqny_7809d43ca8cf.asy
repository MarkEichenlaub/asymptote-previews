unitsize(4cm);
real eps = 0.02;

draw((0,0)--(1.1,0), EndArrow(TeXHead));
label("$v_f$",(-eps,1),W);
draw((0,0)--(0,1.1), EndArrow(TeXHead));
label("$T$",(1,-eps),S);

draw((1, -eps)--(1, eps));
draw((-eps, 1)--(eps, 1));

dot((0,0),blue + 8);
dot((1,1),blue + 8);