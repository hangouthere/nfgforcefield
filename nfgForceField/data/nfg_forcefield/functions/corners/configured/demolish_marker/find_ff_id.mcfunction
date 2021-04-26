###################################################################
# This file recursively calls itself until it either loops an entire array,
# or it finds a matching ID.
# As part of the lifecycle of this file, it will prep and destroy anything necessary.

## Setup necessary data, but only first run

# Prep ID index loop value
execute unless score #_demoff_idx ff_calcs matches 1.. store result score #_demoff_idx ff_calcs run data get storage nfg:forcefield ForceFields

## Do evaluations

# Copy value to test against
data modify storage nfg:forcefield operations.meta.id_test set from storage nfg:forcefield ForceFields[0].id.ff

# Do ID compare...
execute store success score #_demo_found ff_calcs run data modify storage nfg:forcefield operations.meta.id_test set from storage nfg:forcefield operations.meta.id_break

# Found!
execute if score #_demo_found ff_calcs matches 0 run function nfg_forcefield:corners/configured/demolish_marker/found

# Not Found
execute if score #_demo_found ff_calcs matches 1 run function nfg_forcefield:corners/configured/demolish_marker/not_found
