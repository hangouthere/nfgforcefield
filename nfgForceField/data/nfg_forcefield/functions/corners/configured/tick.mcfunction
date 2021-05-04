# Corners - Configured [Tick]
# Per tick, evaluate configured Corners!
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=!ff_init,tag=ff_configured,tag=ff_no_errors]

# Handle Orphaned Corners (if there are any to find)
execute if data storage nfg:forcefield operations.delete[0] run function nfg_forcefield:corners/configured/orphaned/tick

# Handle Power Changes
function nfg_forcefield:corners/configured/power_status/tick

# Tooltip Configured Corners
function nfg_forcefield:corners/configured/tooltip/tick

# Security System for Corners
execute if entity @p[distance=..9] run function nfg_forcefield:corners/configured/security/tick
