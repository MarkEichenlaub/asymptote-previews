unitsize(.5 cm);

//regression line
//real slope = 1.64;
//draw((0,0)--(12,12*slope),deepred);

//data
dot((1,1.67));
dot((2,3.19));
dot((3,4.67));
dot((4,6.32));
dot((5,7.83));
dot((6,10.27));
dot((7,11.60));
dot((8,12.73));
dot((9,14.67));
dot((10,16.03));

//axes
draw((0,0)--(12,0));
draw((0,0)--(0,18));

label(rotate(90)*"time to melt (min)",(-1.2,10),W);
label("ice cube length (cm)", (6,-1.2),S);

//tick marks x axis
for(int i = 1; i<13; ++i){
draw((i,-.1)--(i,.1));
string radius = (string) i;
label(radius, (i,0),S);
}

//tick marks y axis
for(int i = 1; i<19; ++i){
draw((-.1,i)--(.1,i));
string radius = (string) i;
label(radius, (0,i),W);
}