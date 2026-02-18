unitsize(4cm);

pen brwn = RGB(166, 123, 7);

filldraw(box((.5,0),(.7,.8)), lightgray);
filldraw(box((.8,0),(1.1,.3)), lightgray);
filldraw(box((1.3,0),(1.5,.6)), lightgray);
filldraw(box((1.6,0),(1.9,.8)), lightgray);

draw(shift(0,-.01)*((0,0)--(2,0)), linewidth(2pt)+brwn);
label("tablecloth",(-.3,-.03),SE);

draw((-.05,-.01)--(-.55,-.01), arrow = Arrow(6), blue);
label("$\vec{v}$",(-.3,-.01),N,blue);

draw((.55,.0)--(.9,.0), arrow = Arrow(6), red+linewidth(2pt));
label("$\vec{F}_{f; S \to T}$",(.7,.02),S*1.3,red);