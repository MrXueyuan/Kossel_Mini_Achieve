module Axis (x,y,z) {
    translate ([x,y,z+14.5]) {
        difference () {
            cylinder (r=2.5, h=24, center=true,$fn=8);
            translate ([0,3.5,12]) {
                cube ([4,4,16],center=true);
            }
        }
        translate ([0,0,-12]) {
            cylinder (r=11, h=5, center=true,$fn=16);
        }
    }
}


module 42Motor (x,y,z) {
    translate ([x, y, z]) {
        Axis (0,0,19);
        difference () {
            cube(size=[42.5, 42.5, 38], center=true);
            rotate ([0,0,45]) {
                translate([30,0,0]){
                    cube ([8,8,80],center=true);
                }
            }
            rotate ([0,0,135]) {
                translate([30,0,0]){
                    cube ([8,8,80],center=true);
                }
            }
            rotate ([0,0,-45]) {
                translate([30,0,0]){
                    cube ([8,8,80],center=true);
                }
            }
            rotate ([0,0,-135]) {
                translate([30,0,0]){
                    cube ([8,8,80],center=true);
                }
            }
        }
    }
}