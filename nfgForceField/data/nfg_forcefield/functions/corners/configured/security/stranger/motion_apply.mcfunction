# Calc diff to determine trajectory vector
execute store result entity @s Motion[0] double 0.015 run scoreboard players operation #_knockback_x2 ff_calcs -= #_knockback_x1 ff_calcs
#execute store result entity @s Motion[1] double 0.015 run scoreboard players operation #_knockback_y2 ff_calcs -= #_knockback_y1 ff_calcs
data modify entity @s Motion[1] set value 0.75d
execute store result entity @s Motion[2] double 0.015 run scoreboard players operation #_knockback_z2 ff_calcs -= #_knockback_z1 ff_calcs
