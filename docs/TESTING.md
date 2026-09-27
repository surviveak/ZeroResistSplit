# Testing Notes — ZeroResistSplit

## Test method

Development used a simple comparative pull-force test:

- A piece of filament was routed through the adapter.
- A hanging scale was attached to the filament.
- The filament was pulled through the path.
- The displayed force was used as a comparative measure of resistance.

This was an informal development test, not a calibrated laboratory friction measurement. Pull speed, filament condition, scale resolution, and hand technique can affect the numbers.

The results are most useful as **relative comparisons between geometries**.

## Baseline results

| Adapter | Path | Approx. pull force |
| --- | --- | ---: |
| Original 2-to-1 | Straight TPU path | ~0.00 lb |
| Bambu Lab 4-to-1 | Curved path | ~0.33 lb |
| Original 2-to-1 | Regular path, ~35° transition | ~0.75 lb |

The original regular path required more than twice the measured force of the Bambu 4-to-1 path in the informal test.

## Design conclusion from baseline testing

The results indicated that path geometry was the dominant problem:

- The straight TPU route had effectively unmeasurable resistance using the scale.
- The short, steep ~35° regular path had the highest resistance.
- A longer, shallower transition was more important than simply changing printed material or polishing the channel.

This led to Prototype A: preserve the straight TPU route and substantially lengthen/soften the regular-filament transition.

## Prototype A / v2.2 result

After correcting the connector/PTFE interfaces and internal path, Prototype A Rev 2 showed a major improvement:

- TPU path: **near-zero resistance**
- Regular-filament path: **near-zero resistance**
- Quick-connect fittings and PTFE fit correctly.
- Filament followed both paths smoothly.

The one remaining feed issue was a small snap as regular filament transitioned into the output PTFE. The filament was still slightly angled when it reached the tube edge.

## Output straightening improvement

To solve the output transition, v2.2 added:

- **10 mm more straight printed filament guide after convergence**
- Output PTFE extension increased to **10 mm beyond the quick-connect fitting**

This gave the regular filament time to straighten before meeting the output PTFE and produced smooth feeding through the final design.

## Final v2.7 behavior

The final printed v2.7 design was reported to have:

- Minimal resistance.
- Smooth TPU feeding.
- Smooth regular-filament feeding.
- Good mechanical fit.
- Secure quick-connect fittings when assembled with a thin layer of adhesive.
- Good results in engineering filament, while remaining printable in PETG or PLA.

## Suggested repeatable test procedure

For future comparisons:

1. Use the same piece/type of filament for each path when possible.
2. Use the same pull distance.
3. Pull at a similar slow, steady speed.
4. Ignore the initial breakaway peak if measuring steady-state drag.
5. Perform at least 5 pulls per path.
6. Record the average and range.
7. Repeat for PLA, PETG, and TPU if comparing material behavior.

A more rigorous future setup could use a fixed-speed motorized pull and a digital force gauge, but that is not necessary for normal validation of this design.
