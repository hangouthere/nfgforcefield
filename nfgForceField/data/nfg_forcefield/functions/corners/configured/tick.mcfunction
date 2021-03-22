# Corners - Configured [Tick]
# Per tick, evaluate configured Corners!
#####################################
# Started as: execute as @s[tag=!ff_init,tag=ff_configured]

# Listen for live Power modifications
function nfg_forcefield:corners/configured/power_status/tick

# Tooltip Configured Corners
function nfg_forcefield:corners/configured/tooltip/tick

# Handle Power Changes
execute as @s[tag=ff_power_change] run function nfg_forcefield:corners/configured/power_status/init
