
module Ket_Crown  () {

difference() {     
difference () {
    resize([6.3,0,11.5])
        sphere ( d=6, $fn = 100);
    translate ([0,0,-3])
    cube (size = [7,7,6], center = true);
    translate ([0,-3,2.95])
    cube (size = [7,6,7], center = true);
}

translate ([0,-.01,-.0625])
scale ([.9,.9,.965])difference () {
    resize([6.7,6.3,11.7])
    sphere ( d=6, $fn = 100);
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
    cylinder (1, d1=.5, d2=.5, $fn = 100, center = true);

    translate ([0,2.75,3.08])
    cube (size = [.5,1,5], center = true);
   }
     
}



module Ket_Crown_Base  () {

   translate ([0,0,.0625])
   scale ([.942,.95,.965])
   resize([6.7,6.3,.125])
   cylinder (d1=1, d2=1, h=.125, $fn = 100, center = true);
  }


union () {
    translate ([0,0,.125])
    rotate([0,0,135])
Ket_Crown ();
    rotate([0,0,135])
Ket_Crown_Base ();
}