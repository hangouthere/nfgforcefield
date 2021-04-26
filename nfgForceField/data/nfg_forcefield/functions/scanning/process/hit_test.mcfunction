# Store hostile mob (self) as in3
function nfg_util:vec/store_in3

# Offset in3 to Local Space for simple bounds check
scoreboard players operation in3_x nfg_calcs += #_W2Loffset_x nfg_calcs
scoreboard players operation in3_y nfg_calcs += #_W2Loffset_y nfg_calcs
scoreboard players operation in3_z nfg_calcs += #_W2Loffset_z nfg_calcs

# TODO: Eval type for scan type (ie, perim vs volume)
# ^Note: Be sure to always set, even if zero! This ensures it calcs properly!
# Check if in Bounds (Currently Perimieter only)
scoreboard players set #_evalVolume nfg_calcs 0
function nfg_util:vol/eval_in_bounds
