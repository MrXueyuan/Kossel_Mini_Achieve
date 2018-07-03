module guan (kuan,long) {
    difference() {
        cube(size=[kuan+2, kuan+2, long], center=true);
        cube(size=[kuan, kuan, long], center=true);
    }
}


module main () {
    union() {
        translate([0, 0, 0]) {
            difference () {
                guan (120,1000);
                translate([60, 0, 0]) {
                    cube(size=[2, 100, 100], center=true);
                } 
            }
            translate([210, 0, 0]) {
                rotate([0, 90, 0]) {
                    guan (100,300) ;
                }
            }
        }
        translate([0, 0, 100]) {
            difference() {
                cube(size=[120, 120, 10], center=true);
                cube(size=[110, 110, 10], center=true);
            }
        }
    }
}

main ();