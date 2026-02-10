import graph;

picture nu1;
picture nu2;
picture nu3;
picture nu4;
picture nu5;
picture pic;
picture axes;

currentpicture = axes;
unitsize(4cm);
draw(box((0,0),(2,1)));
label("$t \, \left(\frac{1}{\omega}\right)$",(1,-.2),S);
label("$4\pi$",(2,0),S);
draw((1,0)--(1,.05));
label("$2\pi$",(1,0),S);
label("$0$",(0,0),SW);
label(rotate(90)*"$\Delta \ell \, \left(\frac{g\nu}{\omega^2}\right)$",(-.2,.5),W);

currentpicture = nu1;
unitsize(4cm);
add(axes);
real nu = 10;
real LU(real tau){
return 1/nu + tau - sin(tau);
}
real LL(real tau){
return tau + sin(tau);
}
real Lmax = LU(4*pi);
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LU,0,4*pi),blue+linewidth(1.5pt));
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LL,0,4*pi),deepgreen+linewidth(1.5pt));
label("$\nu = " + string(nu) + "$",(1,1),N);
label("$\frac{1}{\nu}$",(0,1/(nu*Lmax)),W);
label("$\Delta \ell_L$",(1.8,.73), deepgreen);
label("$\Delta \ell_U$",(.7,.5), blue);
draw((0,.15)--(2,.15), dotted);
label("$\Delta \ell_{\rm max}$",(0,.15),W);

currentpicture = nu2;
unitsize(4cm);
add(axes);
real nu = .3;
real LU(real tau){
return 1/nu + tau - sin(tau);
}
real LL(real tau){
return tau + sin(tau);
}
real Lmax = LU(4*pi);
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LU,0,4*pi),blue+linewidth(1.5pt));
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LL,0,4*pi),deepgreen+linewidth(1.5pt));
label("$\nu = " + string(nu) + "$",(1,1),N);
label("$\frac{1}{\nu}$",(0,1/(nu*Lmax)),W);
label("$\Delta \ell_L$",(1.3,.4), deepgreen);
label("$\Delta \ell_U$",(.5,.65), blue);

currentpicture = nu3;
unitsize(4cm);
add(axes);
real nu = 1;
real LU(real tau){
return 1/nu + tau - sin(tau);
}
real LL(real tau){
return tau + sin(tau);
}
real Lmax = LU(4*pi);
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LU,0,4*pi),blue+linewidth(1.5pt));
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LL,0,4*pi),deepgreen+linewidth(1.5pt));
label("$\nu = " + string(nu) + "$",(1,1),N);
label("$\frac{1}{\nu}$",(0,1/(nu*Lmax)),W);
label("$\Delta \ell_L$",(1.7,.6), deepgreen);
label("$\Delta \ell_U$",(.65,.6), blue);

currentpicture = nu4;
unitsize(4cm);
add(axes);
real nu = 3;
real LU(real tau){
return 1/nu + tau - sin(tau);
}
real LL(real tau){
return tau + sin(tau);
}
real Lmax = LU(4*pi);
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LU,0,4*pi),blue+linewidth(1.5pt));
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LL,0,4*pi),deepgreen+linewidth(1.5pt));
label("$\nu = " + string(nu) + "$",(1,1),N);
label("$\frac{1}{\nu}$",(0,1/(nu*Lmax)),W);
label("$\Delta \ell_L$",(1.7,.6), deepgreen);
label("$\Delta \ell_U$",(.65,.6), blue);

currentpicture = nu5;
unitsize(4cm);
add(axes);
real nu = 10;
real LU(real tau){
return 1/nu + tau - sin(tau);
}
real LL(real tau){
return tau + sin(tau);
}
real Lmax = LU(4*pi);
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LU,0,4*pi),blue+linewidth(1.5pt));
draw(xscale(2/(4*pi))*yscale(1/Lmax)*graph(LL,0,4*pi),deepgreen+linewidth(1.5pt));
label("$\nu = " + string(nu) + "$",(1,1),N);
label("$\frac{1}{\nu}$",(0,1/(nu*Lmax)),W);

currentpicture = pic;
unitsize(6cm);
add(nu1);
//add(shift(3,0)*nu2);
//add(shift(0,-2)*nu3);
//add(shift(3,-2)*nu4);