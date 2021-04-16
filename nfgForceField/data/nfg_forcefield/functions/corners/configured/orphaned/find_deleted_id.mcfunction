###################################################################
# This file recursively calls itself until it either loops an entire array,
# or it finds a matching ID.
# As part of the lifecycle of this file, it will prep and destroy anything necessary.

## Setup necessary data, but only first run

# Prep ID index loop value
execute unless score #_demo_find_id _ff_calcs matches 1.. store result score #_demo_find_id _ff_calcs run data get storage nfg:forcefield _scan.deleted

## Do evaluations

# Copy value to test against
data modify storage nfg:forcefield _scan.id_test set from storage nfg:forcefield _scan.deleted[0]

# Do ID compare...
execute store success score #_demo_found _ff_calcs run data modify storage nfg:forcefield _scan.id_test set from entity @s ArmorItems[0].tag._ff.id.ff

# Found!
execute if score #_demo_found _ff_calcs matches 0 run function nfg_forcefield:corners/configured/orphaned/found

# Not Found
execute if score #_demo_found _ff_calcs matches 1 run function nfg_forcefield:corners/configured/orphaned/not_found

# Wipe out value if it was not found :(
execute unless score #_demo_found _ff_calcs matches 0 if score #_demo_find_id _ff_calcs matches 0 run data remove storage nfg:forcefield _scan.found_id
