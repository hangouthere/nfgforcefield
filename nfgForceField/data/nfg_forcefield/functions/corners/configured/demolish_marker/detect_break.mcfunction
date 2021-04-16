# Add the ID to deleted items for scans to clean up
data remove storage nfg:forcefield _scan.found_id
data modify storage nfg:forcefield _scan.break_id set from entity @s ArmorItems[0].tag._ff.id.ff
data modify storage nfg:forcefield _scan.deleted append from storage nfg:forcefield _scan.break_id

# Kill `demolish_marker`
kill @s

# Kill items dropped by the Corner
kill @e[type=item,distance=..5]

# Give the player back the pieces
function nfg_forcefield:inventory/give_corners

# Destroy ForceField in Storage
function nfg_forcefield:corners/configured/demolish_marker/find_ff_id

# Found the associated ForceField data, so let's destroy it
execute if data storage nfg:forcefield _scan.found_id run data remove storage nfg:forcefield ForceFields[0]

# Clean up Player tags
tag @p remove ff_tooltip_near
