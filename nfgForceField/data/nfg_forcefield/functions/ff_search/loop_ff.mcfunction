# Deduct 1 from #_search_count_list
scoreboard players remove #_search_count_list ff_calcs 1

# Copy head to tail...
execute if data storage nfg:forcefield operations.meta.search.list[0] run data modify storage nfg:forcefield operations.meta.search.list append from storage nfg:forcefield operations.meta.search.list[0]

# Delete head to index to the next one
execute if data storage nfg:forcefield operations.meta.search.list[0] run data remove storage nfg:forcefield operations.meta.search.list[0]
