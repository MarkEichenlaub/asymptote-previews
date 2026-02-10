//TeXeR source: https://artofproblemsolving.com/texer/edovyele

unitsize(4cm);

dot((0,0));
label("reference point",(0,0),S);

dot((1,0));
label("object",(1,0),S);
draw((1,0)--(.8,.5), arrow = Arrow(6));
label("applied force",(.9,.25),E);
draw((0,0)--(25/29,25/29*2/5),dashed);

label("moment arm",(.38,.3));