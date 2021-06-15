# Check if in Bounds, Perim or Volume based on settings
execute if score #modeProtMobScan ff_calcs matches 1 run scoreboard players set #_evalVolume nfg_util 0
execute if score #modeProtMobScan ff_calcs matches 2 run scoreboard players set #_evalVolume nfg_util 1

# Select a limited number of unprocessed-zappable-entities around the player
# Excludes `ff_suspend` mobs
execute as @e[limit=75,distance=..128,type=#nfg_forcefield:zappable,tag=!ff_processed,tag=!ff_suspend,sort=nearest] at @s run function nfg_forcefield:scanning/process/prot_mob/eval_zoning

# No more mobs to kill, mark selves as processed
execute unless entity @e[limit=1,distance=..128,type=#nfg_forcefield:zappable,tag=!ff_processed,tag=!ff_suspend,sort=nearest] run tag @s add ff_thread_processed

# Mark Enum value indicating we're fully processed,
execute if entity @s[tag=ff_thread_processed] run scoreboard players set #_scan_state ff_calcs 3

execute if score #DEBUG ff_calcs matches 10 if entity @s[tag=ff_thread_processed] run say Done scanning FF, moving on?
