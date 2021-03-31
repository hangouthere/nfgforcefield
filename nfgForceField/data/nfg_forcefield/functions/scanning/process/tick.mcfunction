# Scanning Technique:
# If a player is detected, this will run, but we don't yet care about individual players
#TODO: REWRITE
# Loops through each ForceField's data in storage
#   - Preps for calculations for each FF
#   - Each FF is scanned sequentially across ticks
#   - For every player online
#       - Each Player is handled sequentially across ticks
#       - Select all zappable entities within a reasonable distance
#           - Ignores ff_processed
#           - All Mobs near a Player are handled in bundles across ticks
#       - Hit detect on every mob
#           - Determine if in Track Zone
#               - If so, determine if in Kill Zone
#                   - If so, kill
#               - If not, test if in Suspend Zone
#                   - If so, mark as suspended
#                   - If not, assume it's really far, mark as suspended, perma-suspend
# Note: In another sched func, mobs in the Suspend Zone are recycled back
# into the mix to ensure they don't encroach on a ForceField
#######################
# Important vars
# #_scan_ff_count - Scoped Count total of ForceFields for a given Scan cycle
# #_scan_ff_idx - Iteration Countdown for number of ForceFields
# #_scan_player_idx - Iteration Countdown for number of Players
# #_scan_stateMobSearch - Enum State for scanning state. 1 = Searching, 2 = Initialized/Done Searching

execute if score #DEBUG _ff_calcs matches 1 run say [Tick] ---------------------------------

# Cleanup Overlap Suspend Errors
function nfg_forcefield:scanning/process/loop/cleanup_suspend_errors

# Reset if no more ForceFields can be scanned... (Handles initial state, ie: no #_scan_ff_idx)
execute unless score #_scan_stateMobSearch _ff_calcs matches 1 unless score #_scan_ff_idx _ff_calcs matches 1.. run function nfg_forcefield:scanning/process/loop/reset_scan

# Not currently scanning, and All Players were initialized or
# finished a Scan Loop (count = 0), meaning our ForceField is
# fully scanned... Loop to the next one!
execute unless score #_scan_stateMobSearch _ff_calcs matches 1 if score #_scan_player_idx _ff_calcs matches 0 run function nfg_forcefield:scanning/process/loop/forcefield

# Mob Scan is initialized or just finished scanning for a Player (ie, state = 2), so loop to next Player
execute if score #_scan_stateMobSearch _ff_calcs matches 2 run function nfg_forcefield:scanning/process/loop/players

# Scan at a Player is in-progress, continue next batch on this tick
execute if score #_scan_stateMobSearch _ff_calcs matches 1 run function nfg_forcefield:scanning/process/loop/mob_detection

# Perform Zap!
execute as @e[scores={_ff_scan_kill=1..}] at @s run function nfg_forcefield:scanning/process/loop/zap_hostiles
