execute if score #DEBUG _ff_calcs matches 1 run tellraw @a ["Loop Player ## ", {"score":{"name":"#_scan_player_idx","objective":"_ff_calcs"}}]

# Count down on player count
scoreboard players remove #_scan_player_idx _ff_calcs 1
scoreboard players set #_scan_stateMobSearch _ff_calcs 1

# Mark no players as the current thread start, we're about to pick one
tag @a remove ff_thread_start

# Pick an unprocessed player to start a thread
execute as @a[limit=1,tag=!ff_thread_processed] at @s run tag @s add ff_thread_start
