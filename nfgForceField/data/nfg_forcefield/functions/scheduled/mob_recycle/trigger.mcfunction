# Scanning: Scheduled Mob Recycle Trigger
# Triggers when we've waited the expected duration to recycle mobs

# Re-allow Mobs in future scans
tag @e[type=#nfg_forcefield:zappable] remove ff_processed_mob_bounds_exceeded

# Reset count to do it again...
scoreboard players set #_MobRecycleSeconds_count _ff_calcs 0
