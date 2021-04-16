# Kill `ff_building_helper`
kill @e[tag=ff_building_helper,sort=nearest,limit=1]

# Remove Player Building Status
tag @p remove ff_building
# Remove Player management tags
tag @p remove ff_demolish_near
tag @p remove ff_tooltip_near
tag @p remove ff_tooltip_medium

# Reintroduce Suspended mobs, because a ForceField could have been built nearby
tag @e remove ff_suspend
tag @e remove ff_suspend_temp
tag @e remove ff_suspend_perm

# Force a clean Scan with the newly included/created ForceField
function nfg_forcefield:scanning/process/loop/reset_scan

# Hide the placing bar from placement helper
title @p actionbar ""

# Mark Corners as now Configured
tag @e[tag=ff_corner,tag=!ff_configured] add ff_configured