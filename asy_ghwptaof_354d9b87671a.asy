pair loc = (-.38,.8);
draw((0,0)--(0,1),dashed);
draw((0,0)--(.5,1));
draw((0,0)--(-.5,1));
dot(loc);
draw(loc--(0,.8),arrow = Arrow(6));
label("$R$",(-.2,.8),N);