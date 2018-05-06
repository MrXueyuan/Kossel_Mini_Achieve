union() {
cylinder (h = 4, r=1, center = true, $fn=100);
rotate ([90,0,0]) cylinder (h = 4, r=0.9, center = true, $fn=100);
}
// 第一个减去第二个（或者更多个）


//包含两个重叠部分都被减去
translate([0,-5,0])
difference() {
cylinder (h = 4, r=1, center = true, $fn=100);
rotate ([90,0,0]) cylinder (h = 4, r=0.9, center = true, $fn=100);
}


//仅保留其重叠部分
translate([-5,0,0,])
render(convexity = 1 ) {
intersection() {
cylinder (h = 4, r=1, center = true, $fn=100);
rotate ([90,0,0]) cylinder (h = 4, r=0.9, center = true, $fn=100);
} }


translate([-0,150,0,]) cube(size = [350,350,4], center = true);//底
translate([0,-20,170,]) cube(size = [350,4,350], center = true);//后
translate([170,150,170,]) cube(size = [4,350,350], center = true);//左
translate([-170,150,170,]) cube(size = [4,350,350], center = true);//右
difference() {
translate([0,320,170,]) cube(size = [350,4,350], center = true);
translate([0,320,170,]) cube(size = [230,10,260], center = true);
} //前


color("blue") translate([-0,150,60,]) cube(size = [220,220,5], center = true);//热床


color("blue")translate([50,20,0,]) cylinder (h = 260, r=4, $fn=100);//Z轴左
color("blue")translate([-50,20,0,]) cylinder (h = 260, r=4, $fn=100);//Z轴右


color("red")
union() {
translate([-170,20,300,]) rotate ([0,90,0]) cylinder (h = 340, r=4, $fn=100);//X轴后
translate([140,20,300,]) rotate ([0,90,0]) cylinder (h = 10, r=8, center = true , $fn=100);
translate([155,20,300,]) rotate ([0,90,0]) cylinder (h = 10, r=8, center = true , $fn=100);
translate([-140,20,300,]) rotate ([0,90,0]) cylinder (h = 10, r=8, center = true , $fn=100);
} color("red")
translate([-170,280,300,]) rotate ([0,90,0]) cylinder (h = 340, r=4 , $fn=100);//X轴前


color("green")
translate([130,320,284,])rotate ([90,90,0])cylinder (h = 340, r=4 , $fn=100);//Y轴左
color("green")
union() {
translate([-130,320,284,])rotate ([90,90,0]) cylinder (h = 340, r=4, $fn=100);//Y轴右
translate([-130,10,284,])rotate ([90,90,0]) cylinder (h = 10, r=8, center = true , $fn=100);
translate([-130,290,284,])rotate ([90,90,0]) cylinder (h = 10, r=8, center = true , $fn=100);
translate([-130,-5,284,])rotate ([90,90,0]) cylinder (h = 10, r=8, center = true , $fn=100);
}
// translate([-130,20,292,])cube(35,center = true);
// translate([130,20,292,])cube(35,center = true);
// translate([-130,280,292,])cube(35,center = true);
// translate([130,280,292,])cube(35,center = true);




translate([-135,180,284,]) rotate ([0,90,0]) cylinder (h = 270, r=4 , $fn=100);
translate([30,285,300,])rotate ([90,90,0])cylinder (h = 270, r=4 , $fn=100);
translate([-130,180,284,])cube(35,center = true);
translate([30,20,300,])cube(35,center = true);
translate([130,180,284,])cube(35,center = true);
translate([30,280,300,])cube(35,center = true);


difference() { //挤出头滑块
color("blue") translate([40,190,292,])cube(45,center = true);
translate([50,200,250,]) cylinder (h = 90, r=6, $fn=100);
}