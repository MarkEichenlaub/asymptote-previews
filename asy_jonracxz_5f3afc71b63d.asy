//TeXeR source: https://artofproblemsolving.com/texer/jonracxz

unitsize(3cm);

import graph;

void plgaxes(pair origin,path func){
    draw((origin-(.1,0))--(origin+(1,0)));
    draw((origin-(0,.1))--(origin+(0,1)));
    label("0",origin-(0,.1),S);
    label("0",origin-(.1,0),W);
    label("time $t$",origin + (.5,0),S);
    label(rotate(90)*"acceleration $a$",origin+(0,.5),W);
    draw(shift(origin)*func,linewidth(2.0 pt));
}

real const(real x){
    return .5;
}
plgaxes((0,0),graph(const,0,1));

real line(real x){
    return x;
}
plgaxes((1.5,0),graph(line,0,1));

real square(real x){
    return x*x;
}
plgaxes((3,0),graph(square,0,1));

plgaxes((0,-1.5),shift(0,.2)*graph(square,0,1));

plgaxes((1.5,-1.5),shift(0,.2)*graph(line,0,1));

label("a)",(-.25,.5));
label("b)",(1.25,.5));
label("c)",(2.75,.5));
label("d)",(-.25,-1));
label("e)",(1.25,-1));