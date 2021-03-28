# Corners - Tooltip: Medium
# Show tooltips when a player is medium distance to a Corner
#####################################
# Started as: execute if entity @p[distance=4..6]

## Update Corner Name to Generic name

# Powered ON
execute if entity @s[tag=ff_power_off] run data merge entity @s {CustomName:'{"text":"nfgForceField - Corner","color":"red"}', CustomNameVisible: 1b}

# Powered OFF
execute if entity @s[tag=ff_power_on] run data merge entity @s {CustomName:'{"text":"nfgForceField - Corner","color":"green"}', CustomNameVisible: 1b}
