# Corners - Config: Finalize a Pair of Corners
# Manage both Corners without concern of Starting/Ending, and attach tags as necessary.
#####################################
# Started as: execute as @e[tag=ff_corner,tag=!ff_configured] at @s
#####################################
# Assumptions:
# - Runs as each Corner in a pair, unConfigured

## Modify the base Item NBT of Head Armor to have a tag with
# - id - pairing id to associate later
# - ownerId - for Owner validation in scans
# - area - for quick info in tooltips

# FF ID
execute store result entity @s ArmorItems[0].tag._ff.id int 1 run scoreboard players get #_ffNextId _ff_calcs
# Area
execute store result entity @s ArmorItems[0].tag._ff.area int 1 run scoreboard players get #_area _nfg_calcs
# TODO: Determine if we need this here, or if storage is good enough
# ownerId
execute store result entity @s ArmorItems[0].tag._ff.ownerId int 1 run scoreboard players get @p _nfg_player_id

# Show name by default
data merge entity @s {CustomNameVisible: 1b, Glowing: 0b}

## Mark as Power Changed, and Power On to transition (updates later once marked configured)
tag @s add ff_power_change
tag @s add ff_power_on
