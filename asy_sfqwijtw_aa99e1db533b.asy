//TeXeR source: https://artofproblemsolving.com/texer/sfqwijtw

unitsize(4cm);
path c1 = (0,1)--(0,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.7,.5)--(.7,1);
path c2 = (.3,1)--(.3,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.4,.5)--(.4,1);

path w1 = (0,.7)--(0,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.7,.5)--(.7,.7)--cycle;
path w2 = (.3,.7)--(.3,.5)--(.2,.5)--(.2,0)--(.5,0)--(.5,.5)--(.4,.5)--(.4,.7)--cycle;

fill(w1, cyan);
fill(shift(1,0)*w2,cyan);

draw(c1, linewidth(2pt));
draw(shift(1,0)*c2,linewidth(2pt));

fill((.4,.1)--(1.3,.1)--(1.3,.2)--(.4,.2)--cycle, cyan);
draw((.5,.1)--(1.2,.1), linewidth(2pt));
draw((.5,.2)--(1.2,.2), linewidth(2pt));
label("(A)",(.35,-.1),S);
label("(B)",(1.35,-.1),S);