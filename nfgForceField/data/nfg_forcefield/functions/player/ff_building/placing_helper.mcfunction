# Corners - Placing Helper: Init
# Initializes starting point, metrics, and other misc info

# Calculate all the Player -> Corner values (vol area, perim area, etc)
function nfg_forcefield:player/ff_building/calc_player_to_corner_values

# Update Screen
title @p[tag=ff_building] actionbar [{"text":"Minimum Area: ","color":"yellow"},{"score":{"name":"MinAreaPerim","objective":"ff_calcs"},"color":"white"},{"text":" | "},{"text":"Current Area: ","color":"light_purple"},{"score":{"name":"#_area","objective":"nfg_util"},"color":"aqua"}]
