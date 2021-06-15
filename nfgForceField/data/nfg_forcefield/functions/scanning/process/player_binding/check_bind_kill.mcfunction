# Detect if player is in the Kill Zone, aka, inside the ForceField
function nfg_forcefield:scanning/process/zone_test/kill

# If out of the Kill Zone, but previously bound, we want to clean the Player state up
scoreboard players add @a ff_bind_kill 0
execute if score @s ff_bind_kill = #scan_ffId ff_calcs if score #_hitDetected nfg_util matches 0 run function nfg_forcefield:scanning/process/player_binding/unbind_kill

# If in the Kill Zone, but NOT previously, we start checking for binding process for Configuration
execute unless score @s ff_bind_kill = #scan_ffId ff_calcs if score #_hitDetected nfg_util matches 1 run function nfg_forcefield:scanning/process/player_binding/start_bind_kill
