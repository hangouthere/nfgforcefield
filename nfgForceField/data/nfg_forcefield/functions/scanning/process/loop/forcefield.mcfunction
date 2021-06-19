execute if score #DEBUG ff_calcs matches 10 run say ~~ Loop FF

# Process the current FF on the top of the list, then remove it...
# If there's data in the first item still (ie, items shifted), it'll re-run after all players have been processed

# Set current item in memory by copying current index
data modify storage nfg:forcefield scanner.current set from storage nfg:forcefield scanner.list[0]
# Reset Player Count to number of Players (but only if powered... if not, this will end up being skipped)
execute store result score #_scan_count_player ff_calcs run execute if entity @a
execute store result score #_scan_idx_player ff_calcs run execute if entity @a

## Iterate ForceField numbers/data
# Delete self in list, and if an item shifted in place then this will re-run on another tick
data remove storage nfg:forcefield scanner.list[0]
# Count down scanning ForceField by 1
scoreboard players remove #_scan_idx_ff ff_calcs 1

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

# Setup Vars for Protection Types
execute store result score #modeProtBuildScan ff_calcs run data get storage nfg:forcefield scanner.current.protections.building
execute store result score #modeProtMobScan ff_calcs run data get storage nfg:forcefield scanner.current.protections.mob

# Get FF ID and store it for further evaluation
execute store result score #scan_ffId ff_calcs run data get storage nfg:forcefield scanner.current.IDs.ff

# Increment the Player Count to fix Loop Index process...
# Basically, the first thing it'll do is idx--, which won't be accurate for the first iteration
scoreboard players add #_scan_idx_player ff_calcs 1

# Set Scan State to Iterate Players, or reset loop if there are no more FF's
execute if score #_scan_idx_ff ff_calcs matches 1.. run scoreboard players set #_scan_state ff_calcs 3
execute if score #_scan_idx_ff ff_calcs matches 0 run scoreboard players set #_scan_state ff_calcs 1

execute if score #DEBUG ff_calcs matches 10 if score #_scan_state ff_calcs matches 3 run tellraw @a ["Processing FF IDX: ", {"score":{"name": "#_scan_idx_ff","objective": "ff_calcs"}}]
execute if score #DEBUG ff_calcs matches 10 if score #_scan_state ff_calcs matches 3 run tellraw @a ["Processing Num Players: ", {"score":{"name": "#_scan_count_player","objective": "ff_calcs"}}]

execute if score #DEBUG ff_calcs matches 10 if score #_scan_idx_ff ff_calcs matches 1.. run say Should Continue to Proc Players
execute if score #DEBUG ff_calcs matches 10 if score #_scan_idx_ff ff_calcs matches 0 run say No more FF, Need to reset...
