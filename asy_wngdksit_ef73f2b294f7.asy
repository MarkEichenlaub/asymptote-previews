//TeXeR source: https://artofproblemsolving.com/texer/wngdksit

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

labeled_coil(  (-2,0) , (0,1) , "" , gray ) ;
labeled_coil( (0,1), (2,0) , "" , gray);

fill(shift(0,1)*scale(.3)*unitcircle);

draw((0,1)--(1,.5),arrow = Arrow(6),red);
draw((0,1)--(-1,.5),arrow = Arrow(6),red);

label("$T$",(1,.5),N,red);
label("$T$",(-1,.5),N,red);

draw((0,0)--(0,1),dotted);
label("$y$",(0,.5),E);

draw((-2,0)--(2,0),dashed);
label("$l_0 +\Delta l$",(0,0),S);