# Printing and Assembly — ZeroResistSplit v2.7

## Recommended materials

The final prototype works in common FDM materials.

- **ABS:** Recommended when additional toughness and heat resistance are desired.
- **PETG:** A good general-purpose choice and fully suitable for this design.
- **PLA:** Also works for normal use.

A stronger engineering filament is helpful, but it is not required for the splitter to function correctly.

## Print files

Print both halves:

- `models/PTFE_Splitter_A_v2.7_Half1.stl`
- `models/PTFE_Splitter_A_v2.7_Half2.stl`

The two halves are designed to be assembled as a clamshell around the internal paths.

## Hardware

The tested final assembly reuses the **three PTFE quick-release/quick-connect fittings from an original Bambu Lab 4-to-1 PTFE splitter**. They were removed from the existing Bambu unit and installed directly into ZeroResistSplit. The connector recess dimensions in v2.7 were tuned around these parts.

Recommended hardware:

- 3 x original Bambu Lab 4-to-1 PTFE splitter quick-connect fittings
- 4 mm OD / approximately 2.5 mm ID PTFE tubing
- 2 x M3 hex-head screws
- Optional small amount of adhesive

No nuts are required. One printed half has M3 clearance holes; the mating half has blind pilot holes intended for the M3 screws to self-tap into the plastic.

## Fitting and PTFE installation

Each port is designed as:

1. **7.1 mm diameter x 5 mm deep quick-connect fitting recess**
2. **4.0 mm PTFE guide bore**
3. PTFE tubing extending **10 mm past the fitting** into the body
4. Printed filament guide meeting the PTFE at a **2.5 mm filament opening**

The reused Bambu Lab quick-connect fitting has an inserted outside diameter of approximately 7.0 mm. The final printed recess is 7.1 mm after physical fit testing with those original Bambu fittings.

### Important

Do not enlarge the 4.0 mm PTFE bore to compensate for quick-connect fitting fit. The connector recess and PTFE bore serve different functions and should be adjusted independently.

Because the final fit was developed around the original Bambu Lab 4-to-1 fittings, third-party fittings with different outside dimensions may require a connector-recess adjustment.

## Adhesive

A **very thin layer of glue at the contact points** can be used during final assembly.

This was found to help:

- Keep the two halves extremely tight.
- Keep the quick-connect fittings firmly seated.
- Reduce any possibility of movement during filament loading/unloading.

Use only a thin amount so adhesive does not enter the filament tracks, PTFE bores, or quick-connect mechanisms.

## Screws

The final design uses **M3 hex-head screws**.

- Upper-half clearance: 3.2 mm
- Lower-half blind pilot: 2.6 mm
- Head recess: 6.4 mm diameter x 1.5 mm deep

Tighten only enough to close the seam and hold the assembly securely. Over-tightening can strip a printed pilot hole or deform the body.

## Fit checks before use

Before installing the splitter on a printer:

1. Confirm all three quick-connect fittings seat fully and do not wobble.
2. Confirm the PTFE tubes extend through their guide bores and reach the internal termination points.
3. Close the two halves and confirm the seam closes fully.
4. Install and tighten the two M3 screws.
5. Manually push a piece of rigid filament through the regular path.
6. Manually push TPU through the straight TPU path.
7. Confirm both filaments pass through the output PTFE without catching.

The final design should feel smooth through both paths with minimal resistance.

## Surface finish

The tested design performed well directly from the printer. If desired, exposed internal guide surfaces can be lightly smoothed before assembly, but avoid changing the 2.5 mm PTFE-interface geometry.

The largest resistance reduction came from the path geometry rather than from exotic low-friction materials or coatings.
