unitsize(3cm);
draw((0,0)--(2,0), linewidth(2pt));
filldraw(box((.25,0),(.75,.5)), lightgray );
pen brwn = RGB(166, 123, 7);
draw((.75,.5)--(1,1), brwn+linewidth(2pt));
draw(shift((-.02,.03))*((.75,.5)--(.9,.8)), arrow = Arrow(6), red);
label("$\vec{F}_{T;R \to B}$",(.8,.6),NW,red);