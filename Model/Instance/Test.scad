include <Definition.scad>
include <Radiator.scad>
include <Motor.scad>

module Hot_end (x,y,z) {
    translate ([x,y,z]) {
        difference () {
            union () {
                difference () {
                    Three_Prism (5,100);
                    rotate ([0,0,0]) {
                        translate([80,0,0]){
                            rotate ([0,0,0]){
                                cube ([80,80,80],center=true);
                            }
                        }
                    }
                    rotate ([0,0,120]) {
                        translate([80,0,0]){
                            rotate ([0,0,270]){
                                cube ([80,80,80],center=true);
                            }
                        }
                    }
                    rotate ([0,0,240]) {
                        translate([80,0,0]){
                            rotate ([0,0,90]){
                                cube ([80,80,80],center=true);
                            }
                        }
                    }
                }

                Radiator (0,0,5);

                translate ([0,0,-10]) {
                    cylinder (20,0,20,center=true,$fn=16);
                }
            }
            cylinder (200,0.4,0.4,center=true,$fn=16);
            translate ([0, 0, 100]) { 
                cylinder (200,1.75,1.75,center=true,$fn=16);
            }
        }
    }
}


    Hot_end (0,0,315);