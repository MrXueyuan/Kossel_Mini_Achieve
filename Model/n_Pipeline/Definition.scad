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
        echo ("\r\nErr: OD can't less ID ! ! !");
    }
}


//Multi-prism (hight,edges,prism)
module Multi_prism (hight,edges,prism) {
    if (prism >= 3) {
        in = (edges * (2* sin ((180*(prism-2))/prism)))/prism;
        translate([0, 0, hight/2]) {
            cylinder (hight,in,in,center=true,$fn=(prism));
        }
        
    }
    else {
        echo ("\r\nErr: Prism can't less then 3 ! ! !");
    }
}
