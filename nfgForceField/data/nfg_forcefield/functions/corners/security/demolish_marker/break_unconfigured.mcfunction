# Give the player back the piece
function nfg_forcefield:inventory/give_corner

# Reset Building Process & other tags
tag @p[tag=ff_tooltip_] remove ff_tooltip_medium
tag @p[tag=ff_building] remove ff_demolish_near
tag @p[tag=ff_building] remove ff_building

kill @e[tag=ff_building_helper,sort=nearest,limit=1]
