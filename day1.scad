//$fn = 6;
//circle(10);

//square(10, center=true);

//square([10,20], center=true);

//translate([10,20,0]){
//        circle(10, $fn=3);
//}
//square(20);

//rotate([0,30,45]){
//    translate([0,20,0]) square(10);
//}

//linear_extrude(height=50, twist=270, $fn=100){
//    circle(10, $fn=3);
//}

//linear_extrude(height=50, twist=270, $fn=100){
//    translate([20,0,0])
//    circle(10, $fn=100);
//}

//linear_extrude(height=10)
//difference(){
//    offset(r=5, $fn=100)
//    square(10, center=true);
//    square(10, center=true);
//}

//hull(){
//    #circle(10);
//    #translate([50,0,0])
//    circle(10);
//    #translate([0,50,0])
//    circle(10);
//}

//difference(){
//    cube([10,20,30], center=true);
//    cylinder(40, 10, 2,  $fn=100, center=true);
//}

//translate([0,0,20]) intersection(){
//    #cube(20,40,20, center=true); #cylinder(40,2,20,center=true);
//}

//size=50;
//k=0.5;
//
//difference(){
//    cube(size, center=true);
//    cylinder(size+0.1,size*k,size*k, center=true);
//}

h=15;
H=50;
R=20;
r=15;
space=0.2;

difference(){
    difference(){
        translate([-(R+2.5),-(R+2.5),0])
        cube([2*R+5,2*R+5,h+H]);
        {
            $fn=100;
            cylinder(h, R+space, R+space);
            translate([0,0,h]) cylinder(H,r+space,r+space);}
    }
    translate([0,0,h]) linear_extrude(height=H, twist=20000) translate([0.5,0,0])circle(r);
}
