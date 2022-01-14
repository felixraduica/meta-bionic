height = 30;
diameter = 15;
faceNumber = 560;
hole = 3;

module indexDistalBone(){
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
// make base
    rotate([0, 180,0]){
     difference(){
      difference(){
         union(){
            translate([diameter/6, 0, 0])
            cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
            translate([-diameter/6, 0, 0])
            cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
            translate([-diameter/4+1,-diameter/2,0])
            cube([diameter/2-1, diameter, height/2], center=false);}
        // remove sides material

        translate([diameter*0.6, 0, height/2])
        cube([diameter*0.6, diameter, height/1.5], center=true);
        translate([-diameter*0.6, 0, height/2])
        cube([diameter*0.6, diameter, height/1.5], center=true);
                    // make a hole through the base shape
        translate([0, diameter/8, 0])
        cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
        translate([0, -diameter/8, 0])
        cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
        cube([diameter/2,diameter/4,height+1], center=true);
                    // make pin hole
        translate([0, 0, 3/4*height/2])
        rotate([0,90,0])
        cylinder(h=height, d = hole, center=true, $fn=faceNumber);
            }
           
        
        // fillet edges
        translate([0, 0, -diameter/3])
        difference(){
            union(){
                translate([0, 0, height/3])
                cube([diameter+1, diameter, diameter], center=false);
                translate([-diameter, 0, height/3])
                cube([diameter+1, diameter, diameter], center=false);}
            translate([0, 0, height/2])
            rotate([0, 90, 0])
            cylinder(h = 40, d = diameter/1.5, $fn=faceNumber, center=true);}}
             // make pipe
            difference(){
        translate([0, 0, 3/4*height/2])
        rotate([0,90,0])
        cylinder(diameter/2, d = 2*hole, center=true, $fn=faceNumber);
        translate([0, 0, 3/4*height/2])
        rotate([0,90,0])
        cylinder(diameter, d = hole, center=true, $fn=faceNumber);}
        
            }}
            indexDistalBone();
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