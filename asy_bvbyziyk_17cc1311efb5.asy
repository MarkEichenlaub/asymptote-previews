import trembling;
size(3cm);

tremble tr = tremble(angle=10, frequency=0.5);

path p = ((-1, 0) + 2.5*dir(75))--(-1, 0)--(1, 0)--((1, 0) + 2.5*dir(105));
draw(p);

draw(tr.deform(((-1, 0) + 2*dir(75))--((1, 0) + 2*dir(105))));

draw(shift((-1, 0) + dir(75))*((0, 0)--0.2*dir(-15)), Arrow(TeXHead));
draw(shift((1, 0) + dir(105))*((0, 0)--0.2*dir(195)), Arrow(TeXHead));
draw((0, 0)--0.5*dir(90), Arrow(TeXHead));