difference(){
    polyhedron(
  points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0], // the four points at base
           [0,0,10]  ],                                 // the apex point 
  faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],              // each triangle side
              [1,0,3],[2,1,3] ]                         // two triangles for square base
 );
    cube(size=4,center=true);
    cylinder(h=40,r=1,center=true);
    cube([2,5,5]);
mirror([1,0,0]) cube([2,3,2]);
mirror([0,1,0]) cube([2,3,2]);
mirror([0,0,1]) cube([2,3,2]);
    }