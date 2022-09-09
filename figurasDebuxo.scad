//figuras para representar en escala
height = 2.5;
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


//capitalL(10);

//capitalL(40);
capitalU(20);
