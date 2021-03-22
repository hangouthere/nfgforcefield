# Volume - Area
# Calculates volume area from a precalculated Volume Vector
################################################
# Inputs:
# - #_vol_{x,y,z} - Input Volume Calculation
# Outputs:
# - #_area - Volume Area
################################################
# Psuedo:
# area = volVec.x * volVec.y * volVec.z

# Calculate Volume Area
scoreboard players operation #_area _nfg_calcs = #_vol_x _nfg_calcs
scoreboard players operation #_area _nfg_calcs *= #_vol_y _nfg_calcs
scoreboard players operation #_area _nfg_calcs *= #_vol_z _nfg_calcs
