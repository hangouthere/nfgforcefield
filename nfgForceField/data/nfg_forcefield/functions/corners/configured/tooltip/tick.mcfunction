# Corners - Corner Tooltip
# Shows the player which mode the ForceField is set to
# Create AEC tooltip, but only if one doesn't exist, and only when really close

# Display Near Tooltips
execute unless entity @p[tag=ff_tooltip_near] if entity @p[distance=..4] if entity @s[tag=ff_power_on] run function nfg_forcefield:corners/configured/tooltip/near

# Display Medium Tooltips, and enforce when Powered OFF
execute unless entity @p[tag=ff_tooltip_medium] if entity @p[distance=..5] if entity @s[tag=ff_power_off] run function nfg_forcefield:corners/configured/tooltip/medium
execute unless entity @p[tag=ff_tooltip_medium] if entity @p[distance=5..8] run function nfg_forcefield:corners/configured/tooltip/medium

## As the player distances from the corner, we remove the CustonName visibility to reduce screen clutter
execute if entity @p[tag=ff_tooltip_medium,distance=9..] run function nfg_forcefield:corners/configured/tooltip/far
