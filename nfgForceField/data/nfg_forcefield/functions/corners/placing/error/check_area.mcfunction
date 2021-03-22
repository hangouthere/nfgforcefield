# Corners - Error: Check Area
# Check Area for Errors, ensuring it's within settings
# For Build Protection:
# - Must be > MinAreaPerim _ff_settings
# - Must be < MaxAreaPerim _ff_settings
# For Mob Protection:
# - Must be > MinAreaVolume _ff_settings
# - Must be < MaxAreaVolume _ff_settings
#####################################
# Started as: [Anon Passthru] execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_end]
#####################################
# Assumptions:
# - Corner Checks already completed
# - Expect `ff_start` corner to be init'd, but unconfigured
# - Expect `ff_end` to be both awaiting init, and unconfigured

# Get Volume Area from `nfg_util` to determine bounds of protection space
# Store in1_{x,y,z}
function nfg_util:vec/store_in1
# Store in2_{x,y,z}
execute as @e[tag=ff_corner,tag=ff_start,tag=!ff_configured] run function nfg_util:vec/store_in2

function nfg_util:vec/calc
function nfg_util:vol/calc

# TODO: Make multiplayer friendly
# If ff_prot_build, normalize min/max settings, calc perimeter area
execute as @e[tag=ff_prot_build,tag=ff_corner,tag=!ff_configured,tag=!ff_init,tag=ff_start,limit=1,sort=nearest] run function nfg_forcefield:corners/placing/error/get_area_perim

# TODO: Make multiplayer friendly
# If ff_prot_mob, normalize min/max settings, calc volume area
execute as @e[tag=ff_prot_mob,tag=ff_corner,tag=!ff_configured,tag=!ff_init,tag=ff_start,limit=1,sort=nearest] run function nfg_forcefield:corners/placing/error/get_area_vol

# Detected that our volume is too small (per normalized settings)
execute if score #_area _nfg_calcs < #_areaMin _ff_calcs run function nfg_forcefield:corners/placing/error/detected_volume_small

# Detected that our volume is too large (per normalized settings)
execute if score #_area _nfg_calcs > #_areaMax _ff_calcs run function nfg_forcefield:corners/placing/error/detected_volume_large
