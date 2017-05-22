$fn=64;
E3Dv5_Heatsink();

module E3Dv5_Cutout (){
  union(){
    translate([0,0,-3.7])
      cylinder(d=16,h=3.7);
    translate([0,0,-9.3])
      cylinder(d=12,h=5.6);
    translate([0,0,-18.3])
      cylinder(d=16,h=9);
    translate([0,0,-50.1])
      cylinder(d=25,h=31.8);
  }
}


module E3Dv5_Heatsink (){
  union(){
    translate([0,0,-3.7])
      cylinder(d=16,h=3.7);
    translate([0,0,-9.3])
      cylinder(d=12,h=5.6);
    translate([0,0,-12.3])
      cylinder(d=16,h=3);
    translate([0,0,-14.6])
      cylinder(d=9,h=2.3);
    translate([0,0,-16.1])
      cylinder(d=16,h=1.5);
    for(i=[1:10]){
      translate([0,0,-14.9-3.4*i])
        cylinder(d=9+(i>4?3:0)+(i>5?3:0),h=2.2);
      translate([0,0,-16.1-3.4*i])
        cylinder(d=25,h=1.2);
    }
  }
}

module E3Dv5 (){
    union(){
      translate([0,0,-3.7])
        cylinder(d=16,h=3.7);
      translate([0,0,-9.3])
        cylinder(d=12,h=5.6);
      translate([0,0,-12.3])
        cylinder(d=16,h=3);
      translate([0,0,-14.6])
        cylinder(d=9,h=2.3);
      translate([0,0,-16.1])
        cylinder(d=16,h=1.5);
      for(i=[1:10]){
        translate([0,0,-14.9-3.4*i])
          cylinder(d=9+(i>4?3:0)+(i>5?3:0),h=2.2);
        translate([0,0,-16.1-3.4*i])
          cylinder(d=25,h=1.2);
      }
    translate([0,0,-50.1-2.1])
      cylinder(d=2.95,h=2.1);
    translate([0,5.5,-50.1-2.1-11.5/2])
      cube([16,20,11.5],center=true);
    translate([0,0,-50.1-2.1-11.5-3])
      cylinder(d=7/sin(60),h=3,$fn=6);
    translate([0,0,-50.1-2.1-11.5-3-2])
      cylinder(d1=1,d2=3.8,h=2);
    translate([0,7,-50.1-2.1-11.5/2])
      rotate([0,90,0])
        cylinder(d=6,h=20,center=true);
  }
}