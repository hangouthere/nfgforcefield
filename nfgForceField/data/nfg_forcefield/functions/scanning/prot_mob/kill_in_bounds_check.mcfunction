# Scanning - Protect against Mobs: Kill if in Bounds
# If Mob is within Bounds, KILL it!
#####################################
# Started as: execute if score #_dist_sq _nfg_calcs <= #_radius _ff_calcs

# Store corners in coords
execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_start] at @s run function nfg_util:vec/store_in1
execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_end] at @s run function nfg_util:vec/store_in2

# Store in3 for calcs
function nfg_util:vec/store_in3

# Check if in Bounds
scoreboard players set #_evalVolume _nfg_calcs 1
function nfg_util:hit_detect/3point

# Mark as processed, and as in/out
execute if score #_hitDetected _nfg_calcs matches 0 run tag @s add ff_processed_mob_out
execute if score #_hitDetected _nfg_calcs matches 1 run tag @s add ff_processed_mob_in

# Zap noise, particle effect, and tp to oblivion!
execute if entity @s[tag=ff_processed_mob_in] as @a[distance=..16] run playsound nfg_forcefield:zap ambient @s ~ ~ ~ 0.4
execute if entity @s[tag=ff_processed_mob_in] run particle dust 1 0.851 0 0.5 ~ ~ ~ 0.3 1 0.3 1 100
execute if entity @s[tag=ff_processed_mob_in] run tp @s ~ -200 ~
