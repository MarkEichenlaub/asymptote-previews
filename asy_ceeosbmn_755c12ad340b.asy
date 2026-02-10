real theta = 30;
pair end  = dir(-90 + theta);

dot((0,0));

draw((0,0)--end);

draw((0,0)--(0,-1), dotted);

draw((end.x,-1)--end, dotted);
label("$h$",(end.x,(-1 + end.y)/2),E);

draw(arc((0,0),.3,-90,-90+theta));
label("$\theta$",.34*dir(-90+theta/2));

label("$R$",end/2,NE);