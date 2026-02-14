unitsize(.5 cm);

real yscale = 3;

draw((0,0)--(8,0));
draw((0,0)--(0,30/yscale));
label("temperature $(10^3 \;\mathrm{K})$",(4,-1.5),S);
label(rotate(90)*"peak wavelength $(10^2 \;\mathrm{nm})$",(-1.5,15/yscale),W);

draw((1,-.3)--(1,.3));
draw((2,-.3)--(2,.3));
label("$2$",(2,-.3),S);
draw((3,-.3)--(3,.3));
draw((4,-.3)--(4,.3));
label("$4$",(4,-.3),S);
draw((5,-.3)--(5,.3));
draw((6,-.3)--(6,.3));
label("$6$",(6,-.3),S);
draw((7,-.3)--(7,.3));
draw((8,-.3)--(8,.3));
label("$8$",(8,-.3),S);


draw((-.3,1)--(.3,1));
draw((-.3,2)--(.3,2));
label("$6$",(-.3,2),W);
draw((-.3,3)--(.3,3));
draw((-.3,4)--(.3,4));
label("$12$",(-.3,4),W);
draw((-.3,5)--(.3,5));
draw((-.3,6)--(.3,6));
label("$18$",(-.3,6),W);
draw((-.3,7)--(.3,7));
draw((-.3,8)--(.3,8));
label("$24$",(-.3,8),W);
draw((-.3,9)--(.3,9));
draw((-.3,10)--(.3,10));
label("$30$",(-.3,10),W);


dot((1,29/yscale));
dot((2,14/yscale));
dot((3,9.7/yscale));
dot((4,7.2/yscale));
dot((5,5.8/yscale));
dot((6,4.8/yscale));
dot((7,4.1/yscale));
dot((8,3.6/yscale));