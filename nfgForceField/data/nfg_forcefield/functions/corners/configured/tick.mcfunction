# Corners - Configured [Tick]
# Per tick, evaluate configured Corners!
#####################################

# Handle Orphaned Corners (if there are any to find)
execute if data storage nfg:forcefield operations.delete[0] run function nfg_forcefield:corners/configured/orphaned/tick

# Handle Updated Corners (if there are any to find)
execute if data storage nfg:forcefield operations.update[0] run function nfg_forcefield:corners/configured/updated/tick

# Handle Power Changes
function nfg_forcefield:corners/configured/power_status/tick

# Tooltip Configured Corners
execute if entity @p[distance=..12] run function nfg_forcefield:corners/configured/tooltip/tick
