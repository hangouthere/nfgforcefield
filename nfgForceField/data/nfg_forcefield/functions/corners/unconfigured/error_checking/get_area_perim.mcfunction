# Corners - Error: Check Area Perimeter
# Check Area for Errors, ensuring it's within settings
# - Must be > MinAreaPerim ff_calcs
#####################################
# Started as: execute as @e[tag=ff_prot_build,tag=ff_corner,tag=!ff_configured,tag=!ff_init,tag=ff_start,limit=1,sort=nearest]
#####################################
# Assumptions:
# - Bearing Vector has been calculated
# - Volume Vector has been calculated

scoreboard players operation #_areaMin ff_calcs = MinAreaPerim ff_calcs

function nfg_util:perim/area
