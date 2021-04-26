# Pre-init with no errors
tag @s add ff_no_errors

# Handle Starting Corners
execute if entity @s[tag=ff_start] run function nfg_forcefield:corners/unconfigured/placing/corner_starting

# Handle Ending Corners
execute if entity @s[tag=ff_end] run function nfg_forcefield:corners/unconfigured/placing/corner_ending
