
seg = 300;

module Ket_shell_exterior(){
    difference () {
    resize([6.3,0,11.5])
    translate ([0, -.064, 0])
        sphere ( d=6.125, $fn = seg);
    translate ([0,0,-3])
        cube (size = [7,7,6], center = true);
    translate ([0,-3,2.95])
        cube (size = [7,6,7], center = true);
}   
}

module Ket_shell_interior (){
    translate ([0,-.01,-.0625])
    scale ([.9,.9,.965])
    
    difference () {
    resize([6.7,6.3,11.7])
        sphere ( d=4, $fn = seg);
    translate ([0,0,-3])
        cube (size = [7,7,6], center = true);
    translate ([0,-3,2.95])
        cube (size = [7,6,7], center = true);
}
    translate ([0,0,5])
    rotate ([33,0,0])
        cube (size = [7,7,7], center = true);
    
    translate ([0,3,.6])
    rotate ([90,0,0])
        cylinder (1, d1=.4, d2=.4, $fn = 100, center = true);

    translate ([0,2.75,3.08])
        cube (size = [.4,1,5], center = true);
   }



module Ket_Crown  () {

difference() {
    
    Ket_shell_exterior();
    Ket_shell_interior();
}
}

module Ket_Crown_Base  () {
   
   translate ([0, -.064, 0])
   scale ([.942,.95,.965])
   resize([6.6,6.3,.125])
        cylinder (d1=10, d2=10, h=.125, $fn = seg, center = true);
  }


union () {
    translate ([0,0,.125])
    //rotate([0,0,135])
Ket_Crown ();
   // rotate([0,0,135])
Ket_Crown_Base ();
}