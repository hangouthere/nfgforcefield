# Detect if player is in the "protect zone", aka, the ForceField + BoundsProtectZoneDistance
execute as @s run function nfg_forcefield:scanning/process/prot_build/zone_test_protect

# Player Entered the Build Protection Zone
execute if score #_hitDetected nfg_calcs matches 1 if entity @s[tag=!ff_prot_build] run function nfg_forcefield:scanning/process/prot_build/protect_entering

# Player Leaving the Build Protection Zone
execute if score #_hitDetected nfg_calcs matches 0 if entity @s[tag=ff_prot_build] run function nfg_forcefield:scanning/process/prot_build/protect_leaving
