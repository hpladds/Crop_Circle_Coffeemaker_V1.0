

module channel1(){
    rotate ([0,0,270])
        rotate_extrude(angle=90, $fn = 300)
            translate([.5, .0485]) square([.6,.2247],true);
    
    translate([0,1.11,-.001])
        rotate_extrude(angle=45, $fn = 300)
            translate([.5, .0485]) square([.6,.2247],true);
    
    translate([.2,-.01,-.064])
        cube([.6, 1.125,.225],false);
    
    translate([.15, 1.243,-.064])
    rotate ([0,0,45])
        cube([.6, 1.45,.225],false);
}

module channel2(){  
    translate([-1.863, -8.75,-.064])
        cube([.6, 1.25,.225],false);
   
    translate([-1.0625, -7.5,-.001])
    rotate ([180,0,180])
        rotate_extrude(angle=45, $fn = 300)
            translate([.5, -.0485]) square([.6,.225],true);
    
      translate([-.245, -6.4,-.064])
      rotate ([0,0,135])
        cube([.6, 1.37,.225],false); 
}

module channel3(){

    translate([-.875, 4,-.001])
        rotate_extrude(angle=45, $fn = 300)
            translate([.5, 0.0485]) square([.6,.225],true);
    
        translate([-3, -2.75,-.001])
    rotate([0,0,90])
        rotate_extrude(angle=90, $fn = 300)
            translate([.5, 0.0485]) square([.6,.225],true);
    
        translate([-.875, -2.75,-.001])
        rotate_extrude(angle=90, $fn = 300)
            translate([.5, 0.0485]) square([.6,.225],true);
    
    translate([-.675, -3.975,-.064])
        cube([.6, 8,.225],false);
    
    translate([4.75, -2.04,-.064])
    rotate([0,0,90])
        cube([.6, 5,.225],false);
    
    translate([-.175, -3.975,-.064])
        cube([.6, 2.5,.225],false);
    
           
    translate([-.8, -2.55,-.064])
    rotate([0,0,90])
        cube([.6, 2.25,.225],false);   
}

module riser2_cutout(){ // riser for kettle
    union(){
        translate([-.625, 0, .375])
        cylinder(1, r=.25, center = true, $fn=30);
        translate([.625, 0, .375])
        cylinder(1, r=.25, center = true, $fn=30);
    }
}

module button_cutout(){ // push botton cutout
  
    translate([.25, -.5, -.07]) 
       cube([1.75, 3, .66], center = false);
      
    translate([.5, 1.75, .5125]) //control button
        button();
  
    translate([.5, 0, .5125])  // north button
        button();
    
    translate([.875, .5, .5125]) // west button
        button();
    
    translate([.125, .5, .5125]) // east button
        button();
    
    translate([.5, 1, .5125])
        button();          // south button    
}
    
module button(){ // push botton 

        translate([.625, 0, .166])
        color( "black", 1.0 )
            cylinder(.1875, r=.0625, center = true, $fn=30);
    
        translate([.625, 0, 0])
             cube([.25, .4375, .156], center = true);  
}

module StepMotor28BYJ_Cutout(){
    union(){
        translate  ([-.315,0, 0])
            cylinder(h = 1, r = .55, center = true, $fn = 32);
        translate([-.815, 0, 0])
            cube([.5, .75, 1], center = true);
        }       
}

module motor_bases() {
    
difference (){
union(){
    translate([0, 2.89, .375])
        cylinder(.75, r=3.5, $fn=300, center=true); // cup platform
        
    translate([0, -2, .375])
        cube([2.9375, 4, .75], center = true); // center arm
    
    translate([-1.965, .2025, .375])
    rotate([0, 0, 100])
        cube([.5, 1, .75], center = true); // west arm filler
   
    translate([-3.5, 2.37, .375])
    rotate([0, 0, 317])
        cube([.5, 1, .75], center = true); // west arm filler 
   
    translate([1.362, 5.9, .375])
    rotate([0, 0, 19])
        cube([.5, 1, .75], center = true); // center/ north arm filler
        
    translate([-1.362, 5.9, .375])
    rotate([0, 0, 341])
        cube([.5, 1, .75], center = true); // center/ north arm filler 
    
    translate([1.965, .2025, .375])
    rotate([0, 0, 80])
        cube([.5, 1, .75], center = true); // east arm filler 
    
    translate([3.5, 2.37, .375])
    rotate([0, 0, 43])
        cube([.5, .5, .75], center = true); // east arm filler 
           
    translate([-1.27, -.2, .375])
    rotate([0, 0, 33])
        cube([.5, .5, .75], center = true); // center arm filler north west
    
    translate([1.27, -.2, .375])
    rotate([0, 0, -30])
        cube([.5, .5, .75], center = true); // center arm filler north east
       
    translate([-1.27, -3.72, .375])
    rotate([0, 0, 332])
        cube([.5, .5, .75], center = true); // center arm filler south west 
    
    translate([1.27, -3.72, .375])
    rotate([0, 0, 28])
        cube([.5, .5, .75], center = true); // center arm filler south east 
    
    translate([0, 5.774, .375])
    rotate([0, 0, 0])
        cube([2.0625, 5.774, .75], center=true); // north arm
        
    translate([2.5, 1.45, .375])
    rotate([0, 0, 60])
        cube([2.0625, 5.774, .75], center=true); // east arm  
      
    translate([-2.5, 1.45, .375])
    rotate([0, 0, 120])
        cube([2.0625, 5.774, .75], center=true); // west arm
    
    translate([0, 7.245, 0])
        cylinder(.75, r=1.875, $fn=300, center=false); // north outcrop
    
    translate([-3.75, .75, 0])
        cylinder(.75, r=1.875, $fn=300, center=false); // west outcrop
    
    translate([3.75, .75, 0])
        cylinder(.75, r=1.875, $fn=300, center=false); // east outcrop

    translate([0, -8.5, 0]) // base for kettle
        hull(){                   
            translate([0, 1, .375])
            cylinder(.75, r=3, $fn=300, center=true); 
            translate([0, 2.25, .375])
            cylinder(.75, r=3, $fn=300, center=true); 
    }
}

    translate([-1.593, -.347, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner cent. platform north west

    translate([1.593, -.347, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner cent. platform north east

    translate([-1.593, -3.567, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner cent. platform south west

    translate([1.593, -3.567, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner cent. platform south east

    translate([-1.965, -.14, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner west outcrop

    translate([-3.609, 2.739, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner west outcrop

    translate([1.966, -.1375, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner east outcrop

    translate([3.609, 2.739, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner east outcrop

    translate([1.639, 6.106, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner north outcrop
        
    translate([-1.639, 6.106, .375])
        cylinder(.875, r=.125, $fn=30, center=true); // Round corner north outcrop     
}
}

///////////////// CODE BEGINS//////////////////

difference() {
    
    translate([-5.625, -13.39, 0])
        cube([11.25, 19.62,.125],false); 
    
    //translate([0,-2.89,0])
      //  motor_bases();
   
    translate([1.5,-9, -.01])
        channel1(); 
   
    translate([0, 0, 0])
        channel2(); 
    
    translate([0, 0, 0])
        channel3();

    //translate([-2.9, -10.75, .065])
      //  button_cutout(); //This has been verified.
   
   // translate([-1.5, -4.987, .145]) 
     //   cube([ .75, 2.5, .3], center=true); // outlet cutout
    
   // translate([0, -5.3, .24]) 
    //    cube([ 2.4375, 3.126, .5], center=true); // board cutout

  //  translate([0, 0, .501])
   //     cylinder(.25, r=3.625, $fn=30); //removes material from platform for effector
    
////Through Holes//////
 /*  
    translate([-1, 5.193, .375]) //north stepper cutout
    rotate ([0, 180, 300])    
        StepMotor28BYJ_Cutout();

    translate ([-4.0003, -3.4675, .375]) //west stepper cutout
    rotate ([0, 180, 60])
        StepMotor28BYJ_Cutout();

    translate ([5.0003, -1.7355, .375]) //east stepper cutout    
    rotate ([0, 180, 180])
        StepMotor28BYJ_Cutout();
         
    translate([.46, -9.5, .375]) //kettle stepper cutout
    rotate ([0, 0, 180])
        StepMotor28BYJ_Cutout();
        
    translate([-0, -7.45, 0])  
        riser2_cutout();
 */  
///// Marking of eyelet locations -- tool change small bit 
      
    //translate([0, 5.77, .5])
        //%cylinder(1.55, r=.015, $fn=30, center=false); // cable pivot point north
    
    //translate([-5, -2.89, .5])
        //%cylinder(.55, r=0.015, $fn=30, center=false); // west outcrop
     
    //translate([5, -2.89, .50])
        //%cylinder(.55, r=.015, $fn=30, center=false); // east outcrop
  
    //translate([0, 0, .25])
        //%cylinder(.55, r=.015, $fn=30, center=false); // center (coordinate 0,0)
        
    translate([0, 5.895, .5625])
        cylinder(.55, r=.015, $fn=30, center=false); // cable pivot point north w/offset
            
    translate([-5.108, -2.9525, .5])
        cylinder(.55, r=0.015, $fn=30, center=false); // west outcrop w/offset
        
    translate([5.108, -2.9525, .5])
        cylinder(.55, r=.015, $fn=30, center=false); // east outcrop w/offset
        
    translate([0, -11.45, .5])
        cylinder(.55, r=.015, $fn=30, center=false); // kettle rear eyelette
        
    translate([0, -5.1375, .5])
        cylinder(.55, r=.015, $fn=30, center=false); // kettle front eyelette
}



