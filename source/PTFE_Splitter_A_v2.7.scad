// PTFE Splitter A v2.7 - screw recess refinement
// Units: mm
// SOURCE OF TRUTH: v2.2 functional geometry.
// Functional geometry remains the proven v2.2 design.
// v2.7 refinement from v2.6:
//   - Reduce M3 screw-head counterbore depth from 2.00 mm to 1.50 mm.
//   - All other v2.6 geometry is unchanged, including 7.10 mm quick-release recesses,
//     4.00 mm PTFE bores, proven v2.2 filament paths, and exterior form.
// Exterior / fastening refinements only:
//   - More rectangular 22 mm-wide body (v2.2 was 24 mm), no aggressive waist/indent.
//   - 1.8 mm bullnose radius on the four long exterior edges; end faces remain flat for fittings.
//   - Input screw remains at v2.2 location.
//   - Output screw moved inward to a better-supported centered location, clear of the filament/PTFE path.
//   - M3 screw-head counterbores added; lower half retains blind self-tapping pilots (no nuts).
// All v2.2 filament-path centerlines, angles, convergence point, channel diameters,
// straightening length and PTFE insertion lengths are preserved. Exterior refinements from v2.4 are preserved.

$fn=28;
halfpart=is_undef(halfpart)?0:halfpart;

L=100;
W=22;
H=9;
edge_r=1.8;

connector_nominal_d=7.0;
connector_recess_d=7.10;
connector_depth=5.0;
ptfe_od_nominal=4.0;
ptfe_guide_d=4.00;
filament_d=2.5;
mid_d=3.6;

yn=4.8;
yt=-4.8;
yo=yt;
input_tube_beyond=10.0;
output_tube_beyond=10.0;
normal_tip=connector_depth+input_tube_beyond;
TPU_tip=normal_tip;
output_tip=L-(connector_depth+output_tube_beyond);
converge_x=output_tip-10.0;

screw1=[9,0];
screw2=[88,1.5];
clear_d=3.2;
pilot_d=2.6;
head_d=6.4;
head_depth=1.5;

module seg(p1,p2,d1,d2){
    hull(){
        translate(p1) sphere(d=d1);
        translate(p2) sphere(d=d2);
    }
}
function ease(t)=0.5-0.5*cos(180*t);
function dia(t)=filament_d+(mid_d-filament_d)*sin(180*t);

module eased(y0,y1,x0,x1,n=18){
    for(i=[0:n-1]){
        t1=i/n; t2=(i+1)/n;
        seg([x0+(x1-x0)*t1, y0+(y1-y0)*ease(t1), 0],
            [x0+(x1-x0)*t2, y0+(y1-y0)*ease(t2), 0],
            dia(t1), dia(t2));
    }
}

module xcyl(x1,x2,y,d){
    translate([x1,y,0]) rotate([0,90,0]) cylinder(h=x2-x1,d=d);
}

module filament_and_connector_cuts(){
    xcyl(0,connector_depth,yn,connector_recess_d);
    xcyl(0,connector_depth,yt,connector_recess_d);
    xcyl(L-connector_depth,L,yo,connector_recess_d);

    xcyl(0,normal_tip,yn,ptfe_guide_d);
    xcyl(0,TPU_tip,yt,ptfe_guide_d);
    xcyl(output_tip,L,yo,ptfe_guide_d);

    eased(yn,yo,normal_tip,converge_x);
    seg([TPU_tip,yt,0],[converge_x-4,yo,0],filament_d,mid_d);
    seg([converge_x-4,yo,0],[converge_x,yo,0],mid_d,filament_d);
    xcyl(converge_x,output_tip,yo,filament_d);
}

module body_solid(){
    hull(){
        for(y=[-W/2+edge_r, W/2-edge_r])
            for(z=[-H/2+edge_r, H/2-edge_r])
                translate([0,y,z]) rotate([0,90,0]) cylinder(h=L,r=edge_r);
    }
}

module base_without_screws(){
    difference(){
        body_solid();
        filament_and_connector_cuts();
    }
}

module lower(){
    difference(){
        intersection(){
            base_without_screws();
            translate([-1,-W,-H/2-.02]) cube([L+2,2*W,H/2+.04]);
        }
        for(p=[screw1,screw2])
            translate([p[0],p[1],-H/2+1.0]) cylinder(h=H/2-1.0+.05,d=pilot_d);
    }
}

module upper(){
    difference(){
        intersection(){
            base_without_screws();
            translate([-1,-W,0]) cube([L+2,2*W,H/2+.02]);
        }
        for(p=[screw1,screw2]){
            translate([p[0],p[1],-.05]) cylinder(h=H/2+.1,d=clear_d);
            translate([p[0],p[1],H/2-head_depth]) cylinder(h=head_depth+.1,d=head_d);
        }
    }
}

if(halfpart==0) union(){ lower(); upper(); }
if(halfpart==1) translate([0,0,H/2]) lower();
if(halfpart==2) translate([0,0,H/2]) rotate([180,0,0]) upper();
