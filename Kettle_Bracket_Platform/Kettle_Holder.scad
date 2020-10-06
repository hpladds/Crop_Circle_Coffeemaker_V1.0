seg = 300;

module Ket_shell_exterior(){
    resize([0,0,11.5])
        sphere ( d=6.125, $fn = seg);   
}

module Ket_shell_interior(){
    scale ([.95, .95, .985])
        Ket_shell_exterior();
}

module Spout_opening () {
    translate ([0,0,5])
    rotate ([0,33,0])
        cube (size = [7,7,7], center = true); //Trim top of sphere(s)
    
    translate ([-3,0,1.625])
    rotate ([90,0,90])
        cylinder (1, d1=.45, d2=.45, $fn = seg, center = true);

    translate ([-2.75,0,3.08])
        cube (size = [1,.45, 2.9], center = true);    
}
    
module base (){
difference () {    
    scale ([1, 1, 1])
        cylinder (.125, d1=6.125, d2=6.125, $fn = seg, center = true); 
 
    translate ([-3.1, 0, -.2])  
    rotate ([45, 0, 0])
        cube (size = [.25,.25, .25], center = true);//center mark
    
    translate ([3.1, 0, -.2])  
    rotate ([45, 0, 0])
        cube (size = [.25,.25, .25], center = true);  //center mark 
}
}
////////BEGIN////////

difference () {
    Ket_shell_exterior();
    Ket_shell_interior();
    Spout_opening ();
    
    translate([3, 0, 1])  
        cube (size = [6,8,4], center = true); //Trim side of sphere(s)
    
    translate([-4, -4, -8.0625])
        cube (size = [8,8,8], center = false); //Trim bottom of sphere(s)
    
    translate ([-3.1, 0, -.2])  
    rotate ([45, 0, 0])
        cube (size = [.25,.25, .25], center = true); //center mark... again!
}

base ();
