# Vector - Helper: Store `in2`
# Stores Entity coords into `in2_{x,y,z}`
################################################
# Example: execute as @e[tag=inputEntity2] run function nfg_util:vec/store_in2

execute store result score in2_x nfg_util run data get entity @s Pos[0] 1
execute store result score in2_y nfg_util run data get entity @s Pos[1] 1
execute store result score in2_z nfg_util run data get entity @s Pos[2] 1
