# Setup Vars for Protection Types
execute store result score #modeProtBuildTT ff_calcs run data get entity @e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1] ArmorItems[0].tag.protections.building
execute store result score #modeProtMobTT ff_calcs run data get entity @e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1] ArmorItems[0].tag.protections.mob

# Build Prot Build Tooltip Var
execute if score #modeProtBuildTT ff_calcs matches 0 run data modify storage nfg:forcefield operations.meta.tt.protBuild set value 'Off'
execute if score #modeProtBuildTT ff_calcs matches 1 run data modify storage nfg:forcefield operations.meta.tt.protBuild set value 'Perimeter'
execute if score #modeProtBuildTT ff_calcs matches 2 run data modify storage nfg:forcefield operations.meta.tt.protBuild set value 'Volume'
# Build Prot Mob Tooltip Var
execute if score #modeProtMobTT ff_calcs matches 0 run data modify storage nfg:forcefield operations.meta.tt.protMob set value 'Off'
execute if score #modeProtMobTT ff_calcs matches 1 run data modify storage nfg:forcefield operations.meta.tt.protMob set value 'Perimeter'
execute if score #modeProtMobTT ff_calcs matches 2 run data modify storage nfg:forcefield operations.meta.tt.protMob set value 'Volume'

# Create JSONText parsing sign, and build a string for the Corner
setblock ~ ~ ~ dark_oak_sign{Text1:'[{"text":"Owner: ","color":"light_purple"},{"nbt":"ArmorItems[0].tag.IDs.playerName","entity":"@e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1]","color":"green"}]',Text2:'[{"text":"","color":"#999999"},{"text":"FF ID: ","color":"gold"},{"text":"["},{"nbt":"ArmorItems[0].tag.IDs.ff","entity":"@e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1]","color":"dark_gray"},{"text":"] "},{"text":"Area: ","color":"dark_aqua"},{"nbt":"ArmorItems[0].tag.calc.area","entity":"@e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1]"},{"text":"m²"}]',Text3:'[{"text":"","color":"#999999"},{"text":"Build","color":"light_purple"},{"text":"["},{"nbt":"operations.meta.tt.protBuild","storage":"nfg:forcefield","color":"dark_gray"},{"text":"]"},{"text":" "},{"text":"Mob","color":"red"},{"text":"["},{"nbt":"operations.meta.tt.protMob","storage":"nfg:forcefield","color":"dark_gray"},{"text":"]"}]'} replace

# Summon Text Line Entities
execute unless entity @e[distance=..1,tag=ff_line_1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:1b,Duration:2147483647,Tags:["ff_tooltip_line","ff_line_1"],CustomName:'{"text":"Loading..."}'}
execute unless entity @e[distance=..1,tag=ff_line_2] run summon area_effect_cloud ~ ~0.75 ~ {CustomNameVisible:1b,Duration:2147483647,Tags:["ff_tooltip_line","ff_line_2"],CustomName:'{"text":"Loading..."}'}
execute unless entity @e[distance=..1,tag=ff_line_3] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:1b,Duration:2147483647,Tags:["ff_tooltip_line","ff_line_3"],CustomName:'{"text":"Loading..."}'}
