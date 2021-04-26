# Vector - Distance Squared
# Calculates the squared distance between 2 points
################################################
# Inputs:
# - #_vec_{x,y,z} - Direction Vector Calcution
# Outputs:
# - #_dist_sq - Output Distance (Squared)
# - #_half_{x,y,z} - Output Distance (Squared)
################################################
# Psuedo:
# tmp_dist_x = vec_x
# tmp_dist_x /= 2
# tmp_dist_x *= tmp_dist_x
# tmp_dist_y = vec_y
# tmp_dist_y /= 2
# tmp_dist_y *= tmp_dist_y
# tmp_dist_z = vec_z
# tmp_dist_z /= 2
# tmp_dist_z *= tmp_dist_z
# #_dist_sq = tmp_dist_x + tmp_dist_y + tmp_dist_z

# Square up X
scoreboard players operation #_tmp_dist_x nfg_calcs = #_vec_x nfg_calcs
scoreboard players operation #_tmp_dist_x nfg_calcs /= $2 nfg_const
scoreboard players operation #_half_x nfg_calcs = #_tmp_dist_x nfg_calcs
scoreboard players operation #_tmp_dist_x nfg_calcs *= #_tmp_dist_x nfg_calcs

# Square up Y
scoreboard players operation #_tmp_dist_y nfg_calcs = #_vec_y nfg_calcs
scoreboard players operation #_tmp_dist_y nfg_calcs /= $2 nfg_const
scoreboard players operation #_half_y nfg_calcs = #_tmp_dist_y nfg_calcs
scoreboard players operation #_tmp_dist_y nfg_calcs *= #_tmp_dist_y nfg_calcs

# Square up Z
scoreboard players operation #_tmp_dist_z nfg_calcs = #_vec_z nfg_calcs
scoreboard players operation #_tmp_dist_z nfg_calcs /= $2 nfg_const
scoreboard players operation #_half_z nfg_calcs = #_tmp_dist_z nfg_calcs
scoreboard players operation #_tmp_dist_z nfg_calcs *= #_tmp_dist_z nfg_calcs

# Sum the squares
scoreboard players operation #_dist_sq nfg_calcs = #_tmp_dist_x nfg_calcs
scoreboard players operation #_dist_sq nfg_calcs += #_tmp_dist_y nfg_calcs
scoreboard players operation #_dist_sq nfg_calcs += #_tmp_dist_z nfg_calcs
