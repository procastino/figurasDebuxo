//fig01();
//translate([22,0,0]) fig02();
//translate([44,0,0])  fig03();
//translate([66,0,0])  fig04();
//translate([0,22,0])  fig05();
//translate([22,22,0])  fig06();
//translate([55,22,0])  fig07();
//translate([0,60,0]) fig08();

fig08();


module fig01(){
linear_extrude(height=20){polygon([[0,0],[20,0],[0,20]]);};}

module fig02(){linear_extrude(height=10){ polygon([[0,0],[20,0],[20,10],[0,20]]);};}

module fig03(){linear_extrude(height=20){ polygon([[0,0],[20,0],[10,10],[0,10]]);};}

module fig04(){union(){
    fig02();
    translate([0,0,10]) cube([20,10,10]);
}
}

module fig05(){linear_extrude(height=20){ polygon([[0,0],[20,0],[20,10],[10,10],[0,20]]);};}

module fig06(){
    difference(){
        cube([30,20,10]);
        translate([10,10,0]) cube([10,10,20]);
    }
}
        
module fig07(){
    difference(){
        cube([30,30,10]);
        translate([10,10,0]) cube([10,10,20]);
    }
}

module fig08(){
    cube([10,20,20]);
    translate ([10,10,0]) cube([10,10,10]);
}


