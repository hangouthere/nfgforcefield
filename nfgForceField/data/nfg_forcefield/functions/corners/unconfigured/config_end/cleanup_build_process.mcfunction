# Hide the placing bar from placement helper
title @p actionbar ""

# Kill `ff_building_helper`
kill @e[tag=ff_building_helper,sort=nearest,limit=1]

# Clean up data storage
data remove storage nfg:forcefield operations.meta

# Remove Player Building Status and other FF related tags to clear state
tag @p remove ff_building
tag @p remove ff_demolish_near
tag @p remove ff_tooltip_near
tag @p remove ff_tooltip_medium

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
