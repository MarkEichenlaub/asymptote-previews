unitsize(1cm);
  
  path person = (-.1,0)--(0,.5)--(.1,0)--(0,.5)--(0,.75)--(-.35,.75)--(.35,.75)--(0,.75)--(0,.8)--shift(0,.9)*scale(.1)*rotate(-90)*unitcircle; 
  
  real R_s = 1;
  real R_e = 0.5;
  real R_m = 0.2;
  
  real x_s = 10;
  real x_m = 2;
  
  
  real R_s2 = 1.5;
  
  
  //Sun
  filldraw(shift((x_s,0))*scale(R_s)*unitcircle, white);
  
  //new Sun
  draw(shift((x_s,0))*scale(R_s2)*unitcircle, dotted);
  
  label("Sun", (x_s,-R_s),S);
  label("Moon", (x_m,-R_m),S);
  label("Earth", (0,-R_e),S);
  
  pair P = (R_e,0);
  pair ST = (x_s,R_s);
  pair SB = (x_s,-R_s);
  
  int n = 3;
  
  for(int i = -n; i<n+1; ++i){
  pair S = (x_s,R_s2*i/n);
  pair E = (x_m,S.y*x_m/x_s);
  if(abs(E.y)>R_m){ E = P;}
  draw(S--E, dotted);
  }
  
  //Earth
  filldraw(scale(R_e)*unitcircle,blue);
  draw(shift((R_e,0))*rotate(-90)*scale(.4)*person,red);
  
  //Moon
  filldraw(shift((x_m,0))*scale(R_m)*unitcircle, gray);