# Process the current FF on the top of the list, then remove it...
# If there's data in the first item still (ie, items shifted), it'll re-run after all players have been processed

# Set current item in memory by copying current index
data modify storage nfg:forcefield scanner.current set from storage nfg:forcefield scanner.list[0]
execute store result score #scan_isFFPowered ff_calcs run data get storage nfg:forcefield scanner.current.protections.powered

# Scan mobs as new since we're testing a different FF now
tag @e remove ff_processed

# Scan players as new since we're testing a different FF now
tag @a remove ff_thread_start
tag @a remove ff_thread_processed

## Iterate ForceField numbers/data
# Delete self in list, and if an item shifted in place then this will re-run on another tick
data remove storage nfg:forcefield scanner.list[0]
# Count down scanning ForceField by 1
scoreboard players remove #_scanff_idx ff_calcs 1

# If the FF is powered, we'll set up the data the way we need to iterate...
execute if score #scan_isFFPowered ff_calcs matches 1 run function nfg_forcefield:scanning/process/loop/forcefield/powered

# If the FF is NOT powered, we set it up to look like this FF is fully processed to skip
execute if score #scan_isFFPowered ff_calcs matches 0 run function nfg_forcefield:scanning/process/loop/forcefield/unpowered
