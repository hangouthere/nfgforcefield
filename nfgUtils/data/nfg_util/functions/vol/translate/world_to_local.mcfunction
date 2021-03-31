# Volume - World to Local Coordinates
# Applies Offsets between two endpoints to position the region at (0,0,0), so that calculations
# are simplified (ie, hitbox detection)
# NOTE: This changes INPUTS, and is dangerous!
################################################
# Inputs:
# - in1_{x,y,z} - Volume Bounds 1 (Starting)
# - in2_{x,y,z} - Volume Bounds 2 (Ending)
# Outputs:
# - #_W2Loffset_{x,y,z} - World to Local Offset Components
# - in1, in2 - Adjusted to Local space:
################################################
# Assumptions:
# - Volume Bounds are already corrected to the World Space

## Offset into Local Coordinates
# Calculate the offset from the [identified] Starting Point to (0,0) (which is just negating the components)
scoreboard players operation #_W2Loffset_x _nfg_calcs = in1_x _nfg_calcs
scoreboard players operation #_W2Loffset_x _nfg_calcs *= $-1 _nfg_const
scoreboard players operation #_W2Loffset_y _nfg_calcs = in1_y _nfg_calcs
scoreboard players operation #_W2Loffset_y _nfg_calcs *= $-1 _nfg_const
scoreboard players operation #_W2Loffset_z _nfg_calcs = in1_z _nfg_calcs
scoreboard players operation #_W2Loffset_z _nfg_calcs *= $-1 _nfg_const
# Do the actual offset!
scoreboard players operation in1_x _nfg_calcs += #_W2Loffset_x _nfg_calcs
scoreboard players operation in2_x _nfg_calcs += #_W2Loffset_x _nfg_calcs
scoreboard players operation in1_y _nfg_calcs += #_W2Loffset_y _nfg_calcs
scoreboard players operation in2_y _nfg_calcs += #_W2Loffset_y _nfg_calcs
scoreboard players operation in1_z _nfg_calcs += #_W2Loffset_z _nfg_calcs
scoreboard players operation in2_z _nfg_calcs += #_W2Loffset_z _nfg_calcs
