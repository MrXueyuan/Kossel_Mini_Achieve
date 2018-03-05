//Three_Prism (hight,edges)
module Three_Prism (hight,edges) {
    in = (edges * (2* sin (60)))/3;
    translate([0, 0, hight/2]) {
        cylinder (hight,in,in,center=true,$fn=3);
    }
}

