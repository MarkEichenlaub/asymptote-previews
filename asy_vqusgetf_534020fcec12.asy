unitsize(2cm);

 /* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(0cm); 
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */ 
pen dotstyle = black; /* point style */ 
real xmin = -6.4, xmax = 6.773333333333337, ymin = -2.7133333333333347, ymax = 6.06;  /* image dimensions */
pen rvwvcq = rgb(0.08235294117647059,0.396078431372549,0.7529411764705882); 

draw((-3.5,2.02)--(-2.46,0.42)--(1.75555236728838,3.160109038737447)--(0.7155523672883797,4.760109038737447)--cycle, linewidth(2) + rvwvcq); 
 /* draw figures */
draw((-2.3564499121265374,1.6253075571177507)--(-1.28,-0.52), linewidth(2)); 
draw((-1.28,-0.52)--(0.6120022794149174,3.5548014816196964), linewidth(2)); 
draw(circle((-1.28,-0.52), 0.31240998703626616), linewidth(2)); 
draw((-3.5,2.02)--(-2.46,0.42), linewidth(2) + rvwvcq); 
draw((-2.46,0.42)--(1.75555236728838,3.160109038737447), linewidth(2) + rvwvcq); 
draw((1.75555236728838,3.160109038737447)--(0.7155523672883797,4.760109038737447), linewidth(2) + rvwvcq); 
draw((0.7155523672883797,4.760109038737447)--(-3.5,2.02), linewidth(2) + rvwvcq); 
 /* dots and labels */
dot((-2.3564499121265374,1.6253075571177507),dotstyle); 
dot((0.6120022794149174,3.5548014816196964),dotstyle); 
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle); 
 /* end of picture */