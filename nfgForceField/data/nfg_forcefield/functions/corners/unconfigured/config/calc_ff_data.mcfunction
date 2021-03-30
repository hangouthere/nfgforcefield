# Calculate supporting values
function nfg_util:vec/calc
function nfg_util:vec/distance_squared
function nfg_util:vol/calc
function nfg_util:vol/area

# TODO: Determine valid value!
# Calculate maximum dist_sq to permanently ignore for this ForceField
scoreboard players operation #_dist_sq_max _ff_calcs = #_dist_sq _nfg_calcs
scoreboard players operation #_dist_sq_max _ff_calcs *= $3 _nfg_const

# Calculate offset to center (half of diameter, which is calculated in distance_squared)
scoreboard players operation #_center_offset_x _ff_calcs = in1_x _nfg_calcs
scoreboard players operation #_center_offset_x _ff_calcs += #_half_x _nfg_calcs
scoreboard players operation #_center_offset_y _ff_calcs = in1_y _nfg_calcs
scoreboard players operation #_center_offset_y _ff_calcs += #_half_y _nfg_calcs
scoreboard players operation #_center_offset_z _ff_calcs = in1_z _nfg_calcs
scoreboard players operation #_center_offset_z _ff_calcs += #_half_z _nfg_calcs

## A little more calculation for World2Local Offset info
function nfg_util:vol/translate/helpers/backup_in1_in2
function nfg_util:vol/translate/world_to_local
