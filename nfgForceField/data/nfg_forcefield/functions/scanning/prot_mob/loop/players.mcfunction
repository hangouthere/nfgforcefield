# Count down on player count
scoreboard players remove _scan_playerCount _ff_calcs 1
scoreboard players set _scan_stateMobScan _ff_calcs 1

# Mark no players as the current thread start, we're about to pick one
tag @a remove ff_processed_mob_thread_start

# Pick an unprocessed player to start a thread
execute as @a[limit=1,tag=!ff_processed_mob_thread_processed] at @s run tag @s add ff_processed_mob_thread_start

execute if score #DEBUG _ff_calcs matches 1 run tellraw @p [{"text":"Looping to Player: "},{"selector":"@e[tag=ff_processed_mob_thread_start]"}]
