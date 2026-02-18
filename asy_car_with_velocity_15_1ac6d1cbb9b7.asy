picture scene;

picture car;
currentpicture = car;

unitsize(0.3pt);

//main body
filldraw((38,168){0,1}..(120,425)..{1,0}(331,517)..(500,468)..{1,-1.3}(597,367){1,0}..(794,168)--cycle, red, linewidth(2pt));

//rear bumper
filldraw((30,83){-1,0}..{0,1}(12,95)--(12,151){0,1}..{1,0}(27,167)--(801,167){1,0}..( 817,149 ){0,-1}--( 817, 102){0,-1}..{-1,0}( 797,83 )--cycle, lightgray, linewidth(2pt));

//rear wheels
filldraw(circle((198, 116), 108), gray,linewidth(2pt));
filldraw(circle((198,116),40), lightgray, linewidth(2pt));

//front wheel
filldraw(circle((638,117), 108), gray, linewidth(2pt));
filldraw(circle((638,117), 40), lightgray, linewidth(2pt));

//windows
filldraw((347,343)--(347, 481){1,0}..( 567, 343)--cycle, cyan, linewidth(2pt)); //front
filldraw(( 317, 343)--( 317,481 ){-1,0}..(104 , 343)--cycle, cyan, linewidth(2pt)); //rear

//door
draw( (567 ,343 )--(567 , 230)--( 537,200 ){-1,-1}..{-1,0}(500 , 190)--( 380, 190){-1,0}..{0,1}(347,230 )--(347,343), linewidth(2pt));

//handle
filldraw( shift(-5,15)*((385,300)--(425,300){1,0}..{-1,0}(425,280)--(385,280){-1,0}..{1,0}(385,300)--cycle), lightgray, linewidth(2pt));

//headlight
filldraw((794,168){1,.2}..{-1,0}(785,228){1,-5}..{0,-1}(794,168)--cycle, yellow, linewidth(2pt));

draw((0,8)--(1200,8), linewidth(2pt));

draw((800,400)--(1100,400), arrow = Arrow(6), linewidth(2pt)+blue);
label("$\vec{v}$",(1000,400),N,blue+fontsize(20pt));