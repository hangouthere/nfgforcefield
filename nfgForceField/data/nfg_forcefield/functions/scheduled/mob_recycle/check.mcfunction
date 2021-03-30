# Scheduled: Mob Recycle
# Based on settings, re-introduce mobs into the scan cycles in case they wander closer

execute if score #_MobRecycleSeconds_count _ff_calcs >= MobRecycleSeconds _ff_calcs run function nfg_forcefield:scheduled/mob_recycle/trigger

# Increment loop
scoreboard players add #_MobRecycleSeconds_count _ff_calcs 1

schedule function nfg_forcefield:scheduled/mob_recycle/check 1s replace
