# Scanning: Scheduled Mob Recycle Trigger
# Triggers when we've waited the expected duration to recycle mobs

# Mark semaphore that MobRecycle triggered, and upon next Scan Process it will recycle the mobs
scoreboard players set #_MobRecycle_triggered _ff_calcs 1

# Reset count to do it again...
scoreboard players set #_MobRecycleSeconds_count _ff_calcs 0
