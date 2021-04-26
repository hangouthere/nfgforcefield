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
scoreboard players operation #_area nfg_calcs = #_vol_x nfg_calcs
scoreboard players operation #_area nfg_calcs *= #_vol_y nfg_calcs
scoreboard players operation #_area nfg_calcs *= #_vol_z nfg_calcs
