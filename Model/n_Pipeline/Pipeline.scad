
module Pipeline (length) {
    difference () {
        cube(size=[12.2, 12.2, length], center=true);
        cube(size=[12, 12, length], center=true);
    }
}

module main() {
    Pipeline (8)
        sphere(1,center = true);
}

main ();