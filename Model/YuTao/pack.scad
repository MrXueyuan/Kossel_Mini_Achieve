include <Definition.scad>

module mounting_holes (x,y,z) {
    translate([x, y, z]) {
        union() {
            translate([0, 0, 10]) {
                rotate([0, 0, 0]) {
                    Rod (20,4,3);
                }
            }
            difference() {
                translate([0, 0, 2]) { 
                    cylinder(r=4, h=4, center=true,$fn=16);
                }
                translate([0, 0, 5]) {
                    sphere(r=3,center=true,$fn=8);
                }
            }
            
        }
    }    
}
