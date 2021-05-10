# Corners - Error: Check Area
# Check Area for Errors, ensuring it's within settings
#####################################
# Started as:
#####################################
# Assumptions:
# - Corner Checks already completed

# Store in1_{x,y,z}
function nfg_util:vec/store_in1

# Store in2_{x,y,z}
data modify storage nfg:forcefield operations.meta set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag
execute store result score in2_x nfg_util run data get storage nfg:forcefield operations.meta.corner.start[0] 1
execute store result score in2_y nfg_util run data get storage nfg:forcefield operations.meta.corner.start[1] 1
execute store result score in2_z nfg_util run data get storage nfg:forcefield operations.meta.corner.start[2] 1
data remove storage nfg:forcefield operations.meta

# Do calculations
function nfg_util:vec/calc
function nfg_util:vol/calc
function nfg_util:perim/area

# Detected that our volume is too small (per normalized settings)
execute if score #_area nfg_util < MinAreaPerim ff_calcs run function nfg_forcefield:corners/unconfigured/error_checking/detected_area_small
