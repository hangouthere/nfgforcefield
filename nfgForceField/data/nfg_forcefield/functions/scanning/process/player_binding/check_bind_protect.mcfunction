# DEBUG junk
execute if score #DEBUG ff_calcs matches 10 run say Checking Binding

# Detect if player is in the Protection Zone
function nfg_forcefield:scanning/process/zone_test/protect

# If out of the Protection Zone, but previously bound, we want to clean the Player state up
scoreboard players add @a ff_bind_prot 0
execute if score @s ff_bind_prot = #scan_ffId ff_calcs if score #_hitDetected nfg_util matches 0 run function nfg_forcefield:scanning/process/player_binding/unbind_protect

# If in the Protection Zone, NOT bound to this FF, we start binding process for various processes and further checks
execute unless score @s ff_bind_prot = #scan_ffId ff_calcs if score #_hitDetected nfg_util matches 1 run function nfg_forcefield:scanning/process/player_binding/start_bind_protect

# If in the Protection Zone, and the Owner(or in Creative Mode), we start checking for binding process for Kill Zone (for Config/etc)
execute if entity @s[tag=ff_owner] run function nfg_forcefield:scanning/process/player_binding/check_bind_kill
execute if entity @s[gamemode=creative,tag=!ff_owner] run function nfg_forcefield:scanning/process/player_binding/check_bind_kill
# Edge Case for Creative -> Survival | Stranger transition
execute if score @s ff_bind_kill = #scan_ffId ff_calcs if entity @s[gamemode=!creative,tag=!ff_owner] run function nfg_forcefield:scanning/process/player_binding/unbind_kill

# DEBUG junk
execute if score #DEBUG ff_calcs matches 10 if entity @s[tag=ff_owner] run say I'm the Owner
execute if score #DEBUG ff_calcs matches 10 if entity @s[tag=ff_ally,tag=!ff_owner] run say I'm an Ally
execute if score #DEBUG ff_calcs matches 10 if entity @s[tag=ff_stranger] run say I sneaky snek Stranger
