//TeXeR source: https://artofproblemsolving.com/texer/airhbxec

size(8cm);

//ink
fill(box((.1,.1),(.9,.2)),cyan);

//paper
draw(box((0,0),(1,.1)));

//red light
draw((0,.4)--(.2,.2), arrow = Arrow(6) , red+linewidth(2pt));

//green light - diffuse reflection (scattered in multiple directions)
draw((.05,.4)--(.25,.2), arrow = Arrow(6), green+linewidth(2pt));
draw((.25,.2)--(.15,.4), arrow = Arrow(6), green+linewidth(1.5pt));
draw((.25,.2)--(.25,.45), arrow = Arrow(6), green+linewidth(1.5pt));
draw((.25,.2)--(.35,.4), arrow = Arrow(6), green+linewidth(1.5pt));
draw((.25,.2)--(.40,.35), arrow = Arrow(6), green+linewidth(1.5pt));
draw((.25,.2)--(.08,.32), arrow = Arrow(6), green+linewidth(1.5pt));

//blue light - diffuse reflection (scattered in multiple directions)
draw((.1,.4)--(.3,.2), arrow = Arrow(6), blue+linewidth(2pt));
draw((.3,.2)--(.20,.4), arrow = Arrow(6), blue+linewidth(1.5pt));
draw((.3,.2)--(.30,.45), arrow = Arrow(6), blue+linewidth(1.5pt));
draw((.3,.2)--(.40,.4), arrow = Arrow(6), blue+linewidth(1.5pt));
draw((.3,.2)--(.45,.35), arrow = Arrow(6), blue+linewidth(1.5pt));
draw((.3,.2)--(.13,.32), arrow = Arrow(6), blue+linewidth(1.5pt));