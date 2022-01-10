height = 30;
diameter = 15;
faceNumber = 560;
hole = 3;

        // Base sshape
    union(){
        translate([diameter/6, 0, 0])
        cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
        translate([-diameter/6, 0, 0])
        cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
        translate([-diameter/4+1,-diameter/2,0])
        cube([diameter/2-1, diameter, height/2], center=false);}
// make tip
        translate([diameter/6,0,0])
        rotate([0,0,90])
    translate([0,0,height/2])
    rotate_extrude(angle=180, $fn=100)
    difference(){
        scale([1,1.5,1])
        circle(d=diameter, $fn=faceNumber);
        square([15,15]);
        translate([-15,-15,0])
        square([30,15]);
    }
    
    
    
            translate([-diameter/6,0,0])
        rotate([0,0,-90])
    translate([0,0,height/2])
    rotate_extrude(angle=180, $fn=100)
    difference(){
        scale([1,1.5,1])
        circle(d=diameter, $fn=faceNumber);
        square([15,15]);
        translate([-15,-15,0])
        square([30,15]);
    }
    
    
        rotate([90,0,90])
    translate([0,height/2,-diameter/4+1])
    linear_extrude(diameter/2-1)
    difference(){
        scale([1,1.5,1])
        circle(d=diameter, $fn=faceNumber);
        square([15,15]);
        translate([-15,-15,0])
        square([30,15]);
    }
    
    
    
            rotate([90,0,-90])
    translate([0,height/2,-diameter/4+1])
    linear_extrude(diameter/2-1)
    difference(){
        scale([1,1.5,1])
        circle(d=diameter, $fn=faceNumber);
        square([15,15]);
        translate([-15,-15,0])
        square([30,15]);
    }