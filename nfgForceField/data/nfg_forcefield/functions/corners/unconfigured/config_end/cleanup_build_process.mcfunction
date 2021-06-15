# Hide the placing bar from placement helper
title @p actionbar ""

# Kill `ff_building_helper`
kill @e[tag=ff_building_helper,sort=nearest,limit=1]

# Clean up data storage
data remove storage nfg:forcefield operations.meta

# Remove Player Building Status and other FF related tags to clear state
tag @p[tag=ff_building] add ff_wait
execute as @p[tag=ff_building] run function nfg_forcefield:helper/player/cleanup_state
tag @p[tag=ff_wait] add ff_owner
tag @p[tag=ff_wait] remove ff_wait

# Reintroduce Suspended mobs, because a new ForceField
# could have been built nearby
tag @e remove ff_suspend
tag @e remove ff_suspend_temp
tag @e remove ff_suspend_perm

# Mark End Corner as now Configured
tag @s remove ff_end
tag @s remove ff_needs_config
tag @s remove ff_no_errors
tag @s add ff_configured

# Force a clean Scan with the newly included/created ForceField
function nfg_forcefield:scanning/process/loop/reset_scan
