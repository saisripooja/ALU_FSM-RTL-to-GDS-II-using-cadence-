add_ndr -width {M1 0.14 M2 0.14 M3 0.14 M4 0.14 M5 0.14 M6 0.14 M7 0.14 M8 0.14 M9 0.14} \
        -spacing {M1 0.12 M2 0.14 M3 0.14 M4 0.14 M5 0.14 M6 0.14 M7 0.14 M8 0.14 M9 0.14} \
        -name 2w2s

create_route_type -name clkroute -non_default_rule 2w2s -bottom_preferred_layer M5 -top_preferred_layer M6

set_ccopt_property route_type clkroute -net_type trunk
set_ccopt_property route_type clkroute -net_type leaf

set_ccopt_property buffer_cells {CLKBUF12 CLKBUF4X12}
set_ccopt_property inverter_cells {CLKINV8 CLKINVX12}
set_ccopt_property clock_gating_cells TLATNTSCA*
create_ccopt_clock_tree_spec -file ccopt_output.spec
source ccopt_output.spec
ccopt_design -cts
SaveDesign DBS/cts.enc

report_ccopt_clock_trees -file clk_trees.rpt
report_ccopt_skew_groups -file skew_groups.rpt 