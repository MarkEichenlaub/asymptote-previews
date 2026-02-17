import three; import solids;
size(4cm);
currentprojection = orthographic(-1, -3, 0.5);

draw(cylinder((0, 0, 0), 1, 5, X));
draw(circle((2.5, 0, 0), 1, X), rgb("C882FF")+dashed);