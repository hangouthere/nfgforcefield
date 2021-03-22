# Vector - Calculate
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

scoreboard players operation #_vec_x _nfg_calcs = in2_x _nfg_calcs
scoreboard players operation #_vec_y _nfg_calcs = in2_y _nfg_calcs
scoreboard players operation #_vec_z _nfg_calcs = in2_z _nfg_calcs
scoreboard players operation #_vec_x _nfg_calcs -= in1_x _nfg_calcs
scoreboard players operation #_vec_y _nfg_calcs -= in1_y _nfg_calcs
scoreboard players operation #_vec_z _nfg_calcs -= in1_z _nfg_calcs
