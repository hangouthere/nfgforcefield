# Corners - Error: Check Corner
# Check Corner placements for Errors
# - Only 1 Starting Corner (of any type) allowed at a time
# - Starting Corner (of any type) must exist before an Ending Corner
#####################################
# Started as: [Anon Passthru] execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_start]
#             [Anon Passthru] execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_end]
#####################################
# Assumptions:
# - At least 1 Corner is Init'd, but all are unConfigured

# Already building!
execute if entity @s[tag=ff_start] if entity @p[tag=ff_building] run function nfg_forcefield:corners/unconfigured/error_checking/handling/detected_too_many_starters

# Ending Corner placed, but player hasn't placed a Starting Corner (aka building), handle it
execute if entity @s[tag=ff_end] unless entity @p[tag=ff_building,distance=..6] run function nfg_forcefield:corners/unconfigured/error_checking/handling/detected_missing_starter
