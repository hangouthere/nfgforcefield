# Scanning - Destroy Broken ForceFields [Tick]
# Finds ForceFields with a Corner broken and destroys the ForceField completely to get rid of cruft
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured]

scoreboard players set #_numCorners _ff_calcs 0

# This uses a little trick:
# - AT the location of ALL entities of matching pair type(any that could match a pair grouping id by matching score in _ff_pair_map)
# - if score of pair mapping is the same as closest corner (which should be any of the entities located in the step before)

# If we're the Starting Corner, find the Ending
execute if entity @s[tag=ff_start] run execute at @e[tag=ff_end,tag=ff_corner,tag=ff_configured] if score @s _ff_pair_map = @e[tag=ff_corner,sort=nearest,limit=1] _ff_pair_map run scoreboard players add #_numCorners _ff_calcs 1

# If we're the Ending Corner, find the Starting
execute if entity @s[tag=ff_end] run execute at @e[tag=ff_start,tag=ff_corner,tag=ff_configured] if score @s _ff_pair_map = @e[tag=ff_corner,sort=nearest,limit=1] _ff_pair_map run scoreboard players add #_numCorners _ff_calcs 1

# If no matching corner found, kill ourselves
execute if score #_numCorners _ff_calcs matches 0 run kill @s
