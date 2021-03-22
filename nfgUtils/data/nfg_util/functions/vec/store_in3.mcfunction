# Vector - Helper: Store `in3`
# Stores Entity coords into `in3_{x,y,z}`
################################################
# Example: execute as @e[tag=inputEntity2] run function nfg_util:vec/store_in3

execute store result score in3_x _nfg_calcs run data get entity @s Pos[0] 1
execute store result score in3_y _nfg_calcs run data get entity @s Pos[1] 1
execute store result score in3_z _nfg_calcs run data get entity @s Pos[2] 1
