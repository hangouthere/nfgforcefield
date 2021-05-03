# Corners - Placing Helper: Init
# Initializes starting point, metrics, and other misc info
#####################################
# Started as: execute as @s[tag=ff_corner] at @s | execute as @p[tag=ff_building]

# Store in1 as ourselves (the player locked)
function nfg_util:vec/store_in1

# Store Starting Corner as in2
data modify storage nfg:forcefield operations.meta set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag
execute store result score in2_x nfg_calcs run data get storage nfg:forcefield operations.meta.corner.start[0] 1
execute store result score in2_y nfg_calcs run data get storage nfg:forcefield operations.meta.corner.start[1] 1
execute store result score in2_z nfg_calcs run data get storage nfg:forcefield operations.meta.corner.start[2] 1
data remove storage nfg:forcefield operations.meta

# Calculate supporting values
function nfg_util:vec/calc
function nfg_util:vol/calc
function nfg_util:perim/area

# Update Screen
title @p[tag=ff_building] actionbar [{"text":"Minimum Area: ","color":"yellow"},{"score":{"name":"MinAreaPerim","objective":"ff_calcs"},"color":"white"},{"text":" | "},{"text":"Current Area: ","color":"light_purple"},{"score":{"name":"#_area","objective":"nfg_calcs"},"color":"aqua"}]
