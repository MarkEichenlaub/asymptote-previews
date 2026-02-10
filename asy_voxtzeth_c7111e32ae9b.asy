size(16cm);
usepackage("amsmath");
defaultpen(fontsize(10pt));

path spring(pair start=(0, 0), pair end=(1, 0), real buf=0.05, int zigs=10, real width=1){
	path spr = (0, 0)--(buf, 0);
	for(int i = 1; i < zigs; ++i)
		spr = spr--(buf + (1-2*buf)*i/zigs, width*(-1)^i/zigs);
	spr = spr--(1 - buf, 0)--(1, 0);
	return shift(start)*scale(length(end - start))*rotate(degrees(end - start))*spr;
}

//origin at left end of rod
real ell = 2, rod_thickness = 0.1, L = 8, eps = 0.05;
real theta = 15;

draw(rotate(theta)*box((-eps, -eps), (ell + eps, eps)));
filldraw(scale(eps)*unitcircle, gray(0.8));

real length_label_dist = 0.2;
draw(spring(ell*dir(theta), (ell+L, 0), zigs=90));
draw(Label("$l\cos\theta$", align=(0, 0), UnFill),
	shift(0, -length_label_dist)*((0, 0)--(ell*Cos(theta), 0)),
	BeginBar(5));
draw(Label("$L + l$", align=(0, 0), UnFill),
	shift(ell, -length_label_dist)*((eps, 0)--(L, 0)),
	Bar(5));
draw(Label("$\overset{\uparrow}{l(1 - \cos\theta)}$", align=dir(-90)),
	shift(0, -length_label_dist)*((ell*Cos(theta), 0)--(ell + eps, 0)),
	rgb(0, 0.4, 0.8), Bars(5));

real r = 0.05;
unfill(circle((ell+L, 0), r)); draw(circle((ell+L, 0), r));

draw(Label("$l$", align=(0, 0), UnFill), rotate(theta)*shift(0, length_label_dist)*((ell + eps, 0)--(0, 0)), Bars(5));

draw(Label("$~~l\sin\theta$", align=(-1, 0), UnFill), shift(-1.2*length_label_dist, 0)*((0, 0)--(0, ell*Sin(theta))), Bars(5));