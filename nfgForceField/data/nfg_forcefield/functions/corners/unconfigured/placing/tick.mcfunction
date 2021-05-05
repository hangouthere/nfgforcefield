# Pre-init with no errors
tag @s add ff_no_errors

# Current player is NOT building, this is effectively the start corner
execute if entity @p[tag=!ff_building] run function nfg_forcefield:corners/unconfigured/placing/check_starting

# Current player IS building, and this Corner is still init'd,
# this is effectively the end corner and we want to finalize the build
execute if entity @p[tag=ff_building] if entity @s[tag=ff_init] run function nfg_forcefield:corners/unconfigured/placing/check_ending
