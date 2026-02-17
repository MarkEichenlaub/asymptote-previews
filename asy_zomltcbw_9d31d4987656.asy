//TeXeR source: https://artofproblemsolving.com/texer/zomltcbw

void labeled_coil( pair start , pair end , Label text , pen draw_pen ){
	pair coil( real t ){ return (cos(t)/5+t/20,.3*sin(t)/2) ; }
	real left = -pi ;
	real right = 12pi ;

	pair desired_displacement = end-start ;
    pair displacement = coil(right)-coil(left) ;
    real angle = (
    	desired_displacement.x == 0 ?
        ( end.x>start.x ? 90 : -90 ) :
		degrees(atan(desired_displacement.y/desired_displacement.x))
	) ; ;
    path drawn_coil = shift(start-coil(left))* scale(length(desired_displacement)/length(displacement))* rotate(angle,coil(left))* graph( coil , left , right ) ;
    draw( start--drawn_coil--end , draw_pen ) ;

    label( text , (start+end)/2 , filltype=UnFill ) ;
}

labeled_coil(  (-2,0) , (2,0) , "" , gray ) ;

fill(scale(.3)*unitcircle);

draw((0,0)--(.6,0),arrow = Arrow(6));
draw((0,0)--(-.6,0),arrow = Arrow(6));
label("longitudinal",(0,-.5));

labeled_coil(  (-2,-2) , (2,-2) , "" , gray ) ;
fill(shift(0,-2)*scale(.3)*unitcircle);
draw((0,-2)--(0,-1.4),arrow = Arrow(6));
draw((0,-2)--(0,-2.6),arrow = Arrow(6));
label("transverse",(0,-2.5),S);