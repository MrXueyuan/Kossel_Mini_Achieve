include <Definition.scad>
include <Radiator.scad>
include <Motor.scad>

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

//打印机挤出头
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


module Putting (x,y,z) {
    translate ([x,y,z]) {
        rotate ([0,0,0]) {
            translate ([80,0,0]) {
                rotate ([0,60,0]){
                    translate ([0,0,90]) {
                        translate ([0,10,0]) {
                            Rod (315,6,4);
                        }
                        translate ([0,-10,0]) {
                            Rod (315,6,4);
                        }
                    }
                }
            }
        }
        rotate ([0,0,120]) {
            translate ([80,0,0]) {
                rotate ([0,60,0]){
                    translate ([0,0,90]) {
                        translate ([0,10,0]) {
                            Rod (315,6,4);
                        }
                        translate ([0,-10,0]) {
                            Rod (315,6,4);
                        }
                    }
                }
            }
        }
        rotate ([0,0,240]) {
            translate ([80,0,0]) {
                rotate ([0,60,0]){
                    translate ([0,0,90]) {
                        translate ([0,10,0]) {
                            Rod (315,6,4);
                        }
                        translate ([0,-10,0]) {
                            Rod (315,6,4);
                        }
                    }
                }
            }
        }
    }
}

//马达
module MotorPark (x,y,z,r) {
    rotate ([0,90,r]) {
        42Motor (x,y,z);
    }
}

module main () {
    Beam (0,0,0);
    Column (0,0,300);
    Beam (0,0,600);
    Beam (0,0,-30);
    Platform (0,0,30);
    Hot_end (0,0,315);
    Putting (0,0,345);
    MotorPark (0,0,240,0);
    MotorPark (0,0,240,120);
    MotorPark (0,0,240,-120);
}

main ();


