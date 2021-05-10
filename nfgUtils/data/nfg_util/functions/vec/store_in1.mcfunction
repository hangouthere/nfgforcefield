# Vector - Helper: Store `in1`
# Stores Entity coords into `in1_{x,y,z}`
################################################
# Example: execute as @e[tag=inputEntity1] run function nfg_util:vec/store_in1

execute store result score in1_x nfg_util run data get entity @s Pos[0] 1
execute store result score in1_y nfg_util run data get entity @s Pos[1] 1
execute store result score in1_z nfg_util run data get entity @s Pos[2] 1
