###################
## Scan for Player in Protect Zone
## This Zone is extra protection buffer around the ForceField to avoid 5-block,
## or explosion radius damage to the perimeter and corners.

# Detect if player is in the "kill zone", aka, the ForceField
execute as @s run function nfg_forcefield:scanning/process/prot_build/zone_test_protect

# Player Entered the Build Protection Zone
execute if score #_hitDetected _nfg_calcs matches 1 if entity @s[tag=!ff_prot_build] run function nfg_forcefield:scanning/process/prot_build/protect_entering

# Player Leaving the Build Protection Zone
execute if score #_hitDetected _nfg_calcs matches 0 if entity @s[tag=ff_prot_build] run function nfg_forcefield:scanning/process/prot_build/protect_leaving
