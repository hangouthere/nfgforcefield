# Vector - Calculate Bearing
# Calculates directional bearing from precalculated vector results
################################################
# Inputs:
# - #_vec_{x,y,z} - Bearing Vector
# Outputs:
# - #_bearing - Bearing (Enum Value)
#    2 - N
#    4 - S
#    8 - E
#    16 - W
#    10 - NE
#    18 - NW
#    12 - SE
#    20 - SW
################################################
# Psuedo:
# Adds each bearing, N/S/E/W independently as bitwise operators

# Copy Bearing Vector for continued use
scoreboard players operation #_bearingVec_x nfg_util = #_vec_x nfg_util
scoreboard players operation #_bearingVec_y nfg_util = #_vec_y nfg_util
scoreboard players operation #_bearingVec_z nfg_util = #_vec_z nfg_util

# Init OUT value
scoreboard players set #_bearing nfg_util 0

# Add bit-wise values to get final value
# Bearing South (Z positive)
execute if score #_bearingVec_z nfg_util matches 1.. run scoreboard players add #_bearing nfg_util 4
# Bearing North (Z negative)
execute if score #_bearingVec_z nfg_util matches ..0 run scoreboard players add #_bearing nfg_util 2
# Bearing East (X positive)
execute if score #_bearingVec_x nfg_util matches 0.. run scoreboard players add #_bearing nfg_util 8
# Bearing West (X negative)
execute if score #_bearingVec_x nfg_util matches ..0 run scoreboard players add #_bearing nfg_util 16

# Error Detected when it detects N/E/W (aka 26) or N/S/E/W (aka 30)
execute if score #_bearing nfg_util matches 26 run scoreboard players set #_bearing nfg_util 0
execute if score #_bearing nfg_util matches 30 run scoreboard players set #_bearing nfg_util 0
