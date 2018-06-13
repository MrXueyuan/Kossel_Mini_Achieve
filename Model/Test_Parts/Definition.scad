//Three_Prism (hight,edges)
module Three_Prism (hight,edges) {
    in = (edges * (2* sin (60)))/3;
    translate([0, 0, hight/2]) {
        cylinder (hight,in,in,center=true,$fn=3);
    }
}

//Rod (长，外径，内径)
module Rod (length,OD,ID) {
    if (OD > ID) {
        difference () {
            cylinder (length,OD,OD,center=true,$fn=16);
            cylinder (length,ID,ID,center=true,$fn=16);
        }
    }
    else {
        echo ("Err: OD can't less ID ! ! !");
    }
}



