# Vector - Calculate Direction Vector
# Calculates directional vector between two points
################################################
# Inputs:
# - in1_{x,y,z} - Input Position 1
# - in2_{x,y,z} - Input Position 2
# Outputs:
# - #_vec_{x,y,z} - Output Vector
################################################
# Psuedo:
# out = (b - a)

scoreboard players operation #_vec_x nfg_calcs = in2_x nfg_calcs
scoreboard players operation #_vec_y nfg_calcs = in2_y nfg_calcs
scoreboard players operation #_vec_z nfg_calcs = in2_z nfg_calcs
scoreboard players operation #_vec_x nfg_calcs -= in1_x nfg_calcs
scoreboard players operation #_vec_y nfg_calcs -= in1_y nfg_calcs
scoreboard players operation #_vec_z nfg_calcs -= in1_z nfg_calcs
