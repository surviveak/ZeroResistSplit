# Development History

This document summarizes the design path that led to the final ZeroResistSplit v2.7.

## Starting point

The original 2-to-1 adapter was approximately 40 mm long and had:

- A straight/direct TPU path that worked extremely well.
- A regular-filament path with an approximately 35° transition.
- Considerably more drag on the regular path.

Informal pull-force results:

- Straight TPU path: ~0.00 lb
- Regular ~35° path: ~0.75 lb
- Bambu Lab 4-to-1 comparison: ~0.33 lb

The goal became preserving the straight TPU path while giving the regular path a much longer, shallower transition.

## Early concept work

Two concepts were considered:

### Prototype A — straight TPU path

- Keep TPU aligned directly with the output.
- Use available body length to soften the regular-filament transition.
- Preserve the lowest possible TPU resistance.

### Prototype B — symmetric bends

- Bend both input paths slightly toward a centered output.
- Split the total directional change between the two paths.

Testing Prototype A showed such low resistance on both paths that Prototype B was no longer necessary.

## Prototype A — first physical test

The first printed prototype demonstrated that the filament-path concept felt correct, but exposed several mechanical problems:

- Missing PTFE insertion/guide features.
- Screw holes crossed the filament tracks.
- Quick-connect fitting recess geometry was incorrect.

These were corrected rather than changing the promising path geometry.

## Interface corrections

Measured/confirmed hardware dimensions:

- PTFE OD: 4.0 mm
- PTFE ID: approximately 2.5 mm
- Quick-connect inserted OD: approximately 7.0 mm
- Quick-connect insertion depth: 5 mm

The design was updated so the PTFE tube, not an oversized printed void, continues beyond the fitting before meeting the internal filament guide.

Final concept:

`quick-connect recess -> 4 mm PTFE bore -> 2.5 mm filament interface -> enlarged internal guide`

## v2.1 / Rev 2 functional breakthrough

With the corrected fittings and tube guides:

- Hardware fit properly.
- TPU resistance remained near zero.
- Regular-path resistance also became near zero.

This validated the long, shallow regular-filament path.

## v2.2 — output transition refinement

A minor catch remained when regular filament entered the output PTFE. It approached the tube slightly angled and could touch the lower edge.

Changes:

- Added 10 mm of straight 2.5 mm guide after convergence.
- Increased output PTFE extension to 10 mm beyond its quick-connect fitting.
- Changed screw design so M3 screws pass through one half and self-tap into blind pilots in the other half.
- No nuts required.

This became the frozen functional baseline.

## Exterior refinements

After v2.2 worked well, development shifted to aesthetics and packaging while preserving the internal geometry.

Requested exterior direction:

- More rectangular body.
- Rounded/bullnosed edges.
- Avoid dramatic side indentation.
- Recess M3 screw heads.
- Keep screw placement away from filament tracks.
- Move output screw into a better-supported location.

The functional v2.2 path geometry remained locked.

## v2.4

Exterior was narrowed to 22 mm and given 1.8 mm bullnose edges. The output screw position was improved and head recesses were added.

An attempted 4.2 mm PTFE guide tolerance was rejected because the fit issue was actually at the quick-connect fittings, not the PTFE tube.

## v2.5

- PTFE guide returned to the correct 4.0 mm diameter.
- Quick-connect recess increased to 7.2 mm for fit testing.

The overall design was the best version at that point, but the quick-connect recess was slightly too loose.

## v2.6

- Quick-connect recess reduced to 7.1 mm.
- Screw-head recess depth reduced to 2.0 mm.

Everything else remained unchanged.

## v2.7 — final

Final minor adjustment:

- Screw-head recess depth reduced from 2.0 mm to **1.5 mm**.

Final tested notes:

- Design printed successfully.
- Minimal resistance on both paths.
- ABS is useful for a stronger engineering build, but PETG and PLA are also suitable.
- A thin layer of glue at contact points helps keep the body and quick-connect fittings extremely secure.
- M3 hex-head screws are used.

v2.7 is the current final design.
