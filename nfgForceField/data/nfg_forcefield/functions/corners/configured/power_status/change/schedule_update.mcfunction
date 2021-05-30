# Setup search data...
data remove storage nfg:forcefield operations.meta
data modify storage nfg:forcefield operations.meta.list set from storage nfg:forcefield ForceFields
data modify storage nfg:forcefield operations.meta.target set from entity @s ArmorItems[0].tag

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:ff_search/by_ids_obj/search

# Found that we match as orphaned!
execute if data storage nfg:forcefield operations.meta.found_ff run function nfg_forcefield:corners/configured/power_status/change/update_ff

function nfg_forcefield:ff_search/cleanup_meta
