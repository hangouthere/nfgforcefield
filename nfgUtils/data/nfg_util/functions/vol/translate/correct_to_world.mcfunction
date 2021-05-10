# Vector: Translate - Correct to World
# Corrects Vector endpoints that represent
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
execute if score #_temp1_x nfg_util < #_temp2_x nfg_util run scoreboard players operation in1_x nfg_util = #_temp1_x nfg_util
execute if score #_temp2_x nfg_util < #_temp1_x nfg_util run scoreboard players operation in1_x nfg_util = #_temp2_x nfg_util
execute if score #_temp1_y nfg_util < #_temp2_y nfg_util run scoreboard players operation in1_y nfg_util = #_temp1_y nfg_util
execute if score #_temp2_y nfg_util < #_temp1_y nfg_util run scoreboard players operation in1_y nfg_util = #_temp2_y nfg_util
execute if score #_temp1_z nfg_util < #_temp2_z nfg_util run scoreboard players operation in1_z nfg_util = #_temp1_z nfg_util
execute if score #_temp2_z nfg_util < #_temp1_z nfg_util run scoreboard players operation in1_z nfg_util = #_temp2_z nfg_util

## Build in2 (+X, +Y, +Z)-most point to be the Ending Corner
execute if score #_temp1_x nfg_util > #_temp2_x nfg_util run scoreboard players operation in2_x nfg_util = #_temp1_x nfg_util
execute if score #_temp2_x nfg_util > #_temp1_x nfg_util run scoreboard players operation in2_x nfg_util = #_temp2_x nfg_util
execute if score #_temp1_y nfg_util > #_temp2_y nfg_util run scoreboard players operation in2_y nfg_util = #_temp1_y nfg_util
execute if score #_temp2_y nfg_util > #_temp1_y nfg_util run scoreboard players operation in2_y nfg_util = #_temp2_y nfg_util
execute if score #_temp1_z nfg_util > #_temp2_z nfg_util run scoreboard players operation in2_z nfg_util = #_temp1_z nfg_util
execute if score #_temp2_z nfg_util > #_temp1_z nfg_util run scoreboard players operation in2_z nfg_util = #_temp2_z nfg_util
