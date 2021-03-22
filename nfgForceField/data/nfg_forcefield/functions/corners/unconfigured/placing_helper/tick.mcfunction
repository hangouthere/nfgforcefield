# Corners - Placing Helper
# UX/UI enhancements when placing ForceField Corners
# TODO: Consider not doing this on every tick
#####################################
# Started as: execute as @s[tag=ff_corner] at @s | execute if entity @a[tag=ff_placing_lock]

# TODO: Make multiplayer friendly
execute as @p[tag=ff_placing_lock] run function nfg_forcefield:corners/unconfigured/placing_helper/init

# Do area calcs based on type
execute as @e[tag=ff_corner,tag=ff_start,tag=ff_prot_mob,tag=!ff_configured,sort=nearest,limit=1] run function nfg_util:vol/area
execute as @e[tag=ff_corner,tag=ff_start,tag=ff_prot_build,tag=!ff_configured,sort=nearest,limit=1] run function nfg_util:perim/area

# Update Screen
title @p actionbar [{"text":"Type: ","color":"gold"},{"nbt":"ArmorItems[3].tag._ff.type","entity":"@e[tag=ff_corner,tag=ff_start,tag=!ff_configured,sort=nearest,limit=1]","color":"green"},{"text":" | "},{"text":"Min: ","color":"yellow"},{"score":{"name":"#_areaMin","objective":"_ff_calcs"},"color":"white"},{"text":" | "},{"text":"Max: ","color":"dark_red"},{"score":{"name":"#_areaMax","objective":"_ff_calcs"},"color":"white"},{"text":" | "},{"text":"Δ: ","color":"dark_purple"},{"score":{"name":"#_area","objective":"_nfg_calcs"},"color":"aqua"}]
