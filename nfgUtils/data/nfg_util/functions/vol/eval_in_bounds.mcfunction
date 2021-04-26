# Hit Detect - Detect Positive/Negative Bound Perimiter
# Detects if a location is within a set of Perimeter vectors.
################################################
# Assumptions
# - All coordinates have been normalized into Local Space
################################################
# Inputs:
# - in1_{x,y,z} - Perimeter Starting Corner Position
# - in2_{x,y,z} - Perimeter Ending Corner Position
# - in3_{x,y,z} - Target Location Position
# - #_evalVolume - Enable Volume Evaluation (0 or empty is Perimeter, 1 is Volume)
# Outputs:
# - #_hitDetected - Boolean (Detected)
################################################
# Psuedo:
# #_inRange_x = start_x <= in1_x <= end_x
# #_inRange_y = start_y <= in1_y <= end_y
# #_inRange_z = start_z <= in1_z <= end_z
# hitDetected = #_inRange_x * #_inRange_y * #_inRange_z

# Detect X Range
scoreboard players operation #_low nfg_calcs = in1_x nfg_calcs
scoreboard players operation #_high nfg_calcs = in2_x nfg_calcs
scoreboard players operation #_testFor nfg_calcs = in3_x nfg_calcs
function nfg_util:range/detect
scoreboard players operation #_inRange_x nfg_calcs = #_inRange nfg_calcs

# Detect Y Range
scoreboard players operation #_low nfg_calcs = in1_y nfg_calcs
scoreboard players operation #_high nfg_calcs = in2_y nfg_calcs
scoreboard players operation #_testFor nfg_calcs = in3_y nfg_calcs
function nfg_util:range/detect
scoreboard players operation #_inRange_y nfg_calcs = #_inRange nfg_calcs

# Detect Z Range
scoreboard players operation #_low nfg_calcs = in1_z nfg_calcs
scoreboard players operation #_high nfg_calcs = in2_z nfg_calcs
scoreboard players operation #_testFor nfg_calcs = in3_z nfg_calcs
function nfg_util:range/detect
scoreboard players operation #_inRange_z nfg_calcs = #_inRange nfg_calcs

# AND the results for final output
# Reset our `out` value, and set up booleans to a default = 1, allowing *= 1, aka AND operations
scoreboard players operation #_hitDetected nfg_calcs = #_inRange_x nfg_calcs
# Only eval Y if we're doing volume evaluations
execute if score #_evalVolume nfg_calcs matches 1 run scoreboard players operation #_hitDetected nfg_calcs *= #_inRange_y nfg_calcs
scoreboard players operation #_hitDetected nfg_calcs *= #_inRange_z nfg_calcs
