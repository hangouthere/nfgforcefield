## Onto the next one (maybe?)

function nfg_forcefield:ff_search/loop_ff

# If we haven't hit our last index (ie, 0), keep looping!
execute unless score #_search_count_list ff_calcs matches 0 run function nfg_forcefield:ff_search/by_ff_id/search
