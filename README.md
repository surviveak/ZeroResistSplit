# ZeroResistSplit

**ZeroResistSplit** is a low-resistance 2-to-1 filament splitter/merger designed for a dedicated TPU path plus a regular-filament path. The goal was to reduce the drag created by steep PTFE bends and abrupt internal transitions while keeping the assembly compact, printable, and compatible with common 4 mm OD PTFE tubing and the original Bambu Lab 4-to-1 PTFE splitter quick-connect fittings.

The current final prototype is **v2.7**.

## Why this exists

A baseline 2-to-1 splitter used a nearly straight TPU path and a regular-filament path with an approximately 35° transition. Simple pull-force testing showed a large difference:

| Configuration | Path | Approx. pull force |
| --- | --- | ---: |
| Existing 2-to-1 splitter | Straight TPU path | ~0.00 lb |
| Bambu Lab 4-to-1 adapter | Curved path | ~0.33 lb |
| Existing 2-to-1 splitter | ~35° regular path | ~0.75 lb |
| ZeroResistSplit Prototype A v2.2+ | TPU path | Near zero |
| ZeroResistSplit Prototype A v2.2+ | Regular path | Near zero |

These were informal hanging-scale tests, not laboratory measurements. They were used comparatively to guide the design.

## Final design: v2.7

The final design keeps the successful functional geometry developed in Prototype A:

- Straight, low-resistance TPU path.
- Long, shallow regular-filament transition rather than a sharp bend.
- Smooth internal convergence.
- 10 mm straight 2.5 mm guide after the two paths converge so the filament is aligned before entering the output PTFE tube.
- Slightly enlarged internal free-travel region while preserving a 2.5 mm interface at the PTFE tube ends.
- 4.0 mm PTFE tube bores.
- 7.1 mm quick-connect fitting recesses, 5 mm deep.
- PTFE tubing extends 10 mm beyond each quick-connect fitting into the body.
- Rounded/bullnosed exterior edges.
- Two-piece clamshell body.
- M3 screw fastening with recessed hex-head screws and blind self-tapping pilot holes in the mating half.
- No nuts required.

### Final dimensions

- Overall body: **100 x 22 x 9 mm**
- Nominal quick-connect fitting OD: **7.0 mm**
- Printed quick-connect recess: **7.1 mm diameter x 5.0 mm deep**
- PTFE tubing: **4.0 mm OD / approximately 2.5 mm ID**
- PTFE guide bore: **4.0 mm**
- Filament interface diameter: **2.5 mm**
- Enlarged internal guide region: up to approximately **3.6 mm**
- Straight post-convergence alignment section: **10 mm**
- Exterior bullnose radius: **1.8 mm**
- M3 clearance hole: **3.2 mm**
- M3 blind pilot: **2.6 mm**
- Screw-head recess diameter: **6.4 mm**
- Screw-head recess depth: **1.5 mm**

## Files

- `models/PTFE_Splitter_A_v2.7_Half1.stl` — print-ready half 1
- `models/PTFE_Splitter_A_v2.7_Half2.stl` — print-ready half 2
- `source/PTFE_Splitter_A_v2.7.scad` — parametric source used to generate the final STLs
- `docs/DESIGN_SPEC.md` — detailed geometry and design rationale
- `docs/PRINTING_AND_ASSEMBLY.md` — print, hardware, and assembly notes
- `docs/TESTING.md` — pull-force testing notes and results
- `docs/DEVELOPMENT_HISTORY.md` — prototype and revision history

## Printing

The final prototype has been successfully printed and assembled. A stronger engineering filament such as **ABS** is useful for additional toughness, but **PETG or PLA also work** for this application.

A thin layer of glue at the mating/contact points can help keep the assembly extremely tight and can help retain the quick-connect fittings.

See [Printing and Assembly](docs/PRINTING_AND_ASSEMBLY.md) for details.

## Hardware

The tested build reuses the **three PTFE quick-release/quick-connect fittings directly from an original Bambu Lab 4-to-1 PTFE splitter**. The printed recesses were tuned around those actual fittings.

Typical build:

- 3 x PTFE quick-connect fittings removed from a Bambu Lab 4-to-1 PTFE splitter
- 4 mm OD / ~2.5 mm ID PTFE tube
- 2 x M3 hex-head screws
- Optional small amount of adhesive

## Design status

**v2.7 is the current final tested design.** Resistance is minimal on both paths and filament feeds smoothly through both routes.

This project was developed iteratively through physical printing, fit checks, and comparative pull-force testing.
