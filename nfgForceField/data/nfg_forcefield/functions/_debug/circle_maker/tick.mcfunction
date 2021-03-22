# DEBUG Circle maker tick
# Draws circle around tagged entities to show boundaries

execute if entity @e[tag=circleMaker,tag=ff_init] run scoreboard objectives add _circleMaker dummy
execute as @e[tag=circleMaker,tag=ff_init] at @s run function nfg_forcefield:_debug/circle_maker/init
execute as @e[tag=circleMaker,tag=!ff_init,tag=!ff_power_off] at @s run function nfg_forcefield:_debug/circle_maker/draw
execute unless entity @e[tag=circleMaker] run scoreboard objectives remove _circleMaker