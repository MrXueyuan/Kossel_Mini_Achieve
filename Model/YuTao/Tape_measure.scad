@@ -1,47 +1,11 @@
/*
    设计用于智能计数卷尺
    3D模型设计
    OpenScad源代码  ->可生产文件STL
    Design by Mr_Xueyuan
*/
include <../Instance/Definition.scad>
include <Definition.scad>
include <up.scad>
include <down.scad>
include <pack.scad>


//M3螺丝安装孔
module M3_Screw_hole (x,y,z) {
    translate([x, y, z]) {
        difference () {
            rotate([0, 0, 0]) {
                translate([0, 0, 10]) {
                    Rod (20,4,3);
                }
            }
        }
    }
}

//



/********************
*********主要********
*********************/
//上部
module hight () {

}

//下部
module low () {

}

//主函数
module main () {
    M3_Screw_hole(0,0,0);

    mounting_holes (0,0,0);
    
}

//输出
main ();