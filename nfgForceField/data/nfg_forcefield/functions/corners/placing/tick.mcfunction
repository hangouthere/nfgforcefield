# Corners - Placing [Tick]
# Placing new Corners are handled here as an initialization process
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_init,tag=!ff_configured]

# Pre-init with no errors
tag @s add ff_no_errors

# Handle Starting Corners
execute if entity @s[tag=ff_start] run function nfg_forcefield:corners/placing/placed_start

# Handle Ending Corners
execute if entity @s[tag=ff_end] run function nfg_forcefield:corners/placing/placed_end
