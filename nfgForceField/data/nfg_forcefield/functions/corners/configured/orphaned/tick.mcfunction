data modify storage nfg:forcefield operations.meta.list set from storage nfg:forcefield operations.delete
data modify storage nfg:forcefield operations.meta.target set from entity @s ArmorItems[0].tag

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:corners/find_by_id/search

# Found that we match as orphaned!
execute if data storage nfg:forcefield operations.meta.found_ff run function nfg_forcefield:corners/configured/orphaned/destroy_orphan

function nfg_forcefield:corners/find_by_id/cleanup_meta
