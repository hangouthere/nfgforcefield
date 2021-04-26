# Corners - Ending Corner Placed
# Acknowledges a Ending Corner Placed (to be in-world Init'd)
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_end]
#####################################
# Assumptions:
# - Corners are type=armor_stand (info for advanced pair tagging)

# Check for Error Conditions: Init Corner Placement
function nfg_forcefield:corners/unconfigured/error_checking/check_corner

# Check for Error Conditions: Init Area Sizing
function nfg_forcefield:corners/unconfigured/error_checking/check_area

# Error Handling passed, end building process...
execute if entity @s[tag=ff_no_errors] run function nfg_forcefield:corners/unconfigured/placing/building_end
