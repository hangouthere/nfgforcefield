## Onto the next one (maybe?)

# Deduct 1 from #_demo_find_id
scoreboard players remove #_demo_find_id _ff_calcs 1

# Copy head to tail...
execute if data storage nfg:forcefield _scan.deleted[0] run data modify storage nfg:forcefield _scan.deleted append from storage nfg:forcefield _scan.deleted[0]

# Delete head to index to the next one
execute if data storage nfg:forcefield _scan.deleted[0] run data remove storage nfg:forcefield _scan.deleted[0]

# If we haven't hit our last index (ie, 0), keep looping!
execute unless score #_demo_find_id _ff_calcs matches 0 run function nfg_forcefield:corners/configured/orphaned/find_deleted_id
