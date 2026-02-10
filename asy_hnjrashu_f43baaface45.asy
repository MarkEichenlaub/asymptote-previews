//TeXeR source: https://artofproblemsolving.com/texer/hnjrashu

size(4cm);

draw(polygon(3));
draw((0, 0)--(0, 1), 0.8*green);
draw((0, 0)--0.5*dir(30), linetype("4 4"));

dot((0, 0));
dot(dir(90));
dot(dir(-30));
dot(dir(-150));