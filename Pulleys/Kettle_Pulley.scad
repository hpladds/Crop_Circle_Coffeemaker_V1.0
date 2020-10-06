
hub_z = .0254;
hub_r = .2032;
hub_a = .0777;
hub_b = .129;

wheel_z = .203;
wheel_r = .254;

v_depth = 5;

module body() {
 total_z =  wheel_z;
 difference() {
   cylinder(h=total_z,r=hub_r);
   translate([-hub_a/2,-hub_b/2,0]) {
     cube([hub_a,hub_b,total_z], 1);
   }
 }
}

module groove() {
 rotate_extrude(convexity = 100) 
   translate([10-3, 1.5, 0])
     rotate(0)
       square([v_depth,v_depth],0); 
}

module no_screws() {
  difference() {
    body();
    groove();
  }
}

no_screws ();