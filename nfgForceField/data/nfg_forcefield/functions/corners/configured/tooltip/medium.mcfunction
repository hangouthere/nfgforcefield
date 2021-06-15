# Corners - Tooltip: Medium
# Show tooltips when a player is medium distance to a Corner
#####################################
# Started as: execute if entity @p[distance=4..6]

function nfg_forcefield:corners/configured/tooltip/get_tooltip_info

# Hide top label
data modify entity @e[tag=ff_line_1,sort=nearest,limit=1] CustomNameVisible set value 0b

# Show Owner Name on label
data modify entity @e[tag=ff_line_2,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1

## Update Corner Name to Generic name
# Powered ON
execute if entity @s[tag=ff_power_on] run data merge entity @e[tag=ff_line_3,sort=nearest,limit=1] {CustomName:'{"text":"nfgForceField - Corner","color":"green"}', CustomNameVisible: 1b}
# Powered OFF
execute if entity @s[tag=ff_power_off] run data merge entity @e[tag=ff_line_3,sort=nearest,limit=1] {CustomName:'{"text":"nfgForceField - Corner","color":"red"}', CustomNameVisible: 1b}

tag @p remove ff_tooltip_near
tag @p add ff_tooltip_medium

# Remove Sign
setblock ~ ~ ~ air replace
