//支柱
module Column (x,y,z) {
    translate ([x,y,z]) {
        difference () {
            translate (0,0,300) {
                cylinder (600,340,340,center= true,$fn=3);
            }
            translate (0,0,300) {
                cylinder (600,300,300,center= true);
            }
        }
    }
}

//横柱
module Beam (x,y,z) {
    translate ([x,y,z+7.5]) {
        difference () {
            cylinder (15,340,340,center= true,$fn=3);
            cylinder (15,300,300,center= true,$fn=3);
        }
    }
}

//打印平台(热床玻璃面板)
module Platform (x,y,z) {
    translate ([x,y,z]){
        cylinder (5,170,center=true);
    }
}

Beam(0,0,0);
Column(0,0,300);
Beam(0,0,600);
Beam(0,0,-7.5);
Platform(0,0,20);