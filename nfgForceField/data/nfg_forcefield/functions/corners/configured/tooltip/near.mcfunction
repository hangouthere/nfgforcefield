# Corners - Tooltip: Near
# Show tooltips when a player is close to a Corner
#####################################
# Started as: execute if entity @p[distance=..3]

## Update Corner Name to Detail Info when Player is "near"

# Create JSONText parsing sign, and build a string for the Corner
setblock ~ ~ ~ dark_oak_sign{Text1:'[{"text":"FF ID: ","color":"gold"},{"nbt":"ArmorItems[0].tag._ff.type","entity":"@e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1]","color":"green"},{"text":"[","color":"gray"},{"nbt":"ArmorItems[0].tag._ff.id.ff","entity":"@e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1]","color":"gray"},{"text":"] ","color":"gray"},{"text":"Area: ","color":"dark_aqua"},{"nbt":"ArmorItems[0].tag._ff.calc.area","entity":"@e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1]","color":"white"}]'} replace

# Copy parsed text to the Corner
data modify entity @e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1

# Remove Sign
setblock ~ ~ ~ air replace

tag @p remove ff_tooltip_medium
tag @p add ff_tooltip_near
