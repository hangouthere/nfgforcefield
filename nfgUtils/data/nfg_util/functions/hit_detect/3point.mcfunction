# Hit Detect - 3 Point
# Detects if a location is within a set of Perimeter vectors.
# Only honors x/z components of the vector
# Assumes all coordinates are offset to (0,0,0) to make calculations easy
################################################
# Started as: Server Tick
################################################
# Inputs:
# - in1_{x,y,z} - Perimieter Bounds 1
# - in2_{x,y,z} - Perimieter Bounds 2
# - in3_{x,y,z} - Position to Detect Against
# - #_evalVolume - Enable Volume Evaluation (0 or empty is Perimeter, 1 is Volume)
# Outputs:
# - #_hitDetected - Boolean

# Backup in1/2/3
function nfg_util:vol/translate/helpers/backup_in1_in2
scoreboard players operation #_temp3_x _nfg_calcs = in3_x _nfg_calcs
scoreboard players operation #_temp3_y _nfg_calcs = in3_y _nfg_calcs
scoreboard players operation #_temp3_z _nfg_calcs = in3_z _nfg_calcs

# Convert in1/2 W2L
function nfg_util:vol/translate/world_to_local

scoreboard players operation in3_x _nfg_calcs += #_W2Loffset_x _nfg_calcs
scoreboard players operation in3_y _nfg_calcs += #_W2Loffset_y _nfg_calcs
scoreboard players operation in3_z _nfg_calcs += #_W2Loffset_z _nfg_calcs

# Evaluate Bounds
function nfg_util:hit_detect/eval_bounds

# Restore in1/2/3
function nfg_util:vol/translate/helpers/restore_in1_in2
scoreboard players operation in3_x _nfg_calcs = #_temp3_x _nfg_calcs
scoreboard players operation in3_y _nfg_calcs = #_temp3_y _nfg_calcs
scoreboard players operation in3_z _nfg_calcs = #_temp3_z _nfg_calcs
