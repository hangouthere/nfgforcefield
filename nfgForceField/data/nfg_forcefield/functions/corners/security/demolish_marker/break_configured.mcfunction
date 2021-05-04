# Add the ID to deleted items for scans to clean up
data remove storage nfg:forcefield operations.meta.id_found
data modify storage nfg:forcefield operations.meta.id_break set from entity @s ArmorItems[0].tag.IDs.ff
data modify storage nfg:forcefield operations.delete append from storage nfg:forcefield operations.meta.id_break

# Give the player back the pieces
function nfg_forcefield:inventory/give_corners

# Destroy ForceField in Storage
function nfg_forcefield:corners/security/demolish_marker/find_ff_id

# Found the associated ForceField data, so let's destroy it
execute if data storage nfg:forcefield operations.meta.id_found run data remove storage nfg:forcefield ForceFields[0]

# Clean up detection state
data remove storage nfg:forcefield operations.meta
