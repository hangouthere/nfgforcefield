# Vector - Helper: Store `in2`
# Stores Entity coords into `in2_{x,y,z}`
################################################
# Example: execute as @e[tag=inputEntity2] run function nfg_util:vec/store_in2

execute store result score in2_x _nfg_calcs run data get entity @s Pos[0] 1
execute store result score in2_y _nfg_calcs run data get entity @s Pos[1] 1
execute store result score in2_z _nfg_calcs run data get entity @s Pos[2] 1
