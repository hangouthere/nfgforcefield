###################################################################
# This file recursively calls itself until it either loops an entire array,
# or it finds a matching ID.
# As part of the lifecycle of this file, it will prep and destroy anything necessary.

## Setup necessary data, but only first run

# Prep ID index loop value
execute unless score #_create_search_count ff_calcs matches 1.. store result score #_create_search_count ff_calcs run data get storage nfg:forcefield operations.create

# Copy value to test against
data modify storage nfg:forcefield operations.meta.id_test set from storage nfg:forcefield operations.create[0].IDs

## Do evaluations

# Do ID compare...
execute store success score #_create_found ff_calcs run data modify storage nfg:forcefield operations.meta.id_test set from entity @s ArmorItems[0].tag.IDs

# Found!
execute if score #_create_found ff_calcs matches 0 run function nfg_forcefield:corners/unconfigured/config_start/found

# Not Found
execute if score #_create_found ff_calcs matches 1 run function nfg_forcefield:corners/unconfigured/config_start/not_found

# Wipe out value if it was not found :(
execute unless score #_create_found ff_calcs matches 0 if score #_create_search_count ff_calcs matches 0 run data remove storage nfg:forcefield operations.meta
