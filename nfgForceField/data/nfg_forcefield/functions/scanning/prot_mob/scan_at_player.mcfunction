# Scans nearby a player

# Select a limited number of unprocessed-zappable-entities around the player
# Excludes `ff_processed_mob_bounds_exceeded` mobs that have been marked as way too far (recycled at `MobRecycleSeconds _ff_calcs`)
execute as @e[limit=75,distance=..128,type=#nfg_forcefield:zappable,tag=!ff_processed_mob,tag=!ff_processed_mob_bounds_exceeded,sort=nearest] at @s run function nfg_forcefield:scanning/prot_mob/hit_detect

# No more mobs to kill, mark selves as processed
execute unless entity @e[limit=1,distance=..128,type=#nfg_forcefield:zappable,tag=!ff_processed_mob] run tag @s add ff_processed_mob_thread_processed

# Mark Enum value indicating we're fully processed,
execute if entity @s[tag=ff_processed_mob_thread_processed] run scoreboard players set _scan_stateMobScan _ff_calcs 2

