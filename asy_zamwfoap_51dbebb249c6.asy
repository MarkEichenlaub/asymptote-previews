//TeXeR source: https://artofproblemsolving.com/texer/zamwfoap

label("$v$",(0,.5),W);
label("$t$",(1,0),S);

fill((0,0)--(0,.2)..(.5,.5)..(1.1,.8)..(2,.5)--(2,0)--cycle, paleblue);
draw(box((0,0),(2,1)));
label("area = distance driven", (1,.2), blue);

draw((0,.2)..(.5,.5)..(1.1,.8)..(2,.5), blue);