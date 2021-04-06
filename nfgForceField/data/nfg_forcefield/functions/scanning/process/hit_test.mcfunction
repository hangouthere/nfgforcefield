# Store hostile mob (self) as in3
function nfg_util:vec/store_in3

# Offset in3 to Local Space for simple bounds check
scoreboard players operation in3_x _nfg_calcs += #_W2Loffset_x _nfg_calcs
scoreboard players operation in3_y _nfg_calcs += #_W2Loffset_y _nfg_calcs
scoreboard players operation in3_z _nfg_calcs += #_W2Loffset_z _nfg_calcs

# TODO: Eval type for scan type (ie, perim vs volume)
# ^Note: Be sure to always set, even if zero! This ensures it calcs properly!
# Check if in Bounds (Currently Perimieter only)
scoreboard players set #_evalVolume _nfg_calcs 0
function nfg_util:vol/eval_in_bounds
