# Setup FF Data from Bound Data
# Setup search data...
data remove storage nfg:forcefield operations.meta
data modify storage nfg:forcefield operations.meta.list set from storage nfg:forcefield ForceFields
# Copy Bound FF ID to the search target
execute store result storage nfg:forcefield operations.meta.target int 1 run scoreboard players get @s ff_bind_prot

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:ff_search/by_ff_id/search

# Copy found FF to Config Marker
data modify entity @e[tag=ff_config_marker,sort=nearest,limit=1] ArmorItems[0].tag set from storage nfg:forcefield operations.meta.found_ff

# Clean up Search Meta
function nfg_forcefield:ff_search/cleanup_meta
