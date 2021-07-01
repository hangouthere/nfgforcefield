# Corners - Error: Check Area
# Check Area for Errors, ensuring it's within settings

# Calculate all the Player -> Corner values (vol area, perim area, etc)
function nfg_forcefield:player/ff_building/calc_entity_to_corner_values

# Detected that our volume is too small (per normalized settings)
execute if score #_area nfg_util < MinAreaPerim ff_calcs run function nfg_forcefield:corners/unconfigured/error_checking/detected_area_small
