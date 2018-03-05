include <Definition.scad>
include <Radiator.scad>

//支柱
module Column (x,y,z) {
    translate ([x,y,z]) {
        difference () {
            translate (0,0,300) {
                cylinder (600,340,340,center= true,$fn=3);
            }
            translate (0,0,300) {
                cylinder (600,300,300,center= true,$fn=27);
            }
        }
    }
}

//横柱
module Beam (x,y,z) {
    translate ([x,y,z+15]) {
        difference () {
            cylinder (30,340,340,center= true,$fn=3);
            cylinder (30,300,300,center= true,$fn=3);
        }
    }
}

//打印平台(热床玻璃面板)
module Platform (x,y,z) {
    translate ([x,y,z]) {
        cylinder (5,170,170,center=true,$fn=16);
    }
}

module Hot_end (x,y,z) {
    translate ([x,y,z]) {
        difference () {
            rotate ([0,0,0]) {
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
        }
    }
}

module main () {
    Beam (0,0,0);
    Column (0,0,300);
    Beam (0,0,600);
    Beam (0,0,-30);
    Platform (0,0,30);
    Hot_end (0,0,315);
}

main ();

