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
# - volume - for quick maths in scans
# - center - for quick maths in scans
# - radius_sq - for quick maths in scans

# Calculate offset to center (half of diameter, which is calculated in distance_squared)
scoreboard players operation #_center_offset_x _nfg_calcs = in1_x _nfg_calcs
scoreboard players operation #_center_offset_x _nfg_calcs += #_half_x _nfg_calcs
scoreboard players operation #_center_offset_y _nfg_calcs = in1_y _nfg_calcs
scoreboard players operation #_center_offset_y _nfg_calcs += #_half_y _nfg_calcs
scoreboard players operation #_center_offset_z _nfg_calcs = in1_z _nfg_calcs
scoreboard players operation #_center_offset_z _nfg_calcs += #_half_z _nfg_calcs

# Stake ownership of the entity and map to the Player ID
scoreboard players operation @s _ff_player_map = @p _nfg_player_id

# Retrieve the ID to put on the Corner NBT
scoreboard players operation @s _ff_pair_map = #_ffNextId _ff_calcs
execute store result entity @s ArmorItems[3].tag._ff.id int 1 run scoreboard players get #_ffNextId _ff_calcs

# Store Area Calc on Corner
execute store result entity @s ArmorItems[3].tag._ff.area int 1 run scoreboard players get #_area _nfg_calcs

# Store Vector Calc on Corner
execute store result entity @s ArmorItems[3].tag._ff.volume.x int 1 run scoreboard players get #_vol_x _nfg_calcs
execute store result entity @s ArmorItems[3].tag._ff.volume.y int 1 run scoreboard players get #_vol_y _nfg_calcs
execute store result entity @s ArmorItems[3].tag._ff.volume.z int 1 run scoreboard players get #_vol_z _nfg_calcs

# Store center on Corner
execute store result entity @s ArmorItems[3].tag._ff.center.x int 1 run scoreboard players get #_center_offset_x _nfg_calcs
execute store result entity @s ArmorItems[3].tag._ff.center.y int 1 run scoreboard players get #_center_offset_y _nfg_calcs
execute store result entity @s ArmorItems[3].tag._ff.center.z int 1 run scoreboard players get #_center_offset_z _nfg_calcs

# Store distance on Corner
execute store result entity @s ArmorItems[3].tag._ff.radius_sq int 1 run scoreboard players get #_dist_sq _nfg_calcs

# Store ownerId on Corner
execute store result entity @s ArmorItems[3].tag._ff.ownerId int 1 run scoreboard players get @p _nfg_player_id

# Update CustomName so they are green (aka Configured/Safe/On)
data merge entity @s {CustomNameVisible: 1b, Glowing: 0b}

## Mark as Power Changed, and Power On to transition, and mark as Configured

# Mark Corners as Powered ON by default (updates later once marked configured)
tag @s add ff_power_change
tag @s add ff_power_on
