unitsize(2cm);

label("centered",(.75,1),N);
label("off-center",(2.75,1),N);

draw(box((0,0),(1.5,1)));

draw(box((2,0),(3.5,1)));

dot((.75,-.5), black+5);
dot((3.25,-.5), black+5);

draw((.75,-.5)--(.75,-.05), arrow = Arrow(6));
draw((3.25,-.5)--(3.25,-.05), arrow = Arrow(6));