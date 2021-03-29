# Flip around when it reaches bounds
execute if score @s _circleMaker matches 0 run scoreboard players operation @s _circleMaker *= #_-1 _nfg_const
execute if score @s _circleMaker matches 180 run scoreboard players operation @s _circleMaker *= #_-1 _nfg_const

# Update Rotation per entity
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s _circleMaker

# Particle Barrier
execute if entity @s[tag=odd] anchored eyes run particle enchant ^ ^ ^7 0.01 5 0 0 5
execute if entity @s[tag=odd] anchored eyes run particle firework ^ ^ ^7 0.01 2 0 0.01 1
execute if entity @s[tag=!odd] anchored eyes run particle firework ^ ^ ^7 0.01 2 0 0.01 1

# Make circles go opposite directions
execute if entity @s[tag=odd] run scoreboard players add @s _circleMaker 1
execute if entity @s[tag=!odd] run scoreboard players remove @s _circleMaker 1
