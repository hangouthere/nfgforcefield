# Corners - Corner Tooltip
# Shows the player which mode the ForceField is set to
# Create AEC tooltip, but only if one doesn't exist, and only when really close
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured] at @s

# Display Near Tooltips
execute if entity @p[distance=..4] as @s[tag=ff_power_on] run function nfg_forcefield:corners/configured/tooltip/near

# Display Medium Tooltips, and enforce when Powered OFF
execute if entity @p[distance=..4] as @s[tag=ff_power_off] run function nfg_forcefield:corners/configured/tooltip/medium
execute if entity @p[distance=4..6] run function nfg_forcefield:corners/configured/tooltip/medium

## As the player distances from the corner, we remove the CustonName visibility to reduce screen clutter
execute if entity @p[distance=7..] run data merge entity @s {CustomNameVisible: 0b}
