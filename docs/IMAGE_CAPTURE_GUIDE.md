# Optional visual evidence to capture

Your repository already contains **real** layout screenshots, Yosys SVGs, and a VCD-derived simulation figure. The following are optional additions, not missing implementation steps.

## GTKWave

From the project root run `gtkwave sim/tb_counter4.vcd`. Add `clk`, `rst_n`, `en`, `load`, `d`, `q`, and `overflow` and zoom to the counter rollover. Capture the actual application window as `images/gtkwave_counter4.png`. Do not relabel the existing VCD-derived plot as a GTKWave screenshot.

## KLayout

Run `klayout results/counter4.gds`. Export a full-chip image with layers visible, then a closer view showing cell rows and routed geometry. These images are **already included** as `counter4_full_layout.png` and `counter4_zoomed_layout.png`.

## OpenROAD / verification

If the historical `runs/` directory is still available, use its intermediate ODB/DEF and reports to capture: floorplan, placement, CTS, routed metal, setup/hold summary, DRC/LVS summary, and completion terminal. Label each with its run and stage. If unavailable, do not imply the screenshots exist; the final metrics and views already document the result.
