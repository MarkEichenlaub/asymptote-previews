unitsize(1cm);

 dotfactor = 10;

dot((0,0));
dot((0,.1));
dot((0,.4));
dot((0,.9));
dot((0,1.6));
dot((0,2.5));
dot((0,3.6));
dot((0,4.7));
dot((0,5.8));
dot((0,6.9));
dot((0,8.0));
dot((0,8.9));
dot((0,9.6));
dot((0,10.1));
dot((0,10.4));
dot((0,10.5));

real d = .12;

draw((0,0)--(0,.1), arrow = Arrow(6), red);
draw((0,.1+d)--(0,.4-d), arrow = Arrow(6),red);
draw((0,.4+d)--(0,.9-d), arrow = Arrow(6), red);
draw((0,.9+d)--(0,1.6-d), arrow = Arrow(6),red);
draw((0,1.6+d)--(0,2.5-d), arrow = Arrow(6),red);
draw((0,2.5+d)--(0,3.6-d), arrow = Arrow(6),red);
draw((0,3.6+d)--(0,4.7-d), arrow = Arrow(6),red);
draw((0,4.7+d)--(0,5.8-d), arrow = Arrow(6), red);
draw((0,5.8+d)--(0,6.9-d), arrow = Arrow(6), red);
draw((0,6.9+d)--(0,8.0-d), arrow = Arrow(6), red);
draw((0,8.0+d)--(0,8.9-d), arrow = Arrow(6), red);
draw((0,8.9+d)--(0,9.6-d), arrow = Arrow(6), red);
draw((0,9.6+d)--(0,10.1-d), arrow = Arrow(6), red);
draw((0,10.1+d)--(0,10.4-d), arrow = Arrow(6), red);
draw((0,10.4+d)--(0,10.5-d), arrow = Arrow(6), red);