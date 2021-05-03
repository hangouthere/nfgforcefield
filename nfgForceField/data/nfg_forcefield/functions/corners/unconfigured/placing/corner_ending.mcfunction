# Corners - Ending Corner Placed
# Acknowledges a Ending Corner Placed (to be in-world Init'd)
#####################################
# Started as:
#####################################
# Assumptions:
# - Corners are type=armor_stand (info for advanced pair tagging)

# Check for Error Conditions: Init Area Sizing
function nfg_forcefield:corners/unconfigured/error_checking/check_area

# End usage of a Build Helper
function nfg_forcefield:corners/unconfigured/placing/building_helper/uninit

# TODO: End remote-targeting system??

# Remove Init tag from corners, and ready to consume Config
execute if entity @s[tag=ff_no_errors] run tag @s add ff_needs_config
execute if entity @s[tag=ff_no_errors] run tag @s add ff_end
execute if entity @s[tag=ff_no_errors] run tag @s remove ff_init
