//TeXeR source: https://artofproblemsolving.com/texer/zsfunipc

unitsize(4cm);
path c1 = (0,1)--(0,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.7,.5)--(.7,1);
path c2 = (.3,1)--(.3,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.4,.5)--(.4,1);

path w1 = (0,.6)--(0,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.7,.5)--(.7,.6)--cycle;
path w2 = (.3,.6)--(.3,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.4,.5)--(.4,.6)--cycle;

fill(w1, cyan);
fill(shift(1,0)*w2,cyan);

fill(box((0,.6),(.7,.65)), palered);
fill(box((1.3,.6),(1.4,.95)), palered);

draw(c1, linewidth(2pt));
draw(shift(1,0)*c2,linewidth(2pt));
label("(A)",(.35,-.1),S);
label("(B)",(1.35,-.1),S);