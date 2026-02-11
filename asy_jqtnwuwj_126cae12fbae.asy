size(4cm);

draw(unitcircle);

pair P = 0.3*dir(20);
dot(P);

//real force_scale = 0.3;
//int n = 13;
//for(int i = 0; i < n; ++i){
//	real dist = length(P - dir(360/n*i));
//	draw(shift(P)*(origin--force_scale/(dist)*dir(360/n*i)), Arrow(TeXHead), BeginMargin);
//}

pair Q = 1.9*dir(-25);
dot(Q);

draw(shift(Q)*(origin--(-0.3*Q)), Arrow(TeXHead));

//force_scale = 0.3;
//for(int i = 0; i < n; ++i){
//	real dist = length(dir(360/n*i) - Q);
//	draw(shift(Q)*(origin--force_scale*(dir(360/n*i) - Q)), Arrow(TeXHead), BeginMargin);
//}