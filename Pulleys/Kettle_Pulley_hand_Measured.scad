
module kettle_pulley (){
    
OR = .276; //Outer Radius
RH = .0625; // Ridge Height
IR = .236; //Inter Radius
H = .25; // Height (overall) 
SH = .1875; // Spindle Height

//mount opening dimensions

OL = .1205; //Opening Length
OW = .1993; //Opening Width

difference () {

rotate_extrude(convexity= 10 , $fn = 90)
polygon( points=[[0,0],[OR,0],[OR,RH],[IR,RH],[IR,SH],[OR,SH],[OR,H],[0,H]] );

cube (size = [OL, OW, H+.25], center = true); 

//translate ([0, 0, 0])
//cylinder (.125, .125, .125, center = false, $fn = 30);

}
}

kettle_pulley ();