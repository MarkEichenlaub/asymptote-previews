//TeXeR source: https://artofproblemsolving.com/texer/djjcijuk

unitsize(4cm);

fill(box((0,0),(1,1)), cyan);

pair s = 2*(.125,.125);
pair center = (.5,.5);
filldraw(box(center-s, center+s), white);

real f = .8;
//draw(shift(center)*shift(-s.x,0)*shift(-f,0)*((0,0)--(f,0)), arrow = Arrow(6), red+linewidth(2pt));
//draw(shift(center)*shift(s.x,0)*shift(f,0)*((0,0)--(-f,0)), arrow = Arrow(6), red+linewidth(2pt));
//draw(shift(center)*shift(0,s.y)*shift(0,f)*((0,0)--(0,-f)), arrow = Arrow(6), red+linewidth(2pt));
//draw(shift(center)*shift(0,-s.y)*shift(0,-f)*((0,0)--(0,f)), arrow = Arrow(6), red+linewidth(2pt));
label("$2s$",center+(-s.x,0),W);