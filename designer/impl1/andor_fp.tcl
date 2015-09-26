new_project \
    -name {andor} \
    -location {C:\Actelprj\andor\designer\impl1\andor_fp} \
    -mode {single}
set_device_type -type {A2F200M3F}
set_device_package -package {484 FBGA}
update_programming_file \
    -feature {prog_fpga:on} \
    -fdb_source {fdb} \
    -fdb_file {C:\Actelprj\andor\designer\impl1\andor.fdb} \
    -feature {prog_from:off} \
    -feature {prog_nvm:off} \
    -pdb_file {C:\Actelprj\andor\designer\impl1\andor_fp\andor.pdb}
set_programming_action -action {PROGRAM}
catch {run_selected_actions} return_val
save_project
close_project
if { $return_val != 0 } {
  exit 1 }
