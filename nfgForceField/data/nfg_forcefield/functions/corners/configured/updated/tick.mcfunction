data modify storage nfg:forcefield operations.meta.search.list set from storage nfg:forcefield operations.update
data modify storage nfg:forcefield operations.meta.search.target set from entity @s ArmorItems[0].tag

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:ff_search/by_ids_obj/search

# Found that we match as updated! Let's attempt to do said update!
execute if data storage nfg:forcefield operations.meta.search.found_ff run function nfg_forcefield:corners/configured/updated/verify_update

function nfg_forcefield:ff_search/cleanup_meta
