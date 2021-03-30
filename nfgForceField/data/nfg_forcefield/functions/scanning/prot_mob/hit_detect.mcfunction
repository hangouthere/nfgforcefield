# Scanning - Protect against Mobs: Kill if in Bounds
# If Mob is within Bounds, KILL it!
#####################################
# Started as: execute if score #_dist_sq _nfg_calcs <= #_radius _ff_calcs

# Store hostile mob (self) as in3
function nfg_util:vec/store_in3

# Offset in3 to do bounds check
scoreboard players operation in3_x _nfg_calcs += #_W2Loffset_x _ff_calcs
scoreboard players operation in3_y _nfg_calcs += #_W2Loffset_y _ff_calcs
scoreboard players operation in3_z _nfg_calcs += #_W2Loffset_z _ff_calcs

# Check if in Bounds (Perimieter only)
scoreboard players set #_evalVolume _nfg_calcs 0
function nfg_util:hit_detect/eval_bounds

# Mark as processed, and as in/out
tag @s add ff_processed_mob
execute if score #_hitDetected _nfg_calcs matches 0 run tag @s add ff_processed_mob_out
execute if score #_hitDetected _nfg_calcs matches 1 run tag @s add ff_processed_mob_in
