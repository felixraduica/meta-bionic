// File name: indexMiddlePhalangesV4.scad
// Meta bionic
// Created and maintained by Felix Raduica
// github.com/felixraduica/meta-bionic


height = 30;
diameter = 15;
faceNumber = 560;
hole = 3;

difference(){
    difference(){
        // Base sshape
        union(){
            translate([diameter/6, 0, 0])
            cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
            translate([-diameter/6, 0, 0])
            cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
            translate([-diameter/4+1,-diameter/2,0])
            cube([diameter/2-1, diameter, height/2], center=false);}
        // remove middle material
        translate([0, 0, height/2])
        cube([diameter*0.6, diameter, height/2], center=true);
        // remove side material
        translate([0, diameter/1.75, height/2])
        cube([diameter*2, height/4, height/2], center=true);
        translate([0, -diameter/1.75, height/2])
        cube([diameter*2, height/4, height/2], center=true);
        // make a hole through the base shape
        translate([0, diameter/8, 0])
        cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
        translate([0, -diameter/8, 0])
        cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
        cube([diameter/2,diameter/4,height+1], center=true);
        // make pin hole
        translate([0, 0, 3/4*height/2])
        rotate([0,90,0])
        cylinder(h=height, d = hole, center=true, $fn=faceNumber);}
        // fillet edges
        translate([0, 0, -diameter/3])
        difference(){
            union(){
                translate([0, 0, height/2])
                cube([diameter, diameter, diameter], center=false);
                translate([-diameter, 0, height/2])
                cube([diameter, diameter, diameter], center=false);}
            translate([0, 0, height/2])
            rotate([0, 90, 0])
            cylinder(h = 40, d = diameter/1.55, $fn=faceNumber, center=true);}}
// make the other half
rotate([0,180,0])
difference(){
    difference(){
        // Base sshape
        union(){
            translate([diameter/6, 0, 0])
            cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
            translate([-diameter/6, 0, 0])
            cylinder(h = height/2, d = diameter, center=false, $fn=faceNumber);
            translate([-diameter/4+1,-diameter/2,0])
            cube([diameter/2-1, diameter, height/2], center=false);}
        // remove middle material
        translate([0, 0, height/2])
        cube([diameter*0.6, diameter, height/2], center=true);
        // remove side material
        translate([0, diameter/1.75, height/2])
        cube([diameter*2, height/4, height/2], center=true);
        translate([0, -diameter/1.75, height/2])
        cube([diameter*2, height/4, height/2], center=true);
        // make a hole through the base shape
        translate([0, diameter/8, 0])
        cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
        translate([0, -diameter/8, 0])
        cylinder(h = height+1, r = diameter/4,$fn=faceNumber, center=true);
        cube([diameter/2,diameter/4,height+1], center=true);
        // make pin hole
        translate([0, 0, 3/4*height/2])
        rotate([0,90,0])
        cylinder(h=height, d = hole, center=true, $fn=faceNumber);}
        // fillet edges
        translate([0, 0, -diameter/3])
        difference(){
            union(){
                translate([0, 0, height/2])
                cube([diameter, diameter, diameter], center=false);
                translate([-diameter, 0, height/2])
                cube([diameter, diameter, diameter], center=false);}
            translate([0, 0, height/2])
            rotate([0, 90, 0])
            cylinder(h = 40, d = diameter/1.55, $fn=faceNumber, center=true);}}           
            