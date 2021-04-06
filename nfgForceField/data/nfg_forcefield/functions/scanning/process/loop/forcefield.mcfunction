# Process the current FF on the top of the list, then remove it...
# If there's data in the first item still (ie, items shifted), it'll re-run after all players have been processed

# Set current item in memory by copying current index
data modify storage nfg:forcefield _scan.current set from storage nfg:forcefield _scan.ForceFields[0]

# Scan mobs as new since we're testing a different FF now
tag @e[tag=!ff_bounds_track_in,tag=!ff_bounds_kill_in] remove ff_processed

# Scan players as new since we're testing a different FF now
tag @a remove ff_thread_start
tag @a remove ff_thread_processed

## Utilize Offsets to initially calculate hitbox in Track Zone's Local Space
# Set in1 at Local Origin (0,0,0)
scoreboard players set in1_x _nfg_calcs 0
scoreboard players set in1_y _nfg_calcs 0
scoreboard players set in1_z _nfg_calcs 0

## Iterate ForceField numbers/data
# Delete self in list, and if an item shifted in place then this will re-run on another tick
data remove storage nfg:forcefield _scan.ForceFields[0]
# Count down scanning ForceField by 1
scoreboard players remove #_scan_ff_idx _ff_calcs 1
# Reset Player Count to number of Players
execute store result score #_scan_player_idx _ff_calcs run execute if entity @a
