# Corners - Placing Helper
# UX/UI enhancements when placing ForceField Corners
# TODO: Consider not doing this on every tick
#####################################
# Started as: execute as @s[tag=ff_corner] at @s | execute if entity @a[tag=ff_building]

# TODO: Make multiplayer friendly
execute as @p[tag=ff_building] run function nfg_forcefield:player/ff_building/placing_helper/init

# Do area calcs based on perimeter
function nfg_util:perim/area

# Update Screen
title @p[tag=ff_building] actionbar [{"text":"Min: ","color":"yellow"},{"score":{"name":"#_areaMin","objective":"ff_calcs"},"color":"white"},{"text":" | "},{"text":"Δ: ","color":"dark_purple"},{"score":{"name":"#_area","objective":"_nfg_calcs"},"color":"aqua"}]
