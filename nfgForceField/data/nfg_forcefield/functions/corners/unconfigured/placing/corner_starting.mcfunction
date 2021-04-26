# Check for Error Conditions: Init Corner Placement
function nfg_forcefield:corners/unconfigured/error_checking/check_corner

# Error Handling passed, start building process...
execute if entity @s[tag=ff_no_errors] run function nfg_forcefield:corners/unconfigured/placing/building_start
