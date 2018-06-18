/*
    设计用于智能计数卷尺
    3D模型设计
    OpenScad源代码  ->可生产文件STL
    Design by Mr_Xueyuan
*/

//导入预制模型包
include <../Instance/Definition.scad>

module Bottom_shell (x,y,z) {
    translate([x, y, z]) {
        difference () {
            scale([1, 1, 1]) {
                union () {
                    cylinder (r=30, h=12, center=true);
                    translate ([-15, 25, -6]) {
                        Three_Prism  (12,50);
                    }
                }
            }
            translate([0, 0, 1.2]) { 
                scale ([0.9, 0.9, 0.9]) {
                    union () {
                        cylinder (r=30, h=12, center=true);
                        translate ([-15, 25, -6]) {
                            Three_Prism  (12,50);
                        }
                    }
                }
            }
            translate([-30, 50, 0]) {
                rotate([0, 0, 15]) {
                    cube(size=[15,15,12], center=true);
                }
            }
        }
    } 
}

module M3_holes (x,y,z) {
    translate ([x, y, z]) {
        union () {
            translate ([0, 0, 10]) {
                rotate ([0, 0, 0]) {
                    Rod (20,4,3);
                }
            }
            difference () {
                translate ([0, 0, 2]) { 
                    cylinder (r=4, h=4, center=true,$fn=16);
                }
                translate ([0, 0, 4]) {
                    sphere (r=3.5,center=true,$fn=6);
                }
            }
        }
    }    
}



//主模型
module main () {
    M3_holes(0,0,0);
    Bottom_shell();
}

//输出
main();