# Process the current FF on the top of the list, then remove it...
# If there's data in the first item still (ie, items shifted), it'll re-run after all players have been processed

# Set current item in memory by copying current index
data modify storage nfg:forcefield scanner.current set from storage nfg:forcefield scanner.list[0]
# Reset Player Count to number of Players (but only if powered... if not, this will end up being skipped)
execute store result score #_scan_player_idx ff_calcs run execute if entity @a

## Iterate ForceField numbers/data
# Delete self in list, and if an item shifted in place then this will re-run on another tick
data remove storage nfg:forcefield scanner.list[0]
# Count down scanning ForceField by 1
scoreboard players remove #_scanff_idx ff_calcs 1

# Scan mobs as new since we're testing a different FF now
tag @e remove ff_processed
# Scan players as new since we're testing a different FF now
tag @a remove ff_thread_start
tag @a remove ff_thread_processed

## Utilize Offsets to initially calculate hitbox in Track Zone's Local Space
# Set in1 at Local Origin (0,0,0)
scoreboard players set in1_x nfg_util 0
scoreboard players set in1_y nfg_util 0
scoreboard players set in1_z nfg_util 0

# Set Scan State to Iterate Players
scoreboard players set #_scan_state ff_calcs 1

# Setup Vars for Protection Types
execute store result score #modeProtBuildScan ff_calcs run data get storage nfg:forcefield scanner.current.protections.building
execute store result score #modeProtMobScan ff_calcs run data get storage nfg:forcefield scanner.current.protections.mob

