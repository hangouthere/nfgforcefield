# Count down on player count
scoreboard players remove #_scan_player_idx ff_calcs 1
scoreboard players set #_scan_state ff_calcs 2

# Mark no players as the current thread start, we're about to pick one
tag @a remove ff_thread_start

# Pick an unprocessed player to start a thread
execute as @a[limit=1,tag=!ff_thread_processed] at @s run tag @s add ff_thread_start
