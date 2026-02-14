path blob = ((0,.1)..(.3,0)..(.5,0)..(1,.2)..(.9,.7)..(.5,1)..(.1,.3)..cycle);

draw(blob);

draw((.5,.5)--(.8,1.5), arrow = Arrow(6), deepred);
label("$F_{\rm buoyancy}$",(.8,1.5),NE, deepred);
draw((.5,-.2)--(.5,1.5), dotted);