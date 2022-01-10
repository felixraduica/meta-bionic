// File name: indexMiddlePhalangesV2.scad
// Meta Bionic repo github.com/felixraduica/meta-bionic
// Created and maintained by Felix Raduica
// Open Source Software

height = 30;
diameter = 15;
faceNumber = 560;
hole = 3;
color([0,0.5,0,0.75])union(){
 difference(){
difference(){
    cylinder(h = height/2, r = diameter/2, $fn=faceNumber, center=false);
    translate([0, 0, height/2])
    cube([diameter*0.6, diameter, height/2], center=true);
    translate([0, diameter/1.75, height/2])
    cube([height/2, height/4, height/2], center=true);
    translate([0, -diameter/1.75, height/2])
    cube([height/2, height/4, height/2], center=true);
    translate([0, diameter/8, 0])
    cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
    translate([0, -diameter/8, 0])
    cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
    cube([diameter/2,diameter/4,height+1], center=true);
    translate([0, 0, height*3/4])
    rotate([0, 90, 0])
    cylinder(h =height, r = hole/2, $fn=360, center=true);
    translate([0, 0, 3/4*height/2])
    rotate([0,90,0])
    cylinder(h=height, d = hole, center=true, $fn=faceNumber);
    }

    translate([0, 0, -diameter/3])
     difference(){
        union(){
        translate([0, 0, height/2])
        cube([diameter, diameter, diameter], center=false);
        translate([-diameter, 0, height/2])
        cube([diameter, diameter, diameter], center=false);
        translate([0, -diameter, height/2])
        cube([diameter, diameter, diameter], center=false);
        translate([-diameter, -diameter, height/2])
        cube([diameter, diameter, diameter], center=false);
        }
        translate([0, 0, height/2])
        rotate([0, 90, 0])
        cylinder(h = 40, d = diameter/1.55, $fn=faceNumber, center=true);
        }
    }
 rotate([0, 180.0])
 difference(){
difference(){
    cylinder(h = height/2, r = diameter/2, $fn=faceNumber, center=false);
    translate([0, 0, height/2])
    cube([diameter*0.6, diameter, height/2], center=true);
    translate([0, diameter/1.75, height/2])
    cube([height/2, height/4, height/2], center=true);
    translate([0, -diameter/1.75, height/2])
    cube([height/2, height/4, height/2], center=true);
    translate([0, diameter/8, 0])
    cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
    translate([0, -diameter/8, 0])
    cylinder(h = height+1, r = diameter/4,$fn=360, center=true);
    cube([diameter/2,diameter/4,height+1], center=true);
    translate([0, 0, height*3/4])
    rotate([0, 90, 0])
    cylinder(h =height, r = hole/2, $fn=360, center=true);
    translate([0, 0, 3/4*height/2])
    rotate([0,90,0])
    cylinder(h=height, d = hole, center=true, $fn=faceNumber);
    }

    translate([0, 0, -diameter/3])
     difference(){
        union(){
        translate([0, 0, height/2])
        cube([diameter, diameter, diameter], center=false);
        translate([-diameter, 0, height/2])
        cube([diameter, diameter, diameter], center=false);
        translate([0, -diameter, height/2])
        cube([diameter, diameter, diameter], center=false);
        translate([-diameter, -diameter, height/2])
        cube([diameter, diameter, diameter], center=false);
        }
        translate([0, 0, height/2])
        rotate([0, 90, 0])
        cylinder(h = 40, d = diameter/1.55, $fn=faceNumber, center=true);
        }
    }
}