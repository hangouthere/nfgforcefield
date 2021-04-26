## Onto the next one (maybe?)

# Deduct 1 from #_demolish_search_count
scoreboard players remove #_demolish_search_count ff_calcs 1

# Copy head to tail...
execute if data storage nfg:forcefield operations.delete[0] run data modify storage nfg:forcefield operations.delete append from storage nfg:forcefield operations.delete[0]

# Delete head to index to the next one
execute if data storage nfg:forcefield operations.delete[0] run data remove storage nfg:forcefield operations.delete[0]

# If we haven't hit our last index (ie, 0), keep looping!
execute unless score #_demolish_search_count ff_calcs matches 0 run function nfg_forcefield:corners/configured/orphaned/find_deleted_id
