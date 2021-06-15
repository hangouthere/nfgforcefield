execute if score #DEBUG ff_calcs matches 10 run say ----------- Tick

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
# #_scan_count_ff - Count total of ForceFields for a given Scan cycle
# #_scan_count_player - Count total of Players for a given Scan cycle
# #_scan_idx_ff - Current iteration Index of ForceFields
# #_scan_idx_player - Current iteration Index of Players
# #_scan_state - Enum State for scanning state.
#   1 = Initialized/No More FF to Search (need to reset loop)
#       - Represented as >= 2 to cover uninit'd scenarios
#   2 = Searching Mobs for a Player (Currently Processing a Player Thread)
#   3 = No More Mobs to Search for Current Player (need to loop to next Player)
#   4 = No More Players to Search (need to loop to next FF)

# Cleanup Overlap Suspend Errors
function nfg_forcefield:scanning/process/loop/cleanup_suspend_errors

# Reset if not processing anymore (or initialized)
execute unless score #_scan_state ff_calcs matches 2.. run function nfg_forcefield:scanning/process/loop/reset_scan

# Scan State = 4
execute if score #_scan_state ff_calcs matches 4 run function nfg_forcefield:scanning/process/loop/forcefield

# Scan State = 3
execute if score #_scan_state ff_calcs matches 3 run function nfg_forcefield:scanning/process/loop/players

# Scan at a Player is in-progress, continue next batch on this tick
execute if score #_scan_state ff_calcs matches 2 as @p[tag=ff_thread_start] at @s run function nfg_forcefield:scanning/process/loop/process_thread

# Perform Zaps!
execute as @e[scores={ff_scan_kill=1..}] at @s run function nfg_forcefield:scanning/process/zap_entity

execute if score #DEBUG ff_calcs matches 10 run tellraw @a ["State: ", {"score":{"name": "#_scan_state","objective": "ff_calcs"}}]
