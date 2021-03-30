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
scoreboard players operation #_vol_x _nfg_calcs = #_vec_x _nfg_calcs
scoreboard players operation #_vol_y _nfg_calcs = #_vec_y _nfg_calcs
scoreboard players operation #_vol_z _nfg_calcs = #_vec_z _nfg_calcs

# Invert vector components if negative
execute if score #_vol_x _nfg_calcs matches ..0 run scoreboard players operation #_vol_x _nfg_calcs *= $-1 _nfg_const
execute if score #_vol_y _nfg_calcs matches ..0 run scoreboard players operation #_vol_y _nfg_calcs *= $-1 _nfg_const
execute if score #_vol_z _nfg_calcs matches ..0 run scoreboard players operation #_vol_z _nfg_calcs *= $-1 _nfg_const

# Offset calculation by 1 in every direction to account for placement vs calculations
scoreboard players add #_vol_x _nfg_calcs 1
scoreboard players add #_vol_y _nfg_calcs 1
scoreboard players add #_vol_z _nfg_calcs 1
