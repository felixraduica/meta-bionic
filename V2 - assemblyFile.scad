use <V2 - indexProximalPhalanges.scad>
use <V2 - indexMiddlePhalanges.scad>
use <V2 - indexDistalPhalanges.scad>
indexProximalBone();
rotate([0, 180, 0])
translate([0,0, -47])
indexMiddleBone();
translate([0,0, 96])
indexDistalBone();