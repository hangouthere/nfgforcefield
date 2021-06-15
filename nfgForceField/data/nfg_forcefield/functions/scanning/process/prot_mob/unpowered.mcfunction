tag @s add ff_thread_processed

# Skip FF entirely and move to next one!
scoreboard players set #_scan_state ff_calcs 4

execute if score #DEBUG ff_calcs matches 10 run say Powered off, skipping and looping to next ff?
