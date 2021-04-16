# Corners - Ending Corner Placed
# Acknowledges a Ending Corner Placed (to be in-world Init'd)
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_end]
#####################################
# Assumptions:
# - Corners are type=armor_stand (info for advanced pair tagging)

# Check for Error Conditions: Init Corner Placement
function nfg_forcefield:corners/placing/error/check_corner

# Check for Error Conditions: Init Area Sizing
function nfg_forcefield:corners/placing/error/check_area

# End usage of a Build Helper
function nfg_forcefield:corners/placing/building_helper_uninit

# TODO: End remote-targeting system??

# Remove Init tag from corners, if no errors
execute if entity @s[tag=ff_no_errors] run tag @s remove ff_init
