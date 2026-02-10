unitsize(5cm);

real theta = 60;
pair end  = dir(-90 + theta);

dot((0,0), black+5);

draw((0,0)--end);

draw((0,0)--(0,-.5), dotted);

draw((end.x,-1)--end, dotted);
label("$h = \frac{R}{2}$",(end.x,(-1 + end.y)/2),E);

draw(arc((0,0),.3,-90,-90+theta));
label("$60^\circ$",.35*dir(-90+theta/2));

label("$R$",end/2,NE);

label("$R/2$",(0,-.25),W);