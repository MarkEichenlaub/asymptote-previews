unitsize(1cm);
draw(unitcircle);
draw(shift(4,0)*unitcircle);
draw((4.5,.75)--(7.5,.75),arrow=Arrow(6));
draw((.5,.75)--(3.5,.75),arrow = Arrow(6));
label("$v$",(7,.75),N);
label("$v$",(3,.75),N);

void labeled_coil( pair start , pair end , Label text , pen draw_pen ){
	pair coil( real t ){ return (cos(t)/5+t/20,sin(t)/2) ; }
	real left = -pi ;
	real right = 6pi ;

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

labeled_coil( (1,0) , (3,0) , "" , gray ) ;