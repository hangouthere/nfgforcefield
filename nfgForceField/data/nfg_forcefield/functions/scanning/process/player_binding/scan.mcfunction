# Determine shape for volume evals
function nfg_forcefield:scanning/process/zone_test/determine_shape

# Check if we need to Bind to the Protection Zone
execute unless score @s ff_bind_prot matches 1.. run function nfg_forcefield:scanning/process/player_binding/check_bind_protect
execute if score @s ff_bind_prot = #scan_ffId ff_calcs run function nfg_forcefield:scanning/process/player_binding/check_bind_protect
