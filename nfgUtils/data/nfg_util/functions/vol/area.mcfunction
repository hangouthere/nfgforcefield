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
scoreboard players operation #_area nfg_util = #_vol_x nfg_util
scoreboard players operation #_area nfg_util *= #_vol_y nfg_util
scoreboard players operation #_area nfg_util *= #_vol_z nfg_util
