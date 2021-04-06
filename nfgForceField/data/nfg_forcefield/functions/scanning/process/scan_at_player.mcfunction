# Scans nearby a player

# Select a limited number of unprocessed-zappable-entities around the player
# Excludes `ff_suspend` mobs
execute as @e[limit=75,distance=..128,type=#nfg_forcefield:zappable,tag=!ff_processed,tag=!ff_suspend,sort=nearest] at @s run function nfg_forcefield:scanning/process/determine_zoning

# No more mobs to kill, mark selves as processed
execute unless entity @e[limit=1,distance=..128,type=#nfg_forcefield:zappable,tag=!ff_processed,tag=!ff_suspend,sort=nearest] run tag @s add ff_thread_processed

# Mark Enum value indicating we're fully processed,
execute if entity @s[tag=ff_thread_processed] run scoreboard players set #_scan_stateMobSearch _ff_calcs 1
