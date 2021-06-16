# Corners - Config: Finalize a Pair of Corners
# Manage both Corners without concern of Starting/Ending, and attach tags as necessary.

## Modify the base Item NBT of Head Armor to have a tag with
# TODO: Dangerous??? Is this MP friendly?
data modify entity @s ArmorItems[0].tag set from storage nfg:forcefield operations.meta.search.found_ff

# Show name by default
data merge entity @s {CustomNameVisible: 0b, Glowing: 0b, CustomName:'{"text":"nfgForceField - Configured Corner","color":"green"}'}

## Mark as Power Changed, and Power On to transition (updates later once marked configured)
tag @s add ff_power_changed
tag @s add ff_power_on
