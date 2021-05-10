# Volume - Calculate
# Calculates Volume Dimensions between two points
################################################
# Inputs:
# - #_vec_{x,y,z} - Bearing Vector
# Outputs:
# - #_vol_{x,y,z} - Output Volume Dimensions
################################################
# Psuedo:
# vol = Abs(b - a) + (1,1,1)

# Copy to Volume output var
scoreboard players operation #_vol_x nfg_util = #_vec_x nfg_util
scoreboard players operation #_vol_y nfg_util = #_vec_y nfg_util
scoreboard players operation #_vol_z nfg_util = #_vec_z nfg_util

# Invert vector components if negative
execute if score #_vol_x nfg_util matches ..0 run scoreboard players operation #_vol_x nfg_util *= $-1 nfg_const
execute if score #_vol_y nfg_util matches ..0 run scoreboard players operation #_vol_y nfg_util *= $-1 nfg_const
execute if score #_vol_z nfg_util matches ..0 run scoreboard players operation #_vol_z nfg_util *= $-1 nfg_const

# Offset calculation by 1 in every direction to account for placement vs calculations
scoreboard players add #_vol_x nfg_util 1
scoreboard players add #_vol_y nfg_util 1
scoreboard players add #_vol_z nfg_util 1
