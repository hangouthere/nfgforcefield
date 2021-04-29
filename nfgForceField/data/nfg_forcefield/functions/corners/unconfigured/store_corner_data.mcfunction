# Corners - Config: Finalize a Pair of Corners
# Manage both Corners without concern of Starting/Ending, and attach tags as necessary.
#####################################
# Started as: execute as @e[tag=ff_corner,tag=!ff_configured] at @s
#####################################
# Assumptions:
# - Runs as each Corner in a pair, unConfigured

## Modify the base Item NBT of Head Armor to have a tag with
# TODO: Dangerous??? Is this MP friendly?
data modify entity @s ArmorItems[0].tag set from storage nfg:forcefield operations.meta

# Show name by default
data merge entity @s {CustomNameVisible: 1b, Glowing: 0b}

## Mark as Power Changed, and Power On to transition (updates later once marked configured)
tag @s add ff_power_change
tag @s add ff_power_on
