# Loop Mob Detection
# Processes Mob Detection from last `ff_thread_start` (aka, player marked as current mob scanning thread)
# This is a kickoff from a tick, so we initiate executor and location as the player selected

# Scan from current Mob Thread Starter
execute as @p[tag=ff_thread_start] at @s run function nfg_forcefield:scanning/process/scan_at_player
