# Corners - Config: Finalize Corner Setup
# Gathers necessary info for pair of Corners being set up
#####################################
# Started as: [Anon] (Doesn't matter, explicit calcs)

# Get Vector Calculation for prep of variables
# Force execution as the Starting/Ending for assurance of all calcs
execute as @e[tag=ff_corner,tag=!ff_configured,tag=ff_start] run function nfg_util:vec/store_in1
execute as @e[tag=ff_corner,tag=!ff_configured,tag=ff_end] run function nfg_util:vec/store_in2

# Calculate supporting values
function nfg_util:vec/calc
function nfg_util:vol/calc
function nfg_util:vol/area
function nfg_util:vec/distance_squared
