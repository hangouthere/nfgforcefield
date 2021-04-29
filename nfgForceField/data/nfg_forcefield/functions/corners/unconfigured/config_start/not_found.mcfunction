## Onto the next one (maybe?)

# Deduct 1 from #_create_search_count
scoreboard players remove #_create_search_count ff_calcs 1

# Copy head to tail...
execute if data storage nfg:forcefield operations.create[0] run data modify storage nfg:forcefield operations.create append from storage nfg:forcefield operations.create[0]

# Delete head to index to the next one
execute if data storage nfg:forcefield operations.create[0] run data remove storage nfg:forcefield operations.create[0]

# If we haven't hit our last index (ie, 0), keep looping!
execute unless score #_create_search_count ff_calcs matches 0 run function nfg_forcefield:corners/unconfigured/config_start/find_created_id
