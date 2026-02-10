real theta = 30;
pair end  = dir(-90 + theta);

dot((0,0));

draw((0,0)--end);

draw((0,0)--(0,-1), dotted);

dot(end);

draw(arc((0,0),.3,-90,-90+theta));
label("$\theta$",.35*dir(-90+theta/2));

label("$R$",end/2,NE);

draw(end--end*0.6, arrow = Arrow(6),red);
label("$a_{\rm centripetal}$",end*.8,E,red);

draw(shift(end)*rotate(-180+theta)*scale(.15)*((0,0)--(1,0)), arrow = Arrow(6), red);
label("$a_{\rm tangential}$",shift(end)*rotate(-180+theta)*scale(.15)*((0,0)--(1,0)),SE,red);