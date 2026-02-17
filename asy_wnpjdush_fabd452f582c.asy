import three; import solids;
size(4cm);
currentprojection = orthographic(-1, -3, 0.5);

draw(cylinder((0, 0, 0), 1, 5, X));
draw((0, -1, 0)--(5, -1, 0)--(5, 1, 0)--(0, 1, 0)--cycle, rgb("C882FF")+dashed);