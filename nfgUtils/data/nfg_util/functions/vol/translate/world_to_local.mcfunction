# Volume - World to Local Coordinates
# Calculates offsets between two endpoints to position the region at (0,0,0), so that calculations
# are simplified (ie, hitbox detection)
# NOTE: This changes INPUTS, and is dangerous!
################################################
# Inputs:
# - in1_{x,y,z} - Perimieter Bounds 1 (Starting)
# - in2_{x,y,z} - Perimieter Bounds 2 (Ending)
# Outputs:
# - #_W2Loffset_{x,y,z} - World to Local Offset Components
# - in1, in2 - Adjusted to Local space:
################################################
# Assumptions:
# - Backup has been ran into temp location via helper

# Notes about function:
#
# World to Local Normalization: Makes our calculations easy, and starting from (0,0) in the world
# Known Info:
# - S = Z-Positive
# - N = Z-Negative
# - E = X-Positive
# - W = X-Negative
# - Up = Y-Positive
# - Dn = Y-Negative
# This means we want to work in the SEUp region of the world. To do so, we need to find
#  the vector components with the lowest X/Y/Z values to form our "most negative point"
#  and offset for Localized Coordinates (i.e., starting from origin)
# Steps:
#   - Find Lowest X between #_temp1_x and #_temp2_x
#   - Find Lowest Y between #_temp1_y and #_temp2_y
#   - Find Lowest Z between #_temp1_z and #_temp2_z
#   - This is now in1_{x,y,z}
#   - Find Highest X between #_temp1_x and #_temp2_x
#   - Find Highest Y between #_temp1_y and #_temp2_y
#   - Find Highest Z between #_temp1_z and #_temp2_z
#   - This is now in2_{x,y,z}
#   - Offset ALL points by the negative value of in1_{x,y,z}
#   - We are now in Local Space

## Build in1 (-X, -Y, -Z)-most point to be the Starting Corner
execute if score #_temp1_x _nfg_calcs < #_temp2_x _nfg_calcs run scoreboard players operation in1_x _nfg_calcs = #_temp1_x _nfg_calcs
execute if score #_temp2_x _nfg_calcs < #_temp1_x _nfg_calcs run scoreboard players operation in1_x _nfg_calcs = #_temp2_x _nfg_calcs
execute if score #_temp1_y _nfg_calcs < #_temp2_y _nfg_calcs run scoreboard players operation in1_y _nfg_calcs = #_temp1_y _nfg_calcs
execute if score #_temp2_y _nfg_calcs < #_temp1_y _nfg_calcs run scoreboard players operation in1_y _nfg_calcs = #_temp2_y _nfg_calcs
execute if score #_temp1_z _nfg_calcs < #_temp2_z _nfg_calcs run scoreboard players operation in1_z _nfg_calcs = #_temp1_z _nfg_calcs
execute if score #_temp2_z _nfg_calcs < #_temp1_z _nfg_calcs run scoreboard players operation in1_z _nfg_calcs = #_temp2_z _nfg_calcs
## Build in2 (+X, +Y, +Z)-most point to be the Ending Corner
execute if score #_temp1_x _nfg_calcs > #_temp2_x _nfg_calcs run scoreboard players operation in2_x _nfg_calcs = #_temp1_x _nfg_calcs
execute if score #_temp2_x _nfg_calcs > #_temp1_x _nfg_calcs run scoreboard players operation in2_x _nfg_calcs = #_temp2_x _nfg_calcs
execute if score #_temp1_y _nfg_calcs > #_temp2_y _nfg_calcs run scoreboard players operation in2_y _nfg_calcs = #_temp1_y _nfg_calcs
execute if score #_temp2_y _nfg_calcs > #_temp1_y _nfg_calcs run scoreboard players operation in2_y _nfg_calcs = #_temp2_y _nfg_calcs
execute if score #_temp1_z _nfg_calcs > #_temp2_z _nfg_calcs run scoreboard players operation in2_z _nfg_calcs = #_temp1_z _nfg_calcs
execute if score #_temp2_z _nfg_calcs > #_temp1_z _nfg_calcs run scoreboard players operation in2_z _nfg_calcs = #_temp2_z _nfg_calcs

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
