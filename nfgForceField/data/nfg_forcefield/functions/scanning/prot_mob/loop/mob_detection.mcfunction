# Loop Mob Detection
# Processes Mob Detection from last `ff_processed_mob_thread_start` (aka, player marked as current mob scanning thread)
# This is a kickoff from a tick, so we initiate executor and location as the player selected

# Scan from current Mob Thread Starter
execute as @e[tag=ff_processed_mob_thread_start] at @s run function nfg_forcefield:scanning/prot_mob/scan_at_player

execute if score #DEBUG _ff_calcs matches 1 run tellraw @p [{"text":"Looping Mob Scan at Player: "},{"selector":"@e[tag=ff_processed_mob_thread_start]"}]
