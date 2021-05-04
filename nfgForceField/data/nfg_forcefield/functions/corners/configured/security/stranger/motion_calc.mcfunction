# Store initial position
execute store result score #_knockback_x1 ff_calcs run data get entity @s Pos[0] 1000
execute store result score #_knockback_y1 ff_calcs run data get entity @s Pos[1] 1000
execute store result score #_knockback_z1 ff_calcs run data get entity @s Pos[2] 1000

# Move super small increment
tp @s ^ ^ ^0.1

# Store new position
execute store result score #_knockback_x2 ff_calcs run data get entity @s Pos[0] 1000
execute store result score #_knockback_y2 ff_calcs run data get entity @s Pos[1] 1000
execute store result score #_knockback_z2 ff_calcs run data get entity @s Pos[2] 1000
