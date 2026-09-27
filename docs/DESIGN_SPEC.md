# Design Specification — ZeroResistSplit v2.7

## Functional goal

ZeroResistSplit is a 2-to-1 PTFE filament splitter/merger intended to provide:

1. A nearly frictionless straight path for TPU.
2. A low-resistance regular-filament path with a long, shallow transition instead of the approximately 35° bend used by the original reference splitter.
3. Smooth transitions between 4 mm OD PTFE tubing and the printed internal filament guide.
4. A compact, rigid, two-piece body that can be printed on a typical FDM printer and assembled with M3 screws.

The final v2.7 geometry is based on the tested v2.2 functional layout. Later revisions only refined the exterior, connector fit, and screw-head recess.

## Overall envelope

| Parameter | Final value |
| --- | ---: |
| Length | 100 mm |
| Width | 22 mm |
| Height | 9 mm |
| Exterior long-edge bullnose radius | 1.8 mm |

The input and output fitting faces remain flat.

## PTFE and connector interfaces

| Feature | Final value |
| --- | ---: |
| Nominal quick-connect fitting OD | 7.0 mm |
| Printed quick-connect recess | 7.1 mm diameter |
| Quick-connect recess depth | 5.0 mm |
| PTFE tube OD | 4.0 mm |
| PTFE nominal ID | ~2.5 mm |
| Printed PTFE guide bore | 4.0 mm |
| PTFE extension beyond fitting into body | 10 mm on all 3 ports |

The 7.1 mm fitting recess was chosen after physical fit testing. The earlier 7.2 mm recess was slightly too loose and could allow fittings to pull out.

The PTFE bore remains 4.0 mm. It should not be enlarged to solve fitting-fit issues; fitting clearance is controlled separately by the 7.1 mm connector recess.

## Internal filament guide

The 2.5 mm dimension is treated as the required interface size where the printed guide meets the PTFE tube, not as a mandatory diameter through the entire internal path.

| Feature | Final value |
| --- | ---: |
| Filament/PTFE interface diameter | 2.5 mm |
| Maximum enlarged internal guide diameter | ~3.6 mm |
| Straight output alignment section | 10 mm |

The slightly larger internal guide allows the filament to move without unnecessary wall contact while the 2.5 mm interfaces keep the filament centered at the PTFE tube ends.

### Coordinate layout used by the parametric source

The source uses the following path locations in millimeters:

- Regular-filament input centerline: **Y = +4.8**
- TPU input centerline: **Y = -4.8**
- Output centerline: **Y = -4.8**
- End of both input PTFE tubes: **X = 15**
- Path convergence: **X = 75**
- Start/end face of output PTFE guide: **X = 85**
- Output face: **X = 100**

This provides a **10 mm straight 2.5 mm alignment run between X = 75 and X = 85** after convergence and before the filament enters the output PTFE tube.

## Regular-filament path

The regular path transitions from the upper input to the output centerline using a long cosine-eased curve. This provides tangent-like behavior at both ends rather than a sharp change of direction.

The design goal evolved from simply reducing the original ~35° path angle to minimizing total drag over the entire path. Physical testing showed this geometry was more important than forcing a specific theoretical angle.

## TPU path

The TPU path stays aligned with the output centerline and remains effectively straight through the splitter. The printed guide can open slightly in the free-travel region but returns to 2.5 mm at the interfaces.

This preserves the lowest-resistance characteristic observed in the original straight-path testing.

## Convergence and output alignment

A key v2.2 improvement was adding **10 mm of straight guide after the paths converge**. During earlier testing, regular filament could reach the output PTFE while still angled and catch the lower edge of the tube.

The 10 mm straight section allows the filament to straighten and center before entering the output PTFE. This eliminated the noticeable transition snap in testing.

## Fasteners

The body uses two M3 screws with no nuts.

| Feature | Final value |
| --- | ---: |
| Upper-half M3 clearance hole | 3.2 mm |
| Lower-half blind pilot | 2.6 mm |
| Screw-head recess diameter | 6.4 mm |
| Screw-head recess depth | 1.5 mm |
| Input-side screw center | X 9, Y 0 |
| Output-side screw center | X 88, Y +1.5 |

The lower-half pilot holes stop before the outside surface so the M3 screws thread directly into the printed plastic.

The screw locations were chosen to stay away from the filament tracks. Earlier prototype screw locations that intersected the filament path were rejected.

## Exterior refinement

The final exterior was intentionally kept mostly rectangular rather than tightly following the Y-path. The goals were:

- Retain enough material around the screw holes.
- Avoid an awkward isolated output screw boss.
- Keep a clean visual appearance.
- Round the long edges for comfort and appearance.
- Preserve all tested v2.2 functional geometry.

## Source of truth

The final parametric source is:

`source/PTFE_Splitter_A_v2.7.scad`

The final printable parts are:

- `models/PTFE_Splitter_A_v2.7_Half1.stl`
- `models/PTFE_Splitter_A_v2.7_Half2.stl`

The comments in the source file record the design constraints that should remain locked if future revisions are made.
