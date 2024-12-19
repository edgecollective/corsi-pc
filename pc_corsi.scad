
module fan() {
difference() {
    cube([140,140,2]);
    translate([70,70,0])
    cylinder(d=140,h=3);
    translate([3.5,3.5,0])
    cylinder(d=2,h=3);
    translate([140-3.5,3.5,0])
    cylinder(d=2,h=3);
    translate([3.5,140-3.5,0])
    cylinder(d=2,h=3);
    translate([140-3.5,140-3.5,0])
    cylinder(d=2,h=3);
}
}

projection() {
fan();
translate([140,0,0])
fan();
translate([2*140,0,0])
fan();
}