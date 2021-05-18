# Store hostile mob (self) as in3
function nfg_util:vec/store_in3

# Offset in3 to Local Space for simple bounds check
scoreboard players operation in3_x nfg_util += #_W2Loffset_x nfg_util
scoreboard players operation in3_y nfg_util += #_W2Loffset_y nfg_util
scoreboard players operation in3_z nfg_util += #_W2Loffset_z nfg_util

function nfg_util:vol/eval_in_bounds
