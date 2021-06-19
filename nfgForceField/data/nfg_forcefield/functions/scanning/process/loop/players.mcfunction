# DEBUG junk
execute if score #DEBUG ff_calcs matches 10 run say $$ Loop Players

# Count down on player count
scoreboard players remove #_scan_idx_player ff_calcs 1

# Mark no players as the current thread start, we're about to pick one
tag @a remove ff_thread_start

# Pick an unprocessed player to start a thread
execute as @a[limit=1,tag=!ff_thread_processed] at @s run tag @s add ff_thread_start

# Set Scan State to Iterate Players, or reset loop if there are no more FF's
execute if score #_scan_idx_player ff_calcs matches 1.. run scoreboard players set #_scan_state ff_calcs 2
execute if score #_scan_idx_player ff_calcs matches 0 run scoreboard players set #_scan_state ff_calcs 4

# DEBUG junk
execute if score #DEBUG ff_calcs matches 10 if score #_scan_state ff_calcs matches 2 run tellraw @a ["Processing Player: ", {"selector":"@e[tag=ff_thread_start]"}]
execute if score #DEBUG ff_calcs matches 10 if score #_scan_state ff_calcs matches 4 run tellraw @a ["No more Players to scan"]

# Start Binding checks as the newly selected Player
execute as @e[tag=ff_thread_start] run function nfg_forcefield:scanning/process/player_binding/scan
