# Detect if player is in the "protect zone", aka, the ForceField + BoundsProtectZoneDistance
execute as @s run function nfg_forcefield:scanning/process/prot_build/zone_test_protect

# Player Entered a Build Protection Zone (and wasn't bound to one before)
execute unless score @s ff_player_bind matches 1.. if score #_hitDetected nfg_calcs matches 1 if entity @s[scores={}] run function nfg_forcefield:scanning/process/prot_build/protect_entering

# Player Leaving the Build Protection Zone (if already bound)
execute if score @s ff_player_bind matches 1.. if score #_hitDetected nfg_calcs matches 0 if entity @s[tag=ff_prot_build] run function nfg_forcefield:scanning/process/prot_build/protect_leaving
