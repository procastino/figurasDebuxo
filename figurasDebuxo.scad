//figuras para representar en escala
height = 2.4;
//matriz para a separacion fácil
sep = 4;

//maiúscula L
module capitalL(side){
    difference(){
    union(){
    cube([side,2*side,height]);
    cube([3*side,side,height]);
    }
    for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
}
}
}

//unha U
module capitalU(side){
    difference(){
    union(){
    cube([side,2*side,height]);
    cube([3*side,side,height]);
    translate([2*side,0,0]) cube([side,2*side,height]);
    }
    for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
}
}
}
module shape01(side){
    difference(){
    cube([3*side,2*side,height]);
    translate([side,side,0]) cube([side,2*side,height]);
    translate([side,side,0]) rotate([0,0,45]) cube([side,2*side,height]);
    for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
}
}
}
module shape02(side){
    difference(){
    linear_extrude(height) {polygon(points = [[0,0],[3*side,0],[3*side,2*side],[side,side],[0,2*side]]);
    }
    for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
    }
}
}


module curves01(side){
    difference(){
        union(){
    cube([side,2*side,height]);
    translate([side,side,0]) cylinder(r=side,h=height,$fn=60);
        }
        for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
    }
}
}
module curves02(side){
    difference(){
        union(){
    cube([3*side,side,height]);
    translate ([2*side,side,0]) cylinder(r=side,h=height,$fn=60);
        }
        translate ([2*side,side,0]) cylinder(r=side/2,h=height,$fn=60);
         for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
    }
       
    }
}
module curves03(side){
    difference(){
    cube([3*side,2*side,height]);
       translate([0,2*side,0]) cylinder(r=side,h=height, $fn=40);
        translate([2*side,side,0]) cube([side,side,height]);
    for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
    }
}
}
module curves04(side){
    difference(){
        union(){
    translate ([side,0,0])cube([side,2*side,height]);
    translate ([side,side,0]) cylinder(r=side,h=height,$fn=60);
    translate ([2*side,side,0]) cylinder(r=side,h=height,$fn=60);
        }
        translate ([side,side,0]) cylinder(r=side/2,h=height,$fn=60);
        translate ([side,side,0]) cylinder(r=side/2,h=height,$fn=60);
         for (i=[0:sep:2*side]){
    translate([0,i,-sin(45)]) rotate([45,0,0]) cube([3*side,1,1]);
    }
       
    }
    
}
//capitalL(10);
//capitalU(20);
curves01(10);