# Corners - Tooltip: Near
# Show tooltips when a player is close to a Corner

## Update Corner Name to Detail Info when Player is "near"

function nfg_forcefield:corners/configured/tooltip/get_tooltip_info

# Copy parsed text to the Labels
data modify entity @e[tag=ff_line_1,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1
data modify entity @e[tag=ff_line_2,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text2
data modify entity @e[tag=ff_line_3,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text3
data modify entity @e[tag=ff_line_1,sort=nearest,limit=1] CustomNameVisible set value 1b
data modify entity @e[tag=ff_line_2,sort=nearest,limit=1] CustomNameVisible set value 1b
data modify entity @e[tag=ff_line_3,sort=nearest,limit=1] CustomNameVisible set value 1b

# Remove Sign
setblock ~ ~ ~ air replace

tag @p remove ff_tooltip_medium
tag @p add ff_tooltip_near
