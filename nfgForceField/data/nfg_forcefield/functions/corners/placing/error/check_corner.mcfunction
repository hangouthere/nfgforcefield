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

# Remove Counts
scoreboard players set #_numUncfgStart _ff_calcs 0

# Count UNCONFIGURED Starting and Ending Corners
# TODO: Make this multiplayer friendly
execute store result score #_numUncfgStart _ff_calcs if entity @e[tag=ff_start,tag=!ff_configured]

# Too many Starting Corners (>1), handle it
execute if score #_numUncfgStart _ff_calcs matches 2.. run function nfg_forcefield:corners/placing/error/detected_too_many_starters

# Ending Corner placed, but player hasn't placed a Starting Corner (aka building), handle it
execute unless entity @p[tag=ff_building,distance=..6] run function nfg_forcefield:corners/placing/error/detected_missing_starter
