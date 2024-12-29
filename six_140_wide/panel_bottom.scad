fan_diam=120;
fan_side=140;
//screw_inset=3.5;
screw_inset=4.5*(1/16)*25.4;
filter_length=20*25.4;
filter_depth=1*25.4;
housing_width=fan_side+2*filter_depth;
fan_shift=(filter_length-3*fan_side)/2;
screw_diam=4.8;
cord_diam=5;
cord_inset=20;
echo(screw_inset);

module fan() {
//difference() {
    //cube([140,140,2]);
    translate([fan_side/2,fan_side/2,0])
    cylinder(d=fan_diam,h=3);
    translate([screw_inset,screw_inset,0])
    cylinder(d=screw_diam,h=3);
    translate([fan_side-screw_inset,screw_inset,0])
    cylinder(d=screw_diam,h=3);
    translate([screw_inset,fan_side-screw_inset,0])
    cylinder(d=screw_diam,h=3);
    translate([fan_side-screw_inset,fan_side-screw_inset,0])
    cylinder(d=screw_diam,h=3);
//}
}

projection() {
    
    //difference() {
    cube([filter_length,housing_width,2]);
    //translate([cord_inset,housing_width/2,0])
    //    cylinder(d=cord_diam,h=3);
    //}
}