draw(arc((0,0),1,2,358));
pair start = 1*(cos(2*pi/180),sin(2*pi/180));
draw(start--(start+(1,0)));
pair start2 = 1*(cos(2*pi/180),sin(-2*pi/180));
draw(start2--(start2+(1,0)));

draw(arc((2.5,0),.5,175,-175));