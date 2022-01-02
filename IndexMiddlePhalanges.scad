// File name: indexMiddlePhalanges.scad
// Meta Bionic repo github.com/felixraduica/meta-bionic
// Created and maintained by Felix Raduica
// Open Source Software

diameter = 15;
hole = 3;
height = 25;
color([0,0,1,0.25])union(){
    difference(){
        difference(){
            cylinder(h = height, r = diameter/2, $fn=360, center=false);
            translate([0, 0, 25])
            cube([10, 15, 25], center=true);
            translate([0, 7.5,25])
            cube([15, 7, 25], center=true);
            translate([0, -7.5,25])
            cube([15, 7, 25], center=true);
            translate([0, diameter/8, 0])
            cylinder(h = height+1, r = diameter/4,$fn=360, center=true);
            translate([0, -diameter/8, 0])
            cylinder(h = height+1, r = diameter/4,$fn=360, center=true);
            cube([diameter/2,diameter/4,height+1], center=true);
            translate([0, 0, height*3/4])
            rotate([0, 90, 0])
            cylinder(h =height, r = hole/2, $fn=360, center=true);

        }
        difference(){
            translate([0, 0, height-4])
            cube([30, 18, 8.1], center=true);
            translate([0, 0, height-4])
            rotate([0, 90, 0])
            cylinder(h = 40, r = 8/2, $fn=360, center=true);
            translate([0, 0, height-4-4])
            cube([33, 9, 8], center=true);
        }
    }
    rotate([0, 180,0])
    difference(){
        difference(){
            cylinder(h = height, r = diameter/2, $fn=360, center=false);
            translate([0, 0, 25])
            cube([10, 15, 25], center=true);
            translate([0, 7.5,25])
            cube([15, 7, 25], center=true);
            translate([0, -7.5,25])
            cube([15, 7, 25], center=true);
            translate([0, diameter/8, 0])
            cylinder(h = height+1, r = diameter/4,$fn=360, center=true);
            translate([0, -diameter/8, 0])
            cylinder(h = height+1, r = diameter/4,$fn=360, center=true);
            cube([diameter/2,diameter/4,height+1], center=true);
            translate([0, 0, height*3/4])
            rotate([0, 90, 0])
            cylinder(h =height, r = hole/2, $fn=360, center=true);

        }
        difference(){
            translate([0, 0, height-4])
            cube([30, 18, 8.1], center=true);
            translate([0, 0, height-4])
            rotate([0, 90, 0])
            cylinder(h = 40, r = 8/2, $fn=360, center=true);
            translate([0, 0, height-4-4])
            cube([33, 9, 8], center=true);
        }
    }
}
