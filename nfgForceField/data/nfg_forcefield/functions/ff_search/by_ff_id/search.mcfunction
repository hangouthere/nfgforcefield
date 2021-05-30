# Find FF by ID
#
# operations.meta.list - Required - Array to loop through and compare/find by `IDs.ff` property
#
# Example:
# data remove storage nfg:forcefield operations.meta
# data modify storage nfg:forcefield operations.meta.list set from storage nfg:forcefield ForceFields
# data modify storage nfg:forcefield operations.meta.target set from entity @s ArmorItems[0].tag

###################################################################
# This file recursively calls itself until it either loops an entire array,
# or it finds a matching ID.
# As part of the lifecycle of this file, it will prep and destroy anything necessary.

## Setup necessary data, but only first run

# Prep ID index loop value
execute unless score #_search_count_list ff_calcs matches 1.. store result score #_search_count_list ff_calcs run data get storage nfg:forcefield operations.meta.list

## Do evaluations

# Copy value to test against
data modify storage nfg:forcefield operations.meta.currIdx set from storage nfg:forcefield operations.meta.list[0].IDs.ff

# Do ID compare...
execute store success score #_search_found_id ff_calcs run data modify storage nfg:forcefield operations.meta.currIdx set from storage nfg:forcefield operations.meta.target

# Found!
execute if score #_search_found_id ff_calcs matches 0 run function nfg_forcefield:ff_search/found

# Not Found
execute if score #_search_found_id ff_calcs matches 1 run function nfg_forcefield:ff_search/by_ff_id/not_found

# Wipe out value if it was not found :(
execute unless score #_search_found_id ff_calcs matches 0 if score #_search_count_list ff_calcs matches 0 run function nfg_forcefield:ff_search/cleanup_meta
