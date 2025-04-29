#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Apr 25 12:32:37 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
save_global ALU.globals
set init_gnd_net VSS
set init_lef_file {45nm/dig/lef/gsclib045_tech.lef 45nm/dig/lef/gsclib045_macro.lef}
set init_verilog alu_fsm_netlist.v
set init_mmmc_file ALU.view
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 1 0.6 6 6 6 6
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M11 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top M11 bottom M11 left M10 right M10} -width {top 1 bottom 1 left 1 right 1} -spacing {top 1.25 bottom 1.25 left 1.25 right 1.25} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer M11 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer M11 -direction horizontal -width 1 -spacing 1.25 -number_of_sets 7 -start_from bottom -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit M11 -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit M11 -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer M11 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer M10 -direction vertical -width 1 -spacing 1.25 -number_of_sets 7 -start_from left -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit M11 -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit M11 -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
zoomBox -70.47600 2.55300 214.88900 143.42950
zoomBox -52.72300 11.12650 189.83750 130.87150
zoomBox -37.63350 18.41400 168.54350 120.19750
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { M1(1) M11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1(1) M11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1(1) M11(11) }
zoomBox -54.26800 -36.01350 188.29350 83.73200
zoomBox -97.34700 -70.97050 238.37850 94.76750
zoomBox -31.17500 -30.93950 175.00300 70.84450
fit
addEndCap -preCap FILL4 -postCap FILL4 -prefix ENDCAP
zoomBox -62.78200 29.37100 179.77850 149.11600
zoomBox -51.62100 43.78350 154.55600 145.56700
zoomBox -42.13350 56.03450 133.11700 142.55050
zoomBox -34.06950 66.44750 114.89400 139.98650
zoomBox -21.40250 82.82250 86.22400 135.95450
addWellTap -cell FILL4 -cellInterval 60 -prefix WELLTAP
zoomBox -21.40250 61.57050 86.22400 114.70250
zoomBox -21.40250 56.25750 86.22400 109.38950
zoomBox -21.40250 45.63150 86.22400 98.76350
fit
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule VLMDefaultSetup
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
add_ndr -width {M1 0.14 M2 0.14 M3 0.14 M4 0.14 M5 0.14 M6 0.14 M7 0.14 M8 0.14 M9 0.14} -spacing {M1 0.12 M2 0.14 M3 0.14 M4 0.14 M5 0.14 M6 0.14 M7 0.14 M8 0.14 M9 0.14} -name 2w2s
create_route_type -name clkroute -non_default_rule 2w2s -bottom_preferred_layer M5 -top_preferred_layer M6
set_ccopt_property route_type clkroute -net_type trunk
set_ccopt_property route_type clkroute -net_type leaf
set_ccopt_property buffer_cells {CLKBUF12 CLKBUF4X12}
set_ccopt_property inverter_cells {CLKINV8 CLKINVX12}
set_ccopt_property clock_gating_cells TLATNTSCA*
create_ccopt_clock_tree_spec -file ccopt_output.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk true
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner MIN -early -clock_tree clk 0.200
set_ccopt_property target_max_trans_sdc -delay_corner MIN -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner MIN -early -clock_tree clk 0.100
set_ccopt_property source_output_max_trans -delay_corner MAX -early -clock_tree clk 0.100
set_ccopt_property source_output_max_trans -delay_corner MIN -late -clock_tree clk 0.100
set_ccopt_property source_output_max_trans -delay_corner MAX -late -clock_tree clk 0.100
set_ccopt_property clock_period -pin clk 12
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk/SDC -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/SDC true
set_ccopt_property extracted_from_clock_name -skew_group clk/SDC clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/SDC SDC
set_ccopt_property extracted_from_delay_corners -skew_group clk/SDC {MIN MAX}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design -cts
man IMPCCOPT-5053
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 11
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
man IMPCCOPT-4334
get_ccopt_clock_trees
ccopt_design -cts
report_ccopt_clock_trees -file clk_trees.rpt
report_ccopt_skew_groups -file skew_groups.rpt
getCTSMode -engine -quiet
ctd_win -side none -id ctd_window
getAnalysisMode -checkType -quiet
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -late > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt -max_path_num 10000 -updateCategory 0
getAnalysisMode -checkType -quiet
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -early > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt -max_path_num 10000 -updateCategory 0
getAnalysisMode -checkType -quiet
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -late > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt -max_path_num 10000 -updateCategory 0
getAnalysisMode -checkType -quiet
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -early > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt -max_path_num 10000 -updateCategory 0
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report calculator_fsm.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
zoomBox -52.02950 9.87800 190.53100 129.62300
zoomBox -36.66900 16.67800 169.50800 118.46150
zoomBox -23.61200 22.45800 151.63850 108.97400
verifyConnectivity -type all -error 1000 -warning 50
verifyEndCap
zoomBox -17.58350 30.64000 42.64500 104.17850
zoomBox -12.45950 37.59450 38.73500 100.10250
zoomBox -8.10350 43.50600 35.41150 96.63750
zoomBox 1.42050 56.43100 28.14450 89.06100
zoomBox 8.66550 66.17000 22.61600 83.20350
zoomBox 11.26050 69.91050 19.82800 80.37150
zoomBox 11.43550 70.64400 18.71800 79.53600
zoomBox 11.71050 71.80500 16.97250 78.23000
zoomBox 11.81800 72.25850 16.29100 77.72000
zoomBox 12.05800 73.05800 15.29000 77.00450
zoomBox 12.15150 73.37050 14.89900 76.72500
zoomBox 12.35450 74.05800 14.04250 76.11900
zoomBox 12.40300 74.22250 13.83800 75.97450
zoomBox 12.44300 74.38250 13.66300 75.87200
selectObject Pin MULT_TC_OP_g13815__4733/B
deselectAll
selectMarker 12.6600 75.2550 12.7400 75.3750 2 1 25
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
