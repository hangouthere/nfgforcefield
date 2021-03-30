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
scoreboard players operation #_bearingVec_x _nfg_calcs = #_vec_x _nfg_calcs
scoreboard players operation #_bearingVec_y _nfg_calcs = #_vec_y _nfg_calcs
scoreboard players operation #_bearingVec_z _nfg_calcs = #_vec_z _nfg_calcs

# Init OUT value
scoreboard players set #_bearing _nfg_calcs 0

# Add bit-wise values to get final value
# Bearing South (Z positive)
execute if score #_bearingVec_z _nfg_calcs matches 1.. run scoreboard players add #_bearing _nfg_calcs 4
# Bearing North (Z negative)
execute if score #_bearingVec_z _nfg_calcs matches ..0 run scoreboard players add #_bearing _nfg_calcs 2
# Bearing East (X positive)
execute if score #_bearingVec_x _nfg_calcs matches 0.. run scoreboard players add #_bearing _nfg_calcs 8
# Bearing West (X negative)
execute if score #_bearingVec_x _nfg_calcs matches ..0 run scoreboard players add #_bearing _nfg_calcs 16

# Error Detected when it detects N/E/W (aka 26) or N/S/E/W (aka 30)
execute if score #_bearing _nfg_calcs matches 26 run scoreboard players set #_bearing _nfg_calcs 0
execute if score #_bearing _nfg_calcs matches 30 run scoreboard players set #_bearing _nfg_calcs 0
