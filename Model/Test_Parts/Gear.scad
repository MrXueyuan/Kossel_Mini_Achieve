r=13.5;
for(g=[0:1:3600]){
translate([cos(g)*r,sin(g)*r,(g)/100])
rotate(a=[93,0,g])
cylinder(1,1,1,center=true,$fn=3);
}