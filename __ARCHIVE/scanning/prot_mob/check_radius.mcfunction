# Scanning - Protect against Mobs: Check Radius
# Quickly checks if the entity is even remotely close to do full evaluation.
# This is to reduce overall commands ran on EVERY Entity
#####################################
# Started as: execute as @e[type=#nfg_util:hostile_mobs,tag=!ff_processed_mob,limit=100] at @s
#####################################
# Assumptions:
# - in1 is set to the Center of the ForceField

# Set in2 as the Hostile Mob to check against
function nfg_util:vec/store_in2
function nfg_util:vec/calc
function nfg_util:vec/distance_squared

# If we're considered close, let's do a full check...
execute if score #_dist_sq _nfg_calcs <= #_radius _ff_calcs run function nfg_forcefield:scanning/prot_mob/kill_in_bounds_check

# Mark ourselves as processed to we're done for this scan
tag @s add ff_processed_mob
