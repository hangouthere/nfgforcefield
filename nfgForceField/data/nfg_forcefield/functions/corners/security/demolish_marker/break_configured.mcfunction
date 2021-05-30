data modify storage nfg:forcefield operations.meta.list set from storage nfg:forcefield ForceFields
data modify storage nfg:forcefield operations.meta.target set from entity @s ArmorItems[0].tag

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:ff_search/by_ids_obj/search

# Found the associated ForceField data, so let's destroy it
execute if data storage nfg:forcefield operations.meta.found_ff run function nfg_forcefield:corners/security/demolish_marker/schedule_delete

# Give the player back the pieces
function nfg_forcefield:inventory/give_corners

# Clean up detection state
function nfg_forcefield:ff_search/cleanup_meta
